var factoryDb = require("../factoryDb");

exports.stat = function(req, res) {
    var ids = req.params.ids;

    factoryDb.getPlayersData(ids, function(error, result) {

        //return _onPlayersData(error, processData);
        res.json(error || 200, result);
    });
};