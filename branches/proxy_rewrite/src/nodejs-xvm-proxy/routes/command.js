var db = require("../db")(),
    utils = require("../utils");

exports.wn = function(req, res) {
    db.getPlayersData([ parseInt(req.params.playerId) ], function(error, dbData) {
        if(!error) {
            var db = dbData[0];
            if(db) {
                db.eff = utils.calculateEfficiency(db);
                db.neff = utils.calculateNEFF(db.eff);
                db.wn6 = utils.calculateWN(db);
                db.nwn6 = utils.calculateNWN(db.wn6);
                db.gwr = (db.w / db.b * 100).toFixed(2);
                db.twr = utils.tcalc(db, false).result.toFixed(2);

                db.admg = (db.dmg / db.b).toFixed(0);
                db.afrg = (db.frg / db.b).toFixed(1);
                db.aspo = (db.spo / db.b).toFixed(1);
                db.adef = (db.def / db.b).toFixed(1);
                db.acap = (db.cap / db.b).toFixed(1);

                db.created = new Date(db.cr * 1000);
                db.updated = new Date(db.up * 1000);
            }
        }

        res.render("wn", {
            error: error,
            title: "WN",
            playerId: req.params.playerId,
            db: db
        });
    });
};

exports.infoById = function(req, res) {
    db.getPlayersData([ parseInt(req.params.playerId) ], function(error, dbData) {
        var result = dbData[0] || "Player not found";

        res.json(error ? 500 : 200, result);
    });
};

exports.infoByName = function(req, res) {
    db.getPlayerByName(req.params.playerName, req.params.region, function(error, dbData) {
        var result = dbData[0] || "Player not found";

        res.json(error ? 500 : 200, result);
    });
};