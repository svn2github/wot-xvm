var mongodb = require("mongodb"),
    settings = require("./settings").settings,
    utils = require("./utils");

var options = {
    auto_reconnect: true,
    poolSize: settings.dbMaxConnections
};

var db = new mongodb.Db(settings.dbName, new mongodb.Server(settings.mongoServer, settings.mongoPort, options), { w: 0 }),
    players;

db.open(function(error, client) {
    if(error) {
        utils.log("DB connection error!");
        return;
    }
    players = new mongodb.Collection(client, settings.playersCollectionName);
});

exports.getPlayersData = function(ids, callback) {
    var parsedIds = _parseStatRequest(ids);

    var cursor = players.find(
        { _id: { $in: parsedIds.ids } },
        { _id: 1, st: 1, dt: 1, cr: 1, up: 1, nm: 1, b: 1, w: 1, spo: 1, hip: 1, cap: 1, dmg: 1, frg: 1, def: 1, lvl: 1, e: 1, wn: 1, twr: 1, v: 1 }
    );
    cursor.toArray(function(error, result) {
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

exports.updatePlayersData = function(id, data) {
    players.update({ _id: id }, data, { upsert: true });
};

exports.removeMissed = function(id) {
    missed.remove({ _id: id }, function(err) {
        if (err) utils.log("[DB] removeMissed(" + id + ") error: " + err);
    });
};

exports.insertMissed = function(id, miss) {
    missed.insert({ _id: id, missed: miss });
};