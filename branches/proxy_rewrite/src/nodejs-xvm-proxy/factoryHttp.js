var async = require("async"),
    db = require("./db"),
    http = require("http"),
    httpPool = require("./httpPool"),
    settings = require("./settings").settings,
    utils = require("./utils");

exports.processRemotes = function(processData, responseCallback) {
    // FIXIT: why this don't work?
    //    for (var id in processData.rqData) ...
    // symptoms: makeSingleRequest args are wrong (always the last item values)
    var urls = { },
        up = [ ];

    for(var id in processData.rqData)
        up.push(id);
    up.forEach(function(id) {
        var pdata = processData.rqData[id];
        var srv = httpPool.getFreeConnection(pdata.servers);

        if(srv.error) {
            if(pdata.cache)
                pdata.cache.st = srv.error;
            else
                pdata.cache = {_id: id, st: srv.error};
            processData.dbData[id] = pdata.cache;
            delete processData.rqData[id];
            return;
        }

        delete pdata.servers;
        pdata.server = srv;
        urls[id] = function(callback) {
            _makeSingleRequest(id, srv, callback);
        }
    });

    async.parallel(urls, function(err, results) {
        _asyncCallback(err, results, processData, responseCallback);
    });
};

var _makeSingleRequest = function(id, server, callback) {
    var options = server.options;

    options.path = [(options.path || ""), "/uc/accounts/", id, "/api/", server.api, "/?source_token=Intellect_Soft-WoT_Mobile-unofficial_stats"].join("");

    if(!options.headers)
        options.headers = { connection: "close" };

    var done = false;
    var reqTimeout = setTimeout(function() {
        var err = "[" + server.name + "] Http timeout: " + server.timeout;

        done = true;
        _onRequestDone(server, err);
        callback(null, { __status: "timeout" });
    }, server.timeout);

    http.get(options,function(res) {
        if(res.statusCode != 200) {
            clearTimeout(reqTimeout);
            if(done)
                return;

            var err = "[" + server.name + "] Http error: bad status code: " + res.statusCode;

            _onRequestDone(server, err);
            callback(null, { __status: res.statusCode });
            return;
        }

        res.setEncoding("utf8");
        var responseData = "";
        res.on("data", function(chunk) {
            // TODO check valid JSON string and terminate immediately if not
            responseData += chunk;
        });
        res.on("end", function() {
            clearTimeout(reqTimeout);
            if(done)
                return;
            try {
                var result = JSON.parse(responseData);
            } catch(e) {
                var str;
                if(responseData[0] != "{")
                    str = "(binary)";
                else {
                    str = responseData.replace(/[ \t\n\r\x00-\x1F]/g, "");
                    str = str.substr(0, 45) + "~" + str.substr(str.length - 11, 10);
                }
                var err = "[" + server.name + "] JSON.parse:  l=" + responseData.length + ", d=\"" + str + "\"";
                _onRequestDone(server, err);
                callback(null, { __status: "parse" });
                return;
            }
            _onRequestDone(server);
            callback(null, result);
        });
    }).on("error", function(e) {
            clearTimeout(reqTimeout);
            if(done)
                return;
            done = true;

            var err = "[" + server.name + "] Http error: " + e;

            _onRequestDone(server, err);
            callback(null, { __status: "error" });
        });
};

var _asyncCallback = function(err, results, processData, responseCallback) {
    var now = new Date();
    var result = {
        players: [ ],
        info: httpPool.info,
        server: settings.serverName
    };

    // add processData.dbData items to result
    for(var i in processData.dbData) {
        result.players.push(_cacheToResult(processData.dbData[i]));
    }
    // TODO for why?
    processData.dbData = null;

    // process retrieved items
    for(var id in processData.rqData) {
        var item = results[id];
        if(!item) {
            result.players.push({id: id, status: "fail", date: now});
            continue;
        }

        // check for errors
        if(item.__status) {
            result.players.push(_prepareFallbackRes(processData.rqData[id], id, item.__status));
            continue;
        }

        // check for errors from stat server
        if(item.status === "error") {
            var res = _prepareFallbackRes(processData.rqData[id], id, "error");
            switch(item.status_code) {
                case "API_UNKNOWN_SERVER_ERROR":
                    res.status = "api_error";
                    break;
                case "ACCOUNTS_PROFILE_CLOSED":
                    res.status = "closed";
                    break;
                case "ACCOUNTS_ACCOUNT_MISSING_OR_UNINITIALIZED":
                    res.status = "not_init";
                    break;
                default:
                    res.status = "fail";
                    res.status_code = "Unknown status code: " + item.status_code;
                    break;
            }
            result.players.push(res);
            continue;
        }

        // check for no error
        if(item.status !== "ok" || item.status_code !== "NO_ERROR") {
            var res = _prepareFallbackRes(processData.rqData[id], id, "ok");
            res.status = item.status;
            res.status_code = item.status_code;
            result.players.push(res);
            continue;
        }

        // check for correct id
        var _id = parseInt(id);

        if(!_id || _id <= 0) {
            var res = _prepareFallbackRes(processData.rqData[id], id, "ok");
            res.status = "bad_id";
            result.players.push(res);
            continue;
        }

        var pdata = _parseNewPlayerData(_id, item.data);

        // updating db
        db.updatePlayersData(_id, pdata);

        if(settings.updateMissed === true)
            db.removeMissed(_id);

        if(processData.rqData[id].vname)
            pdata.vname = processData.rqData[id].vname;

        result.players.push(_cacheToResult(pdata));
    }

    // return response to client
    responseCallback(undefined, result);
};

var _onRequestDone = function(server, error) {
    var now = new Date(),
        sst = httpPool.serverStatus[server.id];

    sst.connections--;

    // HTTP connections balancer
    if(!sst.lastMaxConnectionUpdate || (now - sst.lastMaxConnectionUpdate) > (error ? 1000 : 5000)) {
        sst.lastMaxConnectionUpdate = now;
        sst.maxConnections = Math.max(1, Math.min(server.maxconn, sst.maxConnections + (error ? -5 : 1)));
    }

    if(error) {
        sst.lastErrorDate = now;
        if(!sst.error_shown) {
            sst.error_shown = true;
        }
    }
};

var _cacheToResult = function(item) {
    var res = {
        id: item._id,
        date: item.dt,
        cr: item.cr,
        up: item.up,
        vname: item.vname,
        status: item.st,
        name: item.nm,
        battles: item.b,
        wins: item.w,
        spo: item.spo,
        hip: item.hip,
        cap: item.cap,
        dmg: item.dmg,
        frg: item.frg,
        def: item.def,
        lvl: item.lvl,
        eff: item.e,
        wn: item.wn,
        twr: Math.round(item.twr)
    };

    if (item.vname && item.v)
        res.v = item.v.name ? item.v : utils.filterVehicleData(item, item.vname);
    return res;
};

var _prepareFallbackRes = function(item, id, status) {
    id = parseInt(id);

    if (!item.cache) {
        if (settings.updateMissed == true)
            db.insertMissed(id, true);
        return {id:id, date:new Date(), status:status};
    }

    if (settings.updateMissed == true)
        db.insertMissed(id, false);
    var res = _cacheToResult(item.cache);
    res.status = status;
    return res;
};

var _parseNewPlayerData = function(id, data) {
    // fill global info
    var pdata = {
        _id: parseInt(id),
        st: "ok",
        dt: new Date(),
        cr: parseInt(data.created_at),
        up: parseInt(data.updated_at),
        nm: data.name,
        b: data.summary.battles_count,
        w: data.summary.wins,
        spo: data.battles.spotted,
        hip: data.battles.hits_percents,
        cap: data.battles.capture_points,
        dmg: data.battles.damage_dealt,
        frg: data.battles.frags,
        def: data.battles.dropped_capture_points,
        v: {}
    };

    // fill vehicle data
    for (var i in data.vehicles) {
        var vdata = data.vehicles[i];
        pdata.v[vdata.name.toUpperCase()] = {
            cl: utils.getVehicleType(vdata.class),
            l: vdata.level,
            b: vdata.battle_count,
            w: vdata.win_count,
            d: vdata.damageDealt,
            f: vdata.frags,
            s: vdata.spotted,
            u: vdata.survivedBattles
        }
    }

    // Average Tier
    pdata.lvl = utils.calculateAvgLevel(pdata.v);

    // EFF - wot-news efficiency rating
    pdata.e = utils.calculateEfficiency(pdata);

    // WN - WN rating http://forum.worldoftanks.com/index.php?/topic/184017-
    pdata.wn = utils.calculateWN(pdata);

    // TWR - tourist1984 win rate (aka T-Calc)
    try {
        pdata.twr = parseFloat(utils.tcalc(pdata, false).result.toFixed(2));
    } catch (e) { utils.log(e); }

    pdata.lvl = parseFloat(pdata.lvl.toFixed(3));

    return pdata;
};