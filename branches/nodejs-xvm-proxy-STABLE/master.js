//////////////////////////////
// Master thread

exports.main = function() {
    var cluster = require('cluster');

    utils.log("Starting server");

    // Fork workers.
    for(var i = 0; i < settings.numNodes; i++) {
        var w = cluster.fork();
        workers.push(w);
        w.on('message', processWorkerMessage);
    }

    cluster.on('exit', function(worker, code, signal) {
        var exitCode = worker.process.exitCode;
        workers_log += '\nworker ' + worker.process.pid + ' died (' + exitCode + '). restarting...';

        for (var i = 0; i < workers.length; ++i)
        {
            if (workers[i].process.pid == worker.process.pid)
                workers.splice(i, 1);
        }

        var w = cluster.fork();
        workers.push(w);
        w.on('message', processWorkerMessage);
    });

    //showUsageStat();
    setInterval(showUsageStat, settings.usageStatShowPeriod);

    getInfoContent();
    setInterval(getInfoContent, 3600 * 1000); // every 1 hour

    getTWRBaseContent();
    setInterval(getTWRBaseContent, 3600 * 1000); // every 1 hour
};

// PRIVATE

var settings = require("./settings").settings,
    utils = require("./utils");

var workers_log = "";
var workers = [ ];

// usage stat
var usageStat = {
    start: new Date(),
    requests: 0,
    requests_current: 0,
    players: 0,
    cached: 0,
    updated: 0,
    missed: 0,
    updatesFailed: 0,
    max_conn: 0,
    max_db: 0,
    mongorq: 0,
    mongorq_max: settings.dbMaxConnections * settings.numNodes,
    cmd_info: 0,
    connections: []
};

var _lastLogMsg = "";
var _skipLogMsgCounter = 0;

var processWorkerMessage = function(msg) {
//utils.log(JSON.stringify(msg));
    if(msg.usage == 1) {
        if(msg.requests) {
            usageStat.requests += msg.requests;
            usageStat.requests_current += msg.requests;
        }
        if(msg.players)
            usageStat.players += msg.players;
        if(msg.cached)
            usageStat.cached += msg.cached;
        if(msg.updated)
            usageStat.updated += msg.updated;
        if(msg.missed)
            usageStat.missed += msg.missed;
        if(msg.updatesFailed)
            usageStat.updatesFailed += msg.updatesFailed;
        if(msg.max_conn)
            usageStat.max_conn += msg.max_conn;
        if(msg.max_db)
            usageStat.max_db += msg.max_db;
        if(msg.mongorq)
            usageStat.mongorq += msg.mongorq;
        if(msg.mongorq_max) {
            usageStat.mongorq_max += msg.mongorq_max;
            utils.log("mongorq_max: " + usageStat.mongorq_max);
        }
        if(msg.cmd_info)
            usageStat.cmd_info += msg.cmd_info;
        if(msg.connections) {
            if (!usageStat.connections[msg.serverId])
                usageStat.connections[msg.serverId] = {cur:0, max:settings.servers[msg.serverId].maxconn, total:0, fail:0};
            usageStat.connections[msg.serverId].cur += msg.connections;
            //if (usageStat.connections[msg.serverId].cur < 0)
            //    utils.log("ERROR: conn<0 " + JSON.stringify(msg));
            if (msg.connections > 0)
                usageStat.connections[msg.serverId].total += msg.connections;
            if (msg.fail)
                usageStat.connections[msg.serverId].fail -= msg.connections;
        }
        if(msg.maxConnections) {
            if (!usageStat.connections[msg.serverId])
                usageStat.connections[msg.serverId] = {cur:0, max:settings.servers[msg.serverId].maxconn, total:0, fail:0};
            usageStat.connections[msg.serverId].max = Math.max(0, usageStat.connections[msg.serverId].max + msg.maxConnections);
        }
    } else if(msg.log == 1) {
        if (msg.msg != _lastLogMsg) {
            if (_skipLogMsgCounter > 0)
                utils.log("(skipped " + _skipLogMsgCounter + " message" + (_skipLogMsgCounter == 1 ? "" : "s") +")");
            utils.log(msg.msg);
            _lastLogMsg = msg.msg;
            _skipLogMsgCounter = 0;
        } else {
            _skipLogMsgCounter++;
        }
    } else if(msg.cmd == "cmd") {
        //w.send({ chat: 'Ok worker, Master got the message! Over and out!' });
    }
};

var lpad = function(str, padString, length) {
    str = String(str);
    while(str.length < length)
        str = padString + str;
    return str;
};

var rpad = function(str, padString, length) {
    str = String(str);
    while(str.length < length)
        str += padString;
    return str;
};

var showUsageStat = function() {
    var uptime = Math.round((new Date() - usageStat.start) / 1000);
    var d = (uptime / (60 * 60 * 24)).toFixed();
    var h = lpad(((uptime / 3600) % 24).toFixed(), "0", 2);
    var m = lpad(((uptime / 60) % 60).toFixed(), "0", 2);
    utils.log("> uptime  requests     rq/s   players  pl/s  cached updated  missed updfail max_conn max_db mongorq cmd_info w");

    var s = (d > 9 ? "" : ">");
    // uptime
    s += lpad((d == 0 ? "" : d + "d") + h + "h" + m, " ", 7);
    // requests
    s += lpad(usageStat.requests, " ", 10) + " ";
    // rq/s
    s += lpad((usageStat.requests_current / settings.usageStatShowPeriod * 1000).toFixed() + "(" + (usageStat.requests / uptime).toFixed() + ")", " ", 8);
    // players
    s += lpad(usageStat.players, " ", 10) + " ";
    // pl/s
    s += lpad((usageStat.players / uptime).toFixed(), " ", 5);
    // cached
    s += lpad((usageStat.cached / usageStat.players * 100).toFixed(2) + "%", " ", 8);
    // updated
    s += lpad((usageStat.updated / usageStat.players * 100).toFixed(2) + "%", " ", 8);
    // missed
    s += lpad((usageStat.missed / usageStat.players * 100).toFixed(2) + "%", " ", 8);
    // updfail
    s += lpad((usageStat.updatesFailed / usageStat.players * 100).toFixed(2) + "%", " ", 8);
    // max_conn
    s += lpad((usageStat.max_conn / usageStat.players * 100).toFixed(2) + "%", " ", 9);
    // max_db
    s += lpad((usageStat.max_db / usageStat.requests * 100).toFixed(2) + "%", " ", 7);
    // mongorq
    s += lpad(usageStat.mongorq + "/" + usageStat.mongorq_max, " ", 8);
    // cmd_info
    s += lpad((usageStat.cmd_info / usageStat.requests * 100).toFixed(2) + "%", " ", 9);
    // w
    s += " " + workers.length;
    utils.log(s);

    if (workers_log != "")
        utils.log(workers_log);

    utils.log("> connections: cur max    total     fail");
    //        "  api.worldoftanks-sea.com   0  52"
    for (var i = 0; i < usageStat.connections.length; ++i) {
        var cs = usageStat.connections[i];
        if (cs) {
            utils.log("  " +
                rpad(settings.servers[i].name, " ", 12) + " " +
                lpad(cs.cur, " ", 3) + " " +
                lpad(cs.max, " ", 3) + " " +
                lpad(cs.total, " ", 8) + " " +
                lpad(cs.fail, " ", 8) + " " +
                lpad((cs.fail / cs.total * 100).toFixed(), " ", 2) + "%");
        }
    }

    usageStat.requests_current = 0;
};

// setup "info" update interval
var getInfoContent = function() {
    var http = require("http");

    var options = {
        host: "wot-xvm.googlecode.com",
        port: 80,
        path: "/svn/wiki/ReleaseInfo.wiki"
    };

    var request = http.get(options, function(res) {
        var responseData = "";
        res.setEncoding("utf8");
        res.on("data", function(chunk) {
            responseData += chunk;
        });
        res.on("end", function() {
            try {
                var newInfo = JSON.parse(responseData);
                utils.log("[getInfoContent] Info updated");
                workers.forEach(function(worker) {
                    worker.send({ info: newInfo });
                });
            } catch(e) {
                utils.debug("> [getInfoContent] JSON.parse error:" + e +
                    "\nlength=" + responseData.length + ", data=" + responseData.replace(/[\n\r]/g, ""));
            }
        });
    });
};

// setup "info" update interval
var getTWRBaseContent = function() {
    var http = require("http");

    var options = {
        host: "wot-xvm.googlecode.com",
        port: 80,
        path: "/svn/wiki/TWRBase.wiki"
    };

    var request = http.get(options, function(res) {
        if (res.statusCode != 200) {
            utils.log("[getTWRBaseContent] ERROR: bad status code: " + res.statusCode);
            return;
        }
        var responseData = "";
        res.setEncoding("utf8");
        res.on("data", function(chunk) {
            responseData += chunk;
        });
        res.on("end", function() {
            try {
                if (responseData) {
                    utils.log("[getTWRBaseContent] TWR Base updated");
                    workers.forEach(function(worker) {
                        worker.send({ twrbase: responseData });
                    });
                }
            } catch(e) {
                utils.debug("> [getTWRBaseContent] ERROR: " + e +
                    "\nlength=" + responseData.length + ", data=" + responseData.substr(0, 512), "");
            }
        });
    });
};
