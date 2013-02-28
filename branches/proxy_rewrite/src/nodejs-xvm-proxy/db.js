var mongodb,
    settings = require("./settings").settings,
    utils = require("./utils");

var options = {
    auto_reconnect: true,
    poolSize: settings.dbMaxConnections
};
var db,
    players,
    missed,
    performanceLog;

module.exports = function(fakeMongo) {
    mongodb = mongodb || fakeMongo || require("mongodb");

    if(!db) {
        db = new mongodb.Db(settings.dbName, new mongodb.Server(settings.mongoServer, settings.mongoPort, options), { w: 0 });

        db.open(function(error, client) {
            if(error) {
                utils.log("DB connection error!");
                return;
            }
            players = new mongodb.Collection(client, settings.playersCollectionName);
            missed = new mongodb.Collection(client, settings.missedCollectionName);
            performanceLog = new mongodb.Collection(client, settings.performanceLogCollectionName);
        });
    }

    return {
        getPerformanceReport: getPerformanceReport,
        getPlayersData: getPlayersData,
        insertMissed: insertMissed,
        insertPerformanceReport: insertPerformanceReport,
        removeMissed: removeMissed,
        updatePlayersData: updatePlayersData
    }
};

var getPlayersData = function(ids, callback) {
    var parsedIds = _parseStatRequest(ids);

    process.send({ usage: 1, mongorq: 1 });

    var cursor = players.find(
            { _id: { $in: parsedIds.ids } },
            { _id: 1, st: 1, dt: 1, cr: 1, up: 1, nm: 1, b: 1, w: 1, spo: 1, hip: 1, cap: 1, dmg: 1, frg: 1, def: 1, lvl: 1, e: 1, wn: 1, twr: 1, v: 1 }
        ),
        startStamp = new Date();

    cursor.toArray(function(error, result) {
        process.send({ usage: 1, mongorq: -1 });
        updateDbBalancer(startStamp);

        var ret = {
            dbData: result,
            rqData: parsedIds.data
        };

        callback(error ? { statusCode: 500, text: error } : undefined, ret);
    });

    /*players.aggregate([
     { $match: { _id: { $in: parsedIds.ids } } },
     { $unwind: "$v" }
     ], function(error, result) {
     var ret = {
     dbData: result,
     rqData: parsedIds.data
     };

     callback(error ? { statusCode:500, text:error } : null, ret);
     });*/
};

var _parseStatRequest = function(ids) {
    var parsedIds = [ ];
    var data = { };
    ids.forEach(function(a) {
        var x = a.split("=");
        var id = parseInt(x[0]);

        // Skip wrong id and non-working servers
        var servers = utils.getStatServers(id);
        if(servers) {
            parsedIds.push(id);
            data[id] = { vname: x[1] ? x[1].toUpperCase() : null, servers: servers };
            if(x[2] == "1" && settings.updateUsers == true)
                db.updateUsers(id);
        } else {
            data[id] = { vname: x[1] ? x[1].toUpperCase() : null, status: "bad_id" };
        }
    });

    return { ids: parsedIds, data: data };
};

var updatePlayersData = function(id, data) {
    players.update({ _id: id }, data, { upsert: true });
};

var removeMissed = function(id) {
    missed.remove({ _id: id }, function(err) {
        if (err) utils.log("[DB] removeMissed(" + id + ") error: " + err);
    });
};

var insertMissed = function(id, miss) {
    missed.insert({ _id: id, missed: miss });
};

var _mongoMaxRq = settings.dbMaxConnections,
    _mongoMaxRqLastUpdate = null;

var updateDbBalancer = function(startStamp) {
    var now = new Date(),
        delta = 0,
        dtime = 0,
        duration = now - startStamp;

    if (duration > settings.dbMaxTime) {
        delta = -3;
        dtime = 200;
    } else if (duration < settings.dbMinTime) {
        delta = 1;
        dtime = 200;
    }

    if (!_mongoMaxRqLastUpdate || (now - _mongoMaxRqLastUpdate) > dtime) {
        _mongoMaxRqLastUpdate = now;
        var oldvalue = _mongoMaxRq;
        _mongoMaxRq = Math.max(1, Math.min(settings.dbMaxConnections, _mongoMaxRq + delta));
        if (_mongoMaxRq != oldvalue)
            process.send({ usage: 1, mongorq_max: _mongoMaxRq - oldvalue });
    }
};

var insertPerformanceReport = function(perfStat) {
    performanceLog.insert(perfStat);
};

var getPerformanceReport = function(callback) {
    var cursor = performanceLog.find().sort({ _id: -1 }).limit(25);

    cursor.toArray(callback);
};