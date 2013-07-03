import com.xvm.Comm;
import com.xvm.Config;
import com.xvm.Defines;
import com.xvm.JSONx;
import com.xvm.Utils;
import com.xvm.Components.PingServers.PingServersView;

class com.xvm.Components.PingServers.PingServers
{
    public static var instance:PingServers = null;
    
    private var view:PingServersView;
    private var pingCommandCounter:Number;
    private var pingTimer:Function;

    public static function initFeature(cfg:Object, holder:MovieClip)
    {
        if (cfg.enabled == false)
            return;

        if (instance == null)
            instance = new PingServers();
        instance.view = new PingServersView(cfg, holder);

        if (instance.pingTimer != null)
            _global.clearInterval(instance.pingTimer);

        instance.pingTimer = _global.setInterval(
            function() { PingServers.instance.showPing.call(PingServers.instance) },
            cfg.updateInterval);

        // immediately
        PingServers.instance.showPing.call(PingServers.instance);
        // after 1, 3, 5 sec
        _global.setTimeout(function() { PingServers.instance.showPing.call(PingServers.instance) }, 1000);
        _global.setTimeout(function() { PingServers.instance.showPing.call(PingServers.instance) }, 3000);
        _global.setTimeout(function() { PingServers.instance.showPing.call(PingServers.instance) }, 5000);
    }

    public static function sendPing()
    {
        Comm.Sync(Defines.COMMAND_PING, "0");
    }

    public function PingServers()
    {
        pingCommandCounter = 0;
    }

    private function showPing()
    {
        Comm.Sync(Defines.COMMAND_PING, String(pingCommandCounter++), this, answerCallback);
    }
    
    private function answerCallback(event):Void
    {
        var answer:String = event.str;
        if (answer == null || answer == "")
            return;
            
        view.update(parseAnswer(answer));
    }
    
    private function parseAnswer(answer:String):Array
    {
        var parsedAnswerObj:Object = JSONx.parse(answer);
        var responceTimeList:Array = [];
        for (var i in parsedAnswerObj)
        {
            var cluster:String = Utils.startsWith("WOT ", i) ? i.substring(4) : i;
            responceTimeList.push({ cluster: cluster, time: parsedAnswerObj[i] });
        }
        responceTimeList.sortOn(["cluster"]);
        
        return responceTimeList;
    }
}
