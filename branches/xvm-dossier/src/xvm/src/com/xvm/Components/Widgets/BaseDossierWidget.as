/**
 * Base Dossier Widget (abstract)
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
import gfx.controls.CheckBox;
import gfx.controls.NumericStepper;
import com.xvm.Comm;
import com.xvm.Config;
import com.xvm.Defines;
import com.xvm.JSONx;
import com.xvm.Locale;
import com.xvm.Logger;
import com.xvm.Utils;
import com.xvm.VehicleInfo;
import com.xvm.Components.Widgets.WidgetsSettingsDialog;
import com.xvm.Components.Widgets.BaseWidget;

class com.xvm.Components.Widgets.BaseDossierWidget extends BaseWidget
{
    /////////////////////////////////////////////////////////////////
    // PUBLIC STATIC
    
    public static var WIDGET_TITLE = "BaseDossier";
    public static var WIDGET_NAME = "BaseDossier";
    public static var WIDGET_TYPE = "";
    
    public static function createWidgetSettingsControls(owner:WidgetsSettingsDialog, mc:MovieClip, type:String)
    {
        BaseWidget.createWidgetSettingsControls(owner, mc);

        CreateLabel(mc, "lInterval", 10, 30, 130, 25, Locale.get("Update interval, sec"));
        var interval:NumericStepper = (NumericStepper)(mc.attachMovie("NumericStepper", "interval_" + type, mc.getNextHighestDepth(),
            { _x: 140, _y: 30, _width: 60, minimum: 0, maximum: 3600, stepSize: 10 } ));
        interval.addEventListener("change", owner, "onIntervalChange");
    }

    public static function drawWidgetSettings(mc:MovieClip, w:Object, type:String)
    {
        BaseWidget.drawWidgetSettings(mc, w);

        mc.enable.selected = w.enable;
        if (isNaN(w.interval))
            w.interval = 300;
        mc["interval_" + type].value = w.interval;
    }

}
