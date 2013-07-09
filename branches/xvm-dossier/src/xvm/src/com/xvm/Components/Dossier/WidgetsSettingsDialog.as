import gfx.controls.Button;
import gfx.controls.ButtonBar;
import gfx.controls.CheckBox;
import gfx.controls.NumericStepper;
import gfx.controls.RadioButton;
import gfx.controls.ScrollingList;
import gfx.controls.TextInput;
import gfx.core.UIComponent;
import gfx.data.DataProvider;
import net.wargaming.managers.WindowManager;
import net.wargaming.controls.Window;
import net.wargaming.managers.Localization;
import com.xvm.Comm;
import com.xvm.Defines;
import com.xvm.JSONx;
import com.xvm.Locale;
import com.xvm.Logger;
import com.xvm.Utils;

class com.xvm.Components.Dossier.WidgetsSettingsDialog
{
    private static var windowName = "widgets_settings";
    private static  var defaultSettings = { x: 400, y: 150 }

    var settings:Object;
    
    var main_mc:MovieClip;
    var wnd:Window;
    var list:ScrollingList;

    var mc_small:MovieClip;
    var mc_medium:MovieClip;
    var mc_switcher:MovieClip;
    
    private function test()
    {
        Logger.addObject(arguments, "loaded", 2);
    }
    
    public function WidgetsSettingsDialog(main_mc:MovieClip) 
    {
        //Logger.add("WidgetsSettingsDialog()");
//return;        

        this.main_mc = main_mc;

        Comm.LoadSettings(Defines.SETTINGS_DOSSIER_WIDGETSSETTINGSDIALOG, this, onSettingsLoaded);
    }
    
    public function onSettingsLoaded(event:Object) 
    {
        try
        {
            settings = (!event || !event.str || event.str == "") ? defaultSettings : JSONx.parse(event.str);
        }
        catch (e)
        {
            Logger.add("Error loading settings: " + e.message + "\n" + JSONx.stringify(event));
            settings = defaultSettings;
        }
        
        WindowManager.instance.close(windowName, true);
        var wopt = { _x: settings.x, _y: settings.y,  _title: Locale.get("Widgets Settings"), allowResize: false, _minWidth: 600, _minHeight: 400,
            _formSource: "none", _formType: "symbol", _offsetLeft: 10, _offsetTop: 40, _offsetRight: 10, _offsetBottom: 30,
            _visible: true, topmostLevel: true};
        wnd = WindowManager.instance.open("Window", "widgets_settings", wopt);
        wnd.addEventListener("confirmFormComplete", this, "onConfirmFormComplete")
        wnd.addEventListener("close", this, "onClose");
    }
    
    private function onConfirmFormComplete()
    {
        list = UIComponent.createInstance(wnd, "ScrollingList", "list", wnd.getNextHighestDepth(),
            { _x: 10, _y: 58, _width: 200, _height: wnd.height - 75, itemRenderer: "DropdownMenu_ListItemRenderer" } );
        list.dataProvider = ["item1", "item2", "item3", "item4"];
        list.addEventListener("change", this, "onListChange")
        
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
        widget_type.selectedIndex = 0;
    }

    private function CreateSmallWidgetSettings(mc:MovieClip)
    {
        var enable:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "enable", mc.getNextHighestDepth(),
            { _x: 10, _y: 10, autoSize: true, label: Locale.get("Enable") } ));

        CreateLabel(mc, "lInterval", 10, 30, 130, 25, Locale.get("Update interval, sec"));
        var interval:NumericStepper = (NumericStepper)(mc.attachMovie("NumericStepper", "interval", mc.getNextHighestDepth(),
            { _x: 140, _y: 30, _width: 60, minimum: 10, maximum: 3600, value: 300, stepSize: 10 } ));
    }

    private function CreateMediumWidgetSettings(mc)
    {
        var enable:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "enable", mc.getNextHighestDepth(),
            { _x: 10, _y: 10, autoSize: true, label: Locale.get("Enable") } ));

        CreateLabel(mc, "lInterval", 10, 30, 130, 25, Locale.get("Update interval, sec"));
        var interval:NumericStepper = (NumericStepper)(mc.attachMovie("NumericStepper", "interval", mc.getNextHighestDepth(),
            { _x: 140, _y: 30, _width: 60, minimum: 10, maximum: 3600, value: 300, stepSize: 10 } ));
    }
    
    private function CreateSwitcherSettings(mc)
    {
        var enable:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "enable", mc.getNextHighestDepth(),
            { _x: 10, _y: 10, autoSize: true, label: Locale.get("Enable") } ));

        CreateLabel(mc, "lLabel", 10, 30, 40, 25, Locale.get("Label"));
        var tiLbl:TextInput = (TextInput)(mc.attachMovie("TextInput", "label", mc.getNextHighestDepth(),
            { _x: 50, _y: 30, _width: 300 } ));
        tiLbl.addEventListener("textChange", this, "onSwitcherLabelChange");

        CreateLabel(mc, "lLabel", 10, 60, 100, 25, Locale.get("Modes"));
        var cb0:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb0", mc.getNextHighestDepth(),
            { _x: 10, _y: 80, autoSize: true, label: Locale.get("Hide all widgets") } ));
        var cb1:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb1", mc.getNextHighestDepth(),
            { _x: 10, _y: 100, autoSize: true, label: Locale.get("Select Mode 1") } ));
        var cb2:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb2", mc.getNextHighestDepth(),
            { _x: 10, _y: 120, autoSize: true, label: Locale.get("Select Mode 2") } ));
        var cb3:CheckBox = (CheckBox)(mc.attachMovie("CheckBox", "cb3", mc.getNextHighestDepth(),
            { _x: 10, _y: 140, autoSize: true, label: Locale.get("Show detailed info window") } ));
    }

    private function CreateLabel(mc, name, x, y, w, h, text)
    {
        var tfLbl:TextField = mc.createTextField("tf_lbl", mc.getNextHighestDepth(), x, y, w, h);
        tfLbl.verticalAlign = "center";
        tfLbl.textColor = Defines.UICOLOR_DEFAULT;
        var fmt:TextFormat =  tfLbl.getNewTextFormat();
        fmt.font = "$FieldFont";
        fmt.size = 13;
        tfLbl.setNewTextFormat(fmt);
        tfLbl.text = text;
        
    }
    
    private function onClose()
    {
        if (settings.x != wnd._x || settings.y != wnd._y)
            Comm.SaveSettings(Defines.SETTINGS_DOSSIER_WIDGETSSETTINGSDIALOG, { x: wnd._x, y: wnd._y } );

        wnd.removeMovieClip();
        wnd = null;
        WindowManager.instance.deleteWindow(windowName)
    }

    private function onListChange(event)
    {
        Logger.addObject(arguments, "onListChange", 2);
        if (event.index >= list.dataProvider.length && list.dataProvider.length > 0)
            list.selectedIndex = list.dataProvider.length - 1;
    }
    
    private function onAdd()
    {
        //Logger.addObject(arguments, "onAdd", 2);
        var dp = list.dataProvider;
        dp.push("item" + list.dataProvider.length);
        list.dataProvider = dp;
        list.invalidateData();
    }
    
    private function onRemove()
    {
        if (list.selectedIndex < 0 || list.selectedIndex >= list.dataProvider.length)
            return;
        Array(list.dataProvider).splice(list.selectedIndex, 1);
        list.invalidateData();
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
