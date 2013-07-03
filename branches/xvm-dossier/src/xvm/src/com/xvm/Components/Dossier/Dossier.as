import com.xvm.Comm;
import com.xvm.Config;
import com.xvm.Defines;
import com.xvm.JSONx;
import com.xvm.Logger;
import com.xvm.Utils;
import com.xvm.Components.Dossier.DossierView;

class com.xvm.Components.Dossier.Dossier
{
    public static var instance:Dossier = null;
    
    private var view:DossierView;
    
    private var timer:Function; // FIXIT: replace timer with event
    private var commandCounter:Number;

    public static function initialize(cfg:Object, holder:MovieClip)
    {
        if (cfg.enabled == false)
            return;

        if (instance == null)
            instance = new Dossier();
        instance.view = new DossierView(cfg, holder);

        if (instance.timer != null)
            _global.clearInterval(instance.timer);
        instance.timer = _global.setInterval(
            function() { Dossier.instance.update.call(Dossier.instance) },
            10000);

        // immediately
        Dossier.instance.update.call(Dossier.instance);
        // after 1, 3, 5 sec
        _global.setTimeout(function() { Dossier.instance.update.call(Dossier.instance) }, 1000);
        _global.setTimeout(function() { Dossier.instance.update.call(Dossier.instance) }, 3000);
        _global.setTimeout(function() { Dossier.instance.update.call(Dossier.instance) }, 5000);
    }

    public function Dossier()
    {
        commandCounter = 0;
    }

    private function update()
    {
        Comm.Sync(Defines.COMMAND_DOSSIER, String(commandCounter++), this, answerCallback);
    }
    
    private function answerCallback(event):Void
    {
        var answer:String = event.str;
        if (answer == null || answer == "")
            return;
        view.update(parseAnswer(answer));
    }
    
    private function parseAnswer(answer:String):Object
    {
        var data:Object = JSONx.parse(answer);

        return data;
    }
}
