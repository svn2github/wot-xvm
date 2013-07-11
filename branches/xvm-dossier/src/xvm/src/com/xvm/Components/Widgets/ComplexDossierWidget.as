/**
 * Complex Dossier Widget
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
import com.xvm.Components.Widgets.BaseDossierWidget;

class com.xvm.Components.Widgets.ComplexDossierWidget extends BaseDossierWidget
{
    /////////////////////////////////////////////////////////////////
    // PUBLIC STATIC
    
    public static var WIDGET_TITLE = Locale.get("Complex");
    public static var WIDGET_NAME = Locale.get("Complex Dossier");
    public static var WIDGET_TYPE = "complex";
    
    public static function createWidgetSettingsControls(owner:WidgetsSettingsDialog, mc:MovieClip)
    {
        BaseDossierWidget.createWidgetSettingsControls(owner, mc, WIDGET_TYPE);
    }

    public static function drawWidgetSettings(mc:MovieClip, w:Object)
    {
        BaseDossierWidget.drawWidgetSettings(mc, w, WIDGET_TYPE);
    }

}
