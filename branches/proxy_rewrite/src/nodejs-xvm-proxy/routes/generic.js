var db = require("../db");

exports.stat = function(req, res) {
    var ids = req.params.ids;

    db.getPlayersData(ids, function(error, processData) {

        //return _onPlayersData(error, processData);

        res.json({
            ids: ids,
            db: processData
        });
    });
};