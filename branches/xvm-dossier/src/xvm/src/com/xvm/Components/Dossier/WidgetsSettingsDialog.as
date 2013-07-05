import gfx.controls.Button;
import gfx.controls.ButtonBar;
import gfx.controls.CheckBox;
import gfx.controls.RadioButton;
import gfx.controls.ScrollingList;
import gfx.controls.TextInput;
import net.wargaming.managers.WindowManager;
import net.wargaming.controls.Window;
import net.wargaming.managers.Localization;
import com.xvm.Defines;
import com.xvm.Locale;
import com.xvm.Logger;
import com.xvm.Utils;

class com.xvm.Components.Dossier.WidgetsSettingsDialog
{
    private static var windowName = "widgets_settings";

    var main_mc:MovieClip;
    var wnd:Window;
    var list:ScrollingList;
    
    var mc_small:MovieClip;
    var mc_medium:MovieClip;
    var mc_switcher:MovieClip;
    
    public function WidgetsSettingsDialog(main_mc:MovieClip) 
    {
        this.main_mc = main_mc;

        wnd = WindowManager.instance.getWindow(windowName);
        
        if (wnd == null)
        {
            var wopt = { _y: 150, _x: 400,  _title: Locale.get("Widgets Settings"), allowResize: false, _minWidth: 600, _minHeight: 400,
                _formSource: "none", _formType: "symbol", _offsetLeft: 10, _offsetTop: 40, _offsetRight: 10, _offsetBottom: 30,
                _visible: true, topmostLevel: false};
            WindowManager.instance.close(windowName, true);
            wnd = WindowManager.instance.open("Window", "widgets_settings", wopt);
            wnd.addEventListener("confirmFormComplete", this, "onConfirmFormComplete")
            wnd.addEventListener("close", this, "onClose");
        }
    }
    
    private function onConfirmFormComplete()
    {
        list = (ScrollingList)(wnd.attachMovie("ScrollingList", "list", wnd.getNextHighestDepth(),
            { _x: 10, _y: 58, _width: 200, _height: wnd.height - 75 } ));

        var btnAdd:Button = (Button)(wnd.attachMovie("Button", "btnAdd", wnd.getNextHighestDepth(),
            { _x: 15, _y: 35, _width: 90, _height: 22, label:Locale.get("Add") } ));
        btnAdd.addEventListener("click", this, "onAdd");
        
        var btnRemove:Button = (Button)(wnd.attachMovie("Button", "btnRemove", wnd.getNextHighestDepth(),
            { _x: 115, _y: 35, _width: 90, _height: 22, label:Locale.get("Remove") } ));
        btnRemove.addEventListener("click", this, "onRemove");

        wnd.attachMovie("Window_BGForm", "bg", wnd.getNextHighestDepth(),
            { _x: 210, _y: 58, _width: wnd.width - 220, _height: wnd.height - 75 });

        mc_small = wnd.createEmptyMovieClip("mc_small", wnd.getNextHighestDepth());
        mc_small._x = 210; mc_small._y = 58;
        CreateSmallWidgetSettings(mc_small);
        
        mc_medium = wnd.createEmptyMovieClip("mc_medium", wnd.getNextHighestDepth());
        mc_medium._x = 210; mc_medium._y = 58;
        CreateMediumWidgetSettings(mc_medium);
        
        mc_switcher = wnd.createEmptyMovieClip("mc_switcher", wnd.getNextHighestDepth());
        mc_switcher._x = 210; mc_switcher._y = 58;
        CreateSwitcherSettings(mc_switcher);

        var dp = [
            { value: "small",    label: Locale.get("Small") },
            { value: "medium",   label: Locale.get("Medium") },
            { value: "switcher", label: Locale.get("Switcher") } ];
        var widget_type:ButtonBar = (ButtonBar)(wnd.attachMovie("ButtonBar", "widget_type", wnd.getNextHighestDepth(),
            { _x: 215, _y: 34, autoSize: true, dataProvider: dp, selectedIndex: -1, itemRenderer: "WindowTabButton" } ));
        widget_type.addEventListener("change", this, "onWidgetTypeSelect");
        widget_type.selectedIndex = 2;
    }

    private function CreateSmallWidgetSettings(mc:MovieClip)
    {
    }

    private function CreateMediumWidgetSettings(mc)
    {
    }
    
    private function CreateSwitcherSettings(mc)
    {
        var tfLbl:TextField = mc.createTextField("tf_lbl", mc.getNextHighestDepth(), 10, 10, 40, 25);
        tfLbl.verticalAlign = "center";
        tfLbl.textColor = Defines.UICOLOR_DEFAULT;
        var fmt:TextFormat =  tfLbl.getNewTextFormat();
        fmt.font = "$FieldFont";
        fmt.size = 13;
        tfLbl.setNewTextFormat(fmt);
        tfLbl.text = Locale.get("Label");
        var tiLbl:TextInput = (TextInput)(mc.attachMovie("TextInput", "label", mc.getNextHighestDepth(),
            { _x: 50, _y: 10, _width: 300 } ));
        tiLbl.addEventListener("textChange", this, "onSwitcherLabelChange");
        
        var cb0:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb0", mc.getNextHighestDepth(),
            { _x: 10, _y: 40, autoSize: true, label: Locale.get("Hide all widgets") } ));
        var cb1:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb1", mc.getNextHighestDepth(),
            { _x: 10, _y: 60, autoSize: true, label: Locale.get("Select Mode 1") } ));
        var cb2:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb2", mc.getNextHighestDepth(),
            { _x: 10, _y: 80, autoSize: true, label: Locale.get("Select Mode 2") } ));
        var cb3:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb3", mc.getNextHighestDepth(),
            { _x: 10, _y: 100, autoSize: true, label: Locale.get("Show detailed info window") } ));
    }
    
    private function onClose()
    {
        wnd.removeMovieClip();
        wnd = null;
        WindowManager.instance.deleteWindow(windowName)
    }

    private function onAdd()
    {
        Logger.addObject(arguments, "onAdd", 2);
    }
    
    private function onRemove()
    {
        Logger.addObject(arguments, "onRemove", 2);
    }
    
    private function onWidgetTypeSelect(event)
    {
        //Logger.addObject(arguments, "onWidgetTypeSelect", 2);
        mc_small._visible = false;
        mc_medium._visible = false;
        mc_switcher._visible = false;
        switch (event.item.value)
        {
            case "small":
                mc_small._visible = true;
                break;
            
            case "medium":
                mc_medium._visible = true;
                break;

            case "switcher":
                mc_switcher._visible = true;
                break;
        }
    }

    private function onSwitcherLabelChange()
    {
        Logger.addObject(arguments, "onSwitcherLabelChange", 2);
    }
}
