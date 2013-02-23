/**
 * Module dependencies.
 */

var express = require("express")
    , routes = require("./routes")
    , generic = require("./routes/generic")
    , command = require("./routes/command")
    , http = require("http")
    , path = require("path");

var app = express();

app.configure(function() {
    app.set("port", process.env.PORT || 3000);
    app.set("views", __dirname + "/views");
    app.set("view engine", "jade");
    app.use(express.favicon());
    app.use(express.logger("dev"));
    app.use(express.bodyParser());
    app.use(express.methodOverride());
    app.use(app.router);
    app.use(express.static(path.join(__dirname, "public")));
    /*app.locals({
        async: require("async"),
        db: require("./db"),
        settings: require("./settings"),
        utils: require("./utils")
    });*/
});

app.configure("development", function() {
    app.use(express.errorHandler());
});

app.configure("production", function() {
    app.enable("trust proxy");
});

app.param(function(name, fn) {
    if(fn instanceof RegExp) {
        return function(req, res, next, val) {
            var captures = [],
                group;

            while((group = fn.exec(String(val))) !== null) {
                captures.push(group[0])
            }
            if(captures.length) {
                req.params[name] = captures;
                next();
            } else {
                next("route");
            }
        }
    }
});

// TODO is it optimal?
app.param("ids", /(\d+(?:=[\w-]*(?:=[\w-]*)?)?)/g);

app.get("/:ids", generic.stat);

app.param("playerId", /^\d+$/g);

app.get("/WN/:playerId", command.wn);
app.get("/INFO/:playerId", command.info);

http.createServer(app).listen(app.get("port"), function() {
    console.log("Express server listening on port " + app.get("port"));
});
