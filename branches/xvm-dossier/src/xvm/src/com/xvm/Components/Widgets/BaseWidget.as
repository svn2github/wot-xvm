/**
 * Base Widget Implementation (abstract)
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
import gfx.controls.CheckBox;
import com.xvm.Defines;
import com.xvm.Locale;
import com.xvm.Components.Widgets.IWidget;
import com.xvm.Components.Widgets.WidgetsSettingsDialog;
 
class com.xvm.Components.Widgets.BaseWidget implements IWidget
{
    /////////////////////////////////////////////////////////////////
    // PUBLIC STATIC
    
    public static var WIDGET_TITLE = "Base";
    public static var WIDGET_NAME = "Base";
    public static var WIDGET_TYPE = "";
    
    public static function createWidgetSettingsControls(owner:WidgetsSettingsDialog, mc:MovieClip)
    {
        var enable:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "enable", mc.getNextHighestDepth(),
            { _x: 10, _y: 10, autoSize: true, label: Locale.get("Enable") } ));
        enable.addEventListener("select", owner, "onEnableChange");
    }
    
    public static function drawWidgetSettings(mc:MovieClip, w:Object)
    {
    }
    
    // protected
    public static function CreateLabel(mc, name, x, y, w, h, text)
    {
        var tfLbl:TextField = mc.createTextField("tf_lbl", mc.getNextHighestDepth(), x, y, w, h);
        tfLbl.selectable = false;
        tfLbl.verticalAlign = "center";
        tfLbl.textColor = Defines.UICOLOR_DEFAULT;
        var fmt:TextFormat =  tfLbl.getNewTextFormat();
        fmt.font = "$FieldFont";
        fmt.size = 13;
        tfLbl.setNewTextFormat(fmt);
        tfLbl.text = text;
    }

    /////////////////////////////////////////////////////////////////
    // .ctor()

    public function BaseWidget() 
    {
        
    }
    
    /////////////////////////////////////////////////////////////////
    // IWidget implementation
    

    
    /////////////////////////////////////////////////////////////////
    // PRIVATE
    
    
    
    
    
    /*
    
    
    public static var instance:Dossier = null;
    
    private var playerName:String;
    private var widgets:Object;
    private var view:DossierView;
    
    private var timer:Function; // FIXIT: replace timer with event
    private var commandCounter:Number;

    public static function initialize(holder:MovieClip, playerName:String, widgets:Array)
    {
        Logger.addObject(widgets, "", 2);

        if (instance == null)
            instance = new Dossier(playerName, widgets);
        instance.view = new DossierView(widgets, holder);

        if (instance.timer != null)
            _global.clearInterval(instance.timer);
        instance.timer = _global.setInterval(function() { Dossier.instance.idleFunc.call(Dossier.instance) }, 10);

        update(widgets);
    }

    public static function update(widgets:Array)
    {
        instance.widgets = widgets;
        instance.view.update(widgets);
    }

    public static function get Widgets()
    {
        return instance.widgets;
    }

    public function Dossier(playerName:String, widgets:Object)
    {
        commandCounter = 0;
        this.playerName = playerName;
        this.widgets = widgets;
    }

    private var lastUpdateDataCall; 
    // called by timer every 10 ms
    private function idleFunc()
    {
        var now = (new Date()).getTime();
        if (!lastUpdateDataCall)
        {
            lastUpdateDataCall = now - 59000;
            updateData();
        }
        if (now - lastUpdateDataCall > 60000)
        {
            lastUpdateDataCall = now;
            updateData();
        }
        view.updateIdle((now - lastUpdateDataCall) / 60000);
    }
    
    private function updateData()
    {
        Comm.SyncEncoded(Defines.COMMAND_DOSSIER,
            //                                                  end                interval (sec)  count      data fields             company, clan fields
            String(commandCounter++) + ";" +
            playerName + ";" +        // player name
            1372938628 + ";" +        // end
            (15 * 60) + ";" +         // interval(sec)
            100 + ";" +               // count
            "2;" +                    // 1 - per vehicle, 2 - summary
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
            Logger.add(lines[i]);
        }
        return "";
    }
*/
}