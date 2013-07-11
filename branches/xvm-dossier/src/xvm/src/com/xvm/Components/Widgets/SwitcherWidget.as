/**
 * Switcher Widget
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

class com.xvm.Components.Widgets.SwitcherWidget extends BaseWidget
{
    /////////////////////////////////////////////////////////////////
    // PUBLIC STATIC
    
    public static var WIDGET_TITLE = Locale.get("Switcher");
    public static var WIDGET_NAME = Locale.get("Switcher");
    public static var WIDGET_TYPE = "switcher";
    
    public static function createWidgetSettingsControls(owner:WidgetsSettingsDialog, mc:MovieClip)
    {
        BaseWidget.createWidgetSettingsControls(owner, mc);

        CreateLabel(mc, "lLabel", 10, 30, 40, 25, Locale.get("Label"));
        var tiLbl:TextInput = (TextInput)(mc.attachMovie("TextInput", "label", mc.getNextHighestDepth(),
            { _x: 50, _y: 30, _width: 300 } ));
        tiLbl.addEventListener("textChange", owner, "onSwitcherLabelChange");

        CreateLabel(mc, "lLabel", 10, 60, 100, 25, Locale.get("Modes"));
        var cb1:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb1", mc.getNextHighestDepth(),
            { _x: 10, _y: 80, width:200, label: Locale.get("Hide all widgets") } ));
        cb1.addEventListener("select", owner, "onSwitcherCbChange");
        var cb2:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb2", mc.getNextHighestDepth(),
            { _x: 10, _y: 100, width:200, label: Locale.get("Select Mode 1") } ));
        cb2.addEventListener("select", owner, "onSwitcherCbChange");
        var cb3:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb3", mc.getNextHighestDepth(),
            { _x: 10, _y: 120, width:200, label: Locale.get("Select Mode 2") } ));
        cb3.addEventListener("select", owner, "onSwitcherCbChange");
        var cb4:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb4", mc.getNextHighestDepth(),
            { _x: 10, _y: 140, width:200, label: Locale.get("Show detailed info window") } ));
        cb4.addEventListener("select", owner, "onSwitcherCbChange");
    }

    public static function drawWidgetSettings(mc:MovieClip, w:Object)
    {
        BaseWidget.drawWidgetSettings(mc, w);
        
        mc.enable.selected = w.enable;
        if (!w.label)
            w.label = "";
        mc.label.text = w.label;
        if (isNaN(parseInt(w.modes)))
            w.modes = 0x0F;
        mc.cb1.selected = (w.modes & 0x01);
        mc.cb2.selected = (w.modes & 0x02);
        mc.cb3.selected = (w.modes & 0x04);
        mc.cb4.selected = (w.modes & 0x08);
    }

}
