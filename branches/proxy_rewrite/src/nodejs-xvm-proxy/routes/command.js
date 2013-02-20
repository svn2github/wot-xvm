exports.WN = function(req, res) {
    res.send({
        command: "WN",
        playerId: req.params.playerId
    });
};