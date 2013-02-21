var factoryHttp = require("./factoryHttp"),
    db = require("./db"),
    settings = require("./settings").settings,
    utils = require("./utils");

exports.getPlayersData = function(ids, callback) {
    db.getPlayersData(ids, function(error, processData) {
        if(error) {
            callback(500, '{"error":"' + error.text + '","server":"' + settings.serverName + '"}');
            return;
        }

        _onPlayersData(processData, callback);
    });
};

var _onPlayersData = function(processData, callback) {
    try {
        var now = new Date();

        for(var dbi in processData.dbData) {
            var item = processData.dbData[dbi],
                pdata = processData.rqData[item._id];

            var cache = (now - item.dt) < settings.cacheTtl;
            //console.log(cache, now, item.dt);
            if(cache) {
                // fix data (recalculate missed items)
                if(settings.fixData)
                    _fixData(item);
            }

            // Filter vehicle data
            item.vname = pdata.vname;
            item.v = utils.filterVehicleData(item, pdata.vname);
            if(cache) {
                item.st = "cache";
                // remove cached item from request
                delete processData.rqData[item._id];
            } else {
                item.st = "expired";
                processData.rqData[item._id].cache = item;
                delete processData.dbData[dbi];
            }
        }

        // process items with bad id
        for(var rqi in processData.rqData) {
            pdata = processData.rqData[rqi];
            if(pdata.status == "bad_id") {
                processData.dbData.push({_id: rqi, st: pdata.status});
                delete processData.rqData[rqi];
            }
        }

        // db_data - cached items
        // rq_data - items for update from statistics host
        factoryHttp.processRemotes(processData, callback);
        //callback(undefined, processData);
    } catch(e) {
        //        response.statusCode = 500;
        callback(500, '{"error":"' + e + '","server":"' + settings.serverName + '"}');
        utils.log("Error: " + e);
    }
};

var _fixData = function(data) {
    var ok = false,
        lvl = false;

    if (data.lvl == undefined) {
        // Average Tier
        lvl = true;
        data.lvl = utils.calculateAvgLevel(data.v);
    }

    // fix eff FIXIT: REMOVE after 14.02.2013
    if (data.dt < new Date("2013-02-09 14:50")) {
        data.e = utils.calculateEfficiency(data);
    }

    if (data.wn == undefined) {
        // WN - WN rating http://forum.worldoftanks.com/index.php?/topic/184017-
        data.wn = utils.calculateWN(data);
        ok = true;
        utils.log("id=" + data._id + " wn=" + data.wn);
    }

    if (data.twr == undefined) {
        // TWR - tourist1984 win rate (aka T-Calc)
        try {
            data.twr = parseFloat(tcalc.calc(data, false).result.toFixed(2));
            ok = true;
            //            utils.log("id=" + data._id + " twr=" + data.twr);
        } catch (e) { utils.log(e); }
    }

    if (lvl) {
        data.lvl = parseFloat(data.lvl.toFixed(1));
        ok = true;
        utils.log("id=" + data._id + " lvl=" + data.lvl);
    }

    // updating db
    if (ok && Math.floor(Math.random()*1) == 0) {
        //        utils.log("update id=" + data._id);
        db.updatePlayersData(data._id, data);
    }
};