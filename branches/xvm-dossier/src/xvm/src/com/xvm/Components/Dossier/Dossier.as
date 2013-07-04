import com.xvm.Comm;
import com.xvm.Config;
import com.xvm.Defines;
import com.xvm.JSONx;
import com.xvm.Logger;
import com.xvm.Utils;
import com.xvm.VehicleInfo;
import com.xvm.Components.Dossier.DossierView;

class com.xvm.Components.Dossier.Dossier
{
    public static var instance:Dossier = null;
    
    private var playerName:String;
    
    private var view:DossierView;
    
    private var timer:Function; // FIXIT: replace timer with event
    private var commandCounter:Number;

    public static function initialize(cfg:Object, holder:MovieClip, playerName:String)
    {
        if (cfg.enabled == false)
            return;

        if (instance == null)
            instance = new Dossier(playerName);
        instance.view = new DossierView(cfg, holder);

        if (instance.timer != null)
            _global.clearInterval(instance.timer);
        instance.timer = _global.setInterval(function() { Dossier.instance.idleFunc.call(Dossier.instance) }, 10);

        // immediately
        Dossier.instance.idleFunc.call(Dossier.instance);
    }

    public function Dossier(playerName:String)
    {
        commandCounter = 0;
        this.playerName = playerName;
    }

    private var lastUpdateCall; 
    // called by timer every 10 ms
    private function idleFunc()
    {
        var now = (new Date()).getTime();
        if (!lastUpdateCall)
            lastUpdateCall = 0;
        if (now - lastUpdateCall > 10000)
        {
            lastUpdateCall = now;
            update();
        }
        view.updateIdle((now - lastUpdateCall) / 10000);
    }
    
    private function update()
    {
        Comm.SyncEncoded(Defines.COMMAND_DOSSIER,
            //                                                  end                interval (sec)  count      data fields             company, clan fields
            String(commandCounter++) + ";" +
            playerName + ";" +        // player name
            1372938628 + ";" +        // end
            (15 * 60) + ";" +         // interval(sec)
            100 + ";" +               // count
            "1;" +                    // 1 - per vehicle, 2 - summary
            "battles_count,wins;" +   // data fields
            ";" +                     // company fields
            "",                       // clan fields
            this, answerCallback);
    }
    
    private function answerCallback(event):Void
    {
        var answer:String = event.str;
        if (answer == null || answer == "")
            return;
        if (Utils.startsWith("[ERROR]", answer))
        {
            Logger.add("Dossier answer error: " + answer);
            return;
        }

        var data = parseAnswer(answer);
        Logger.addObject(data);
        view.update(data);
    }
    
    private function parseAnswer(answer:String):Object
    {
        var lines:Array = answer.split("\n");
        var len:Number = lines.length;
        for (var i:Number = 0; i < len; ++i)
        {
            var values:Array = lines[i].split(";");
            var period = int(values[0]);
            var vi = VehicleInfo.getInfo2ByVid(int(values[1]));
            //Logger.add(lines[i]);
        }
        return "";
    }
}
