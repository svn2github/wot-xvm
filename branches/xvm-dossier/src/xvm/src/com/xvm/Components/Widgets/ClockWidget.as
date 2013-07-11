/**
 * Clock Widget
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
import gfx.controls.CheckBox;
import gfx.controls.TextInput;
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

class com.xvm.Components.Widgets.ClockWidget extends BaseWidget
{
    /////////////////////////////////////////////////////////////////
    // PUBLIC STATIC
    
    public static var WIDGET_TITLE = Locale.get("Clock");
    public static var WIDGET_NAME = Locale.get("Clock");
    public static var WIDGET_TYPE = "clock";
    
    public static function createWidgetSettingsControls(owner:WidgetsSettingsDialog, mc:MovieClip)
    {
        BaseWidget.createWidgetSettingsControls(owner, mc);

        CreateLabel(mc, "lFormat", 10, 30, 40, 25, Locale.get("Format"));
        var tiFormat:TextInput = (TextInput)(mc.attachMovie("TextInput", "format", mc.getNextHighestDepth(),
            { _x: 50, _y: 30, _width: 300 } ));
        tiFormat.addEventListener("textChange", owner, "onClockFormatChange");
    }
    
    public static function drawWidgetSettings(mc:MovieClip, w:Object)
    {
        BaseWidget.drawWidgetSettings(mc, w);
        
        mc.enable.selected = w.enable;
        if (!w.format)
            w.format = "HH:MM:SS";
        mc.format.text = w.format;
    }
}
