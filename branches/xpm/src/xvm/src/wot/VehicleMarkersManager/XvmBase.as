/**
 * Base xvm class with varous basic functions (like macros substitutions).
 * Class don't contain any workflow logic.
 */
//import com.xvm.Cache;
import com.xvm.ColorsManager;
import com.xvm.GraphicsUtil;
import com.xvm.Macros;
import com.xvm.Strings;
import com.xvm.Utils;
import wot.VehicleMarkersManager.components.ActionMarkerComponent;
import wot.VehicleMarkersManager.components.ClanIconComponent;
import wot.VehicleMarkersManager.components.ContourIconComponent;
import wot.VehicleMarkersManager.components.damage.DamageTextComponent;
import wot.VehicleMarkersManager.components.HealthBarComponent;
import wot.VehicleMarkersManager.components.LevelIconComponent;
import wot.VehicleMarkersManager.components.TurretStatusComponent;
import wot.VehicleMarkersManager.components.VehicleTypeComponent;
import wot.VehicleMarkersManager.ErrorHandler;
import wot.VehicleMarkersManager.VehicleMarkerProxy;
import wot.VehicleMarkersManager.VehicleState;

class wot.VehicleMarkersManager.XvmBase
{
    /**
     * Trace function for debug purpose. Must be commented on release.
     * TODO: Is AS2/FD have any kind of conditional compilation?
     * @param	str
     */
    public function trace(str:String):Void
    {
        //if (m_playerFullName == "ayne_RU")
        //Logger.add(m_playerFullName + "> " + str);
    }

    // Private static members
    private static var s_showExInfo:Boolean = false; // Saved "Extended Info State" for markers that appeared when Alt pressed.
    private static var s_blowedUp:Object = {}; // List of members that was ammoracked.

    // Private members
    var m_entityName;
    var m_playerFullName;
    var m_curHealth;
    var m_maxHealth;
    var m_source;
    var m_vname;
    var m_level;
    var m_speaking;
    var m_entityType; // TODO: is the same as proxy.m_team?

    // Private members
    var m_showExInfo: Boolean;
    var m_isDead: Boolean;
    var m_defaultIconSource: String;

    // TextFields
    var textFields: Object;

    // Vehicle State
    var vehicleState: VehicleState;

    // UI Controls
    var actionMarkerComponent: ActionMarkerComponent;
    var clanIconComponent:ClanIconComponent;
    var contourIconComponent: ContourIconComponent;
    var damageTextComponent: DamageTextComponent;
    var healthBarComponent: HealthBarComponent;
    var levelIconComponent: LevelIconComponent;
    var turretStatusComponent: TurretStatusComponent;
    var vehicleTypeComponent: VehicleTypeComponent;

    // Parent proxy instance (assigned from proxy)
    private var _proxy:VehicleMarkerProxy;
    public function get proxy():VehicleMarkerProxy { return _proxy; }

    public function get wrapper():net.wargaming.ingame.VehicleMarker { return proxy.wrapper; }
    
    public function get isBlowedUp():Boolean { return s_blowedUp[m_playerFullName] != undefined; }

    private function getCurrentSystemColor():Number
    {
        return ColorsManager.getSystemColor(m_entityName, m_isDead, isBlowedUp);
    }

    private static function getSystemColor(o:Object):Number
    {
        return ColorsManager.getSystemColor(o.entityName, o.dead, o.blowedUp);
    }

    /**
     * Text formatting functions
     */

    public function formatStaticText(format:String):String
    {
        //var key = "VMM/" + m_playerFullName + "/" + format;
        var pn = m_playerFullName;
        return Strings.trim(Macros.Format(pn, format));
        //return Utils.trim(Cache.Get(key, function() { return Macros.Format(pn, format) }));
    }

    /* Substitutes macroses with values
     *
     * Possible format values with simple config:
     * incoming format -> outcoming format
     * {{hp}} / {{hp-max}} -> 725 / 850
     * Patton -> Patton
     * -{{dmg}} -> -368
     * {{dmg}} -> 622
     *
     * Called by
     * XVMShowDamage(curHealth, delta)
     * XVMUpdateUI(curHealth) with textField aspect
     */
    public function formatDynamicText(format:String, curHealth:Number, delta:Number, damageFlag:Number, damageType:String):String
    {
        return Strings.trim(Macros.Format(m_playerFullName, format,
            {
                curHealth:curHealth,
                delta:isBlowedUp ? delta - 1 : delta, // curHealth = -1 for blowedUp
                damageFlag:damageFlag,
                damageType:damageType,
                entityName:m_entityName,
                dead:m_isDead,
                blowedUp:isBlowedUp,
                getSystemColor:getSystemColor
            }));
    }

    public function formatStaticColorText(format:String):String
    {
        format = Strings.trim(Macros.Format(m_playerFullName, format));
        return format.split("#").join("0x");
    }

    public function formatDynamicColor(format:String, curHealth:Number, delta:Number, damageFlag:Number, damageType:String):Number
    {
        if (!format)
            return getCurrentSystemColor();

        if (isFinite(format))
            return Number(format);

        format = formatDynamicText(format, curHealth, delta, damageFlag, damageType).split("#").join("0x");

        return isFinite(format) ? Number(format) : getCurrentSystemColor();
    }

    public function formatDynamicAlpha(format:String, curHealth:Number):Number
    {
        if (!format)
            return 100;

        if (isFinite(format))
            return Number(format);

        format = formatDynamicText(format, curHealth).split("#").join("0x");

        var n = isFinite(format) ? Number(format) : 100;
        return (n <= 0) ? 1 : (n > 100) ? 100 : n;
    }

    /**
     * Create new TextField based on config
     */
    public function createTextField(cfg:Object):Object
    {
        try
        {
            var n = wrapper.getNextHighestDepth();
            var textField: TextField = wrapper.createTextField("textField" + n, n, 0, 0, 140, 100);

            //textField._quality = "BEST";
            textField.antiAliasType = "normal";
            //textField.antiAliasType = "advanced";
            //textField.gridFitType = "NONE";

            textField.multiline = true;
            textField.wordWrap = false;

            //textField.border = true;
            //textField.borderColor = 0xFFFFFF;
            // http://theolagendijk.com/2006/09/07/aligning-htmltext-inside-flash-textfield/
            textField.autoSize = cfg.font.align || "center";

            var cfg_color_format_static = formatStaticColorText(cfg.color);
            var sh_color_format_static = formatStaticColorText(cfg.shadow.color);

            textField.html = true;
            textField.styleSheet = Utils.createStyleSheet(Utils.createCSSFromConfig(cfg.font,
                formatDynamicColor(cfg_color_format_static, m_curHealth), "xvm_markerText"));

//            Logger.add(XvmHelper.createCSS(cfg.font, formatDynamicColor(formatStaticColorText(cfg.color), m_curHealth), "xvm_markerText"));

            // TODO: replace shadow with TweenLite Shadow/Bevel (performance issue)
            var shadow: flash.filters.DropShadowFilter = null;
            if (cfg.shadow)
            {
                var sh_color:Number = formatDynamicColor(sh_color_format_static, m_curHealth);
                var sh_alpha:Number = formatDynamicAlpha(cfg.shadow.alpha, m_curHealth);
                shadow = GraphicsUtil.createShadowFilter(cfg.shadow.distance,
                    cfg.shadow.angle, sh_color, sh_alpha, cfg.shadow.size, cfg.shadow.strength)
                textField.filters = [ shadow ];
            }

            textField._alpha = formatDynamicAlpha(cfg.alpha, m_curHealth);
            textField._x = cfg.x - (textField._width / 2.0);
            textField._y = cfg.y - (/*textField._height*/ 31 / 2.0); // FIXIT: 31 is used for compatibility
            textField._visible = cfg.visible;

            return {
                field: textField,
                format: formatStaticText(cfg.format),
                color: cfg_color_format_static,
                alpha: cfg.alpha,
                shadow: shadow,
                sh_color: sh_color_format_static,
                sh_alpha: cfg.shadow.alpha
            };
        }
        catch (e)
        {
            ErrorHandler.setText("ERROR: createTextField():" + String(e));
        }

        return null;
    }
}
