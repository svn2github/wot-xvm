var cluster = require('cluster');

var queue = [],
    queue_process_counter = 0,
    process_now = false;

var processQueue = function() {
    queue_process_counter = (queue_process_counter + 1) % 100;
    if(queue_process_counter !== 0 && !process_now)
        return;
    process_now = false;
    queue_process_counter = 0;
    if(queue.length === 0)
        return;

    console.log("[UPDATER:" + cluster.worker.id + "] processQueue");
    while(queue.length > 0) {
        var msg = queue.shift();
        if(msg.cmd == "update")
            process.send({cmd: "update_done", src: msg.src, data: { id: msg.id, name: "XXX" }});
    }
};

var messageHandler = function(msg) {
    console.log("[UPDATER:" + cluster.worker.id + "] " + JSON.stringify(msg));
    switch(msg.cmd) {
        case "queue":
            queue.push(msg);
            break;
        case "update":
            queue.unshift(msg);
            process_now = true;
            break;
    }
};

setInterval(processQueue, 100);
process.on("message", messageHandler);
console.log("[UPDATER:" + cluster.worker.id + "] Running");