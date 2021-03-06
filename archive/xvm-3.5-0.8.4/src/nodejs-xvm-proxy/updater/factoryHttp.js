var http,
    httpPool = require("./httpPool"),
    utils = require("./../utils"),
    initialized = false;

exports.ctor = function(fakeHttp) {
    if(initialized)
        return;

    initialized = true;
    http = fakeHttp || require("http");
};

exports.makeSingleRequest = function(id, server, callback) {
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

    utils.send({ type: "usage", serverId: server.id, connections: 1 });
    http.get(options,function(res) {
        if(res.statusCode !== 200) {
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
                if(responseData[0] !== "{")
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

var _onRequestDone = function(server, error) {
    var now = new Date(),
        sst = httpPool.serverStatus[server.id];

    sst.connections--;
    utils.send({ type: "usage", serverId: server.id, connections: -1, fail: !!error });

    // HTTP connections balancer
    if(!sst.lastMaxConnectionUpdate || (now - sst.lastMaxConnectionUpdate) > (error ? 1000 : 5000)) {
        var oldMaxConn = sst.maxConnections;

        sst.lastMaxConnectionUpdate = now;
        sst.maxConnections = Math.max(1, Math.min(server.maxconn, sst.maxConnections + (error ? -5 : 1)));
        utils.send({ type: "usage", serverId: server.id, maxConnections: sst.maxConnections - oldMaxConn });
    }

    if(error) {
        sst.lastErrorDate = now;
        if(!sst.error_shown) {
            sst.error_shown = true;
            utils.send({ type: "log", msg: "ERROR: " + error });
        }
    }
};