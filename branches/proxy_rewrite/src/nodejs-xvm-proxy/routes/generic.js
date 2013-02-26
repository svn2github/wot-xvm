var factoryDb = require("../factoryDb");

exports.stat = function(req, res) {
    var ids = req.params.ids;

    factoryDb.getPlayersData(ids, function(error, result) {

        res.json(error || 200, result);

    });
};

exports.test = function(req, res) {
    res.json({
        id: 1,
        status: "ok"
    });
};