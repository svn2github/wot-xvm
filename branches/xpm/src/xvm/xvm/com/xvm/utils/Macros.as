/**
 * XVM Macro substitutions
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.utils
{
    import flash.utils.*;
    import org.idmedia.as3commons.util.StringUtils;
    import com.xvm.*;
    import com.xvm.l10n.Locale;
    import com.xvm.utils.*;
    import com.xvm.types.stat.*;
    import com.xvm.vehinfo.VehicleInfo;
    import scaleform.clik.constants.ConstrainMode;

    public class Macros
    {
        // { PLAYERNAME1: { macro1: func || value, macro2:... }, PLAYERNAME2: {...} }
        private static var dict:Dictionary = new Dictionary();

        public static function Format(playerName:String, format:String, options:MacrosFormatOptions):String
        {
            var formatArr:Array = format.split("{{");

            var len:int = formatArr.length;
            if (len > 1)
            {
                var res:String = formatArr[0];
                var pdata:Object = dict[WGUtils.GetNormalizedPlayerName(playerName)];
                for (var i:int = 1; i < len; ++i)
                {
                    var arr2:Array = formatArr[i].split("}}", 2);
                    if (arr2.length == 1 || (options && options.skip && options.skip.hasOwnProperty[arr2[0]]))
                        res += "{{" + formatArr[i];
                    else
                    {
                        var value:* = !pdata ? "" : pdata[arr2[0]] || "";
                        if (typeof value == "function")
                            res += options ? value(options) : "{{" + arr2[0] + "}}";
                        else
                            res += value;
                        res += arr2[1];
                    }
                }
            }

            //Logger.add(playerName + "> " + format);
            //Logger.add(playerName + "> " + res);
            return Utils.fixImgTag(res);
        }

        public static function RegisterMacrosData(name:String):void
        {
            var pname:String = WGUtils.GetNormalizedPlayerName(name);
            var data:StatData = Stat.getData(pname);
            if (data == null)
                return;

            // TODO: Load stat in FogOfWar
            /*if (Stat.loaded && Config.s_config.rating.loadEnemyStatsInFogOfWar)
            {
                if (!data.uid)
                    data.uid = StatData.s_data[pname].playerId;
                var pdata = StatData.s_data[pname];
                //Logger.addObject(pdata);
                //Logger.add("pname=" + pname + " uid=" + data.uid + " r=" + stat.r + " eff=" + stat.eff);
                if ((!pdata || (!pdata.stat && pdata.loadstate == Defines.LOADSTATE_NONE)) ||
                    (StatData.s_data[pname].loadstate == Defines.LOADSTATE_UNKNOWN && VehicleInfo.getInfo2(data.icon).name != "UNKNOWN"))
                {
                    //Logger.addObject(data);
                    StatData.s_data[pname].vehicleKey = VehicleInfo.getInfo2(data.icon).name.toUpperCase();
                    StatData.s_data[pname].loadstate = Defines.LOADSTATE_NONE;
                    GlobalEventDispatcher.dispatchEvent( { type: "process_fow", data: data, team: team } );
                }
            }*/

            if (!dict.hasOwnProperty(pname))
                dict[pname] = new Dictionary();
            var pdata:Dictionary = Macros.dict[pname];

            // vars
            var nick:String = Macros.modXvmDevLabel(data.nm + (data.clan != null && data.clan != "" ? "[" + data.clan + "]" : ""));

            // {{nick}}
            pdata["nick"] = nick;
            // {{name}}
            pdata["name"] = WGUtils.GetPlayerName(nick);
            // {{clan}}
            pdata["clan"] = WGUtils.GetClanNameWithBrackets(nick);
            // {{clannb}}
            pdata["clannb"] = WGUtils.GetClanName(nick);
            // {{vehicle}}
            pdata["vehicle"] = VehicleInfo.mapVehicleName(data.icon, data.vname);
            // {{vehiclename}} - usa-M24_Chaffee
            pdata["vehiclename"] = data.icon;
            // {{vtype}}
            pdata["vtype"] = VehicleInfo.GetVTypeValue(data.icon);
            // {{c:vtype}}
            pdata["c:vtype"] = MacrosUtil.GetVTypeColorValue(data.icon, data.vtype);

            // VMM only - static
            // {{squad}}
            pdata["squad"] = data.squad || "";
            // {{level}}
            pdata["level"] = data.level ? String(data.level) : "";
            // {{rlevel}}
            pdata["rlevel"] = data.level ? Defines.ROMAN_LEVEL[data.level - 1] : "";
            // {{hp-max}}
            pdata["hp-max"] = data.maxHealth ? String(data.maxHealth) : "";
            // {{turret}}
            pdata["turret"] = data.turret || "";

            // VMM only - dynamic
            // {{hp}}
            pdata["hp"] = function(o:MacrosFormatOptions):String {
                return !o || o.curHealth < 0 ? "" : String(o.curHealth);
            }
            // {{hp-ratio}}
            pdata["hp-ratio"] = function(o:MacrosFormatOptions):String {
                return !o || o.curHealth < 0 ? "" : Math.round(o.curHealth / data.maxHealth * 100).toString();
            }
            // {{dmg}}
            pdata["dmg"] = function(o:MacrosFormatOptions):String {
                return !o || o.delta < 0 ? "" : String(o.delta);
            }
            // {{dmg-ratio}}
            pdata["dmg-ratio"] = function(o:MacrosFormatOptions):String {
                return !o || o.delta < 0 ? "" : Math.round(o.delta / data.maxHealth * 100).toString();
            }
            // {{dmg-kind}}
            pdata["dmg-kind"] = function(o:MacrosFormatOptions):String {
                return !o || o.delta < 0 || !o.damageType ? "" : Locale.get(o.damageType);
            }

            // Colors
            // {{c:hp}}
            pdata["c:hp"] = function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_HP, o.curHealth);
            }
            // {{c:hp-ratio}}, {{c:hp_ratio}}
            pdata["c:hp-ratio"] = function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_HP_RATIO, o.curHealth / data.maxHealth * 100);
            }
            pdata["c:hp_ratio"] = pdata["c:hp-ratio"];
            // {{c:dmg}}
            pdata["c:dmg"] = function(o:MacrosFormatOptions):String {
                return o.delta ? MacrosUtil.GetDmgSrcColorValue(
                    Macros.damageFlagToDamageSource(o.damageFlag),
                    o.entityName == 'teamKiller' ? (data.team + "tk") : o.entityName,
                    o.dead, o.blowedUp) : "";
            }
            // {{c:dmg-kind}}, {{c:dmg_kind}}
            pdata["c:dmg-kind"] = function(o:MacrosFormatOptions):String {
                return o || o.delta < 0 || !o.damageType ? "" : MacrosUtil.GetDmgKindValue(o.damageType);
            }
            pdata["c:dmg_kind"] = pdata["c:dmg-kind"];
            // {{c:system}}
            pdata["c:system"] = function(o:MacrosFormatOptions):String {
                return "#" + StringUtils.leftPad(MacrosUtil.GetSystemColor(o.entityName, o.dead, o.blowedUp).toString(16), 6, "0");
            }

            // Alpha
            // {{a:hp}}
            pdata["a:hp"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_HP, o.curHealth) / 100.0;
            }
            // {{a:hp-ratio}}, {{a:hp_ratio}}
            pdata["a:hp-ratio"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_HP_RATIO, Math.round(o.curHealth / data.maxHealth * 100)) / 100.0;
            }
            pdata["a:hp_ratio"] = pdata["a:hp-ratio"];

            // STAT

            // vars
            //var r:Number = Utils.toInt(data.r, 0);
            //var eff:Number = Utils.toInt(data.e, 0);
            //var b:Number = Utils.toInt(data.b, 0);
            //var w:Number = Utils.toInt(data.w, 0);
            //var tr:Number = Utils.toInt(data.v.r, 0);
            //var tb:Number = Utils.toInt(data.v.b, 0);
            //var tw:Number = Utils.toInt(data.v.w, 0);
            //var tbK:Number = Math.round(tb / 100) / 10.0;

            var r:int = data.r;
            var eff:int = data.e;
            var b:int = data.b;
            var w:int = data.w;
            var tr:int = data.v.r;
            var tb:int = data.v.b;
            var tw:int = data.v.w;
            var tbK:Number = tb / 1000.0;

            // {{avglvl}}
            pdata["avglvl"] = printf.format("%.1fk", data.v.l);
            // {{xeff}}
            pdata["xeff"] = data.xeff < 0 ? "--" : data.xeff == 100 ? "XX" : (data.xeff < 10 ? "0" : "") + data.xeff;
            // {{xwn}}
            pdata["xwn"] = data.xwn < 0 ? "--" : data.xwn == 100 ? "XX" : (data.xwn < 10 ? "0" : "") + data.xwn;
            // {{eff}}, {{eff:4}}
            pdata["eff"] = eff <= 0 ? "----" : String(eff);
            pdata["eff:4"] = eff <= 0 ? "----" : StringUtils.leftPad(pdata["eff"], 4, ' ');
            // {{wn}}
            pdata["wn"] = data.wn <= 0 ? "----" : StringUtils.leftPad(String(data.wn), 4, ' ');
            // {{twr}}
            pdata["twr"] = data.twr <= 0 ? "--%" : StringUtils.leftPad(String(data.twr) + "%", 3, ' ');
            // {{e}}
            pdata["e"] = data.te == null ? "-" : data.te >= 10 ? "E" : String(data.te);
            // {{teff}}
            pdata["teff"] = data.teff == null ? "----" : StringUtils.leftPad(String(data.teff), 4, ' ');

            // {{rating}}, {{rating:3}}
            pdata["rating"] = r <= 0 ? "--%" : String(r) + "%";
            pdata["rating:3"] = StringUtils.leftPad(pdata["rating"], 3, ' ');
            // {{battles}}
            pdata["battles"] = b <= 0 ? "---" : String(b);
            // {{wins}}
            pdata["wins"] = b <= 0 ? "---" : String(w);
            // {{kb}}, {{kb:3}}
            pdata["kb"] = b <= 0 ? "--k" : String(Math.round(b / 1000)) + "k";
            pdata["kb:3"] = StringUtils.leftPad(pdata["kb"], 3, ' ');

            // {{t-rating}}, {{t-rating:3}}
            pdata["t-rating"] = tr <= 0 ? "--%" : String(tr) + "%";
            pdata["t-rating:3"] = StringUtils.leftPad(pdata["t-rating"], 3, ' ');
            // {{t-battles}}, {{t-battles:4}}
            pdata["t-battles"] = tb <= 0 ? "----" : String(tb);
            pdata["t-battles:4"] = StringUtils.leftPad(pdata["t-battles"], 4, ' ');
            // {{t-wins}}
            pdata["t-wins"] = tb <= 0 ? "----" : String(tw);
            // {{t-kb}}, {{t-kb-0}}, {{t-kb:4}}
            pdata["t-kb-0"] = tb <= 0 ? "-.-k" : StringUtils.leftPad(printf.format("%.1fk", tbK), 4, ' ');
            pdata["t-kb:4"] = tbK < 1 ? pdata["t-kb-0"].split("0.", 2).join(" .") : pdata["t-kb-0"]; // remove leading zero before dot
            pdata["t-kb"] = StringUtils.trim(pdata["t-kb:4"]);
            // {{t-hb}}, {{t-hb:3}}
            pdata["t-hb"] = tb <= 0 ? "--h" : String(Math.round(tb / 100)) + "h";
            pdata["t-hb:3"] = StringUtils.leftPad(pdata["t-hb"], 3, ' ');
            // {{tdb}}, {{tdb:4}}
            pdata["tdb"] = data.tdb == null ? "----" : String(data.tdb);
            pdata["tdb:4"] = StringUtils.leftPad(pdata["tdb"], 4, ' ');
            // {{tdv}}
            pdata["tdv"] = data.tdv == null ? "-.-" : printf.format("%.1f", data.tdv);
            // {{tfb}}
            pdata["tfb"] = data.tfb == null ? "-.-" : printf.format("%.1f", data.tfb);
            // {{tsb}}
            pdata["tsb"] = data.tsb == null ? "-.-" : printf.format("%.1f", data.tsb);

            // Dynamic colors
            // {{c:xeff}}
            pdata["c:xeff"] = data.xeff <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_X, data.xeff, "#", o.darken);
            }
            // {{c:xwn}}
            pdata["c:xwn"] = data.xwn <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_X, data.xwn, "#", o.darken);
            }
            // {{c:eff}}
            pdata["c:eff"] = eff <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_EFF, eff, "#", o.darken);
            }
            // {{c:wn}}
            pdata["c:wn"] = data.wn <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_WN, data.wn, "#", o.darken);
            }
            // {{c:e}}
            pdata["c:e"] = data.te <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_E, data.te, "#", o.darken);
            }
            // {{c:twr}}
            pdata["c:twr"] = data.twr <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_TWR, data.twr, "#", o.darken);
            }
            // {{c:rating}}
            pdata["c:rating"] = r <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_RATING, r, "#", o.darken);
            }
            // {{c:kb}}
            pdata["c:kb"] = b <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_KB, b / 1000.0, "#", o.darken);
            }
            // {{c:t-rating}}, {{c:t_rating}}
            pdata["c:t-rating"] = tr <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_RATING, tr, "#", o.darken);
            }
            pdata["c:t_rating"] = pdata["c:t-rating"];
            // {{c:t-battles}}, {{c:t_battles}}
            pdata["c:t-battles"] = tb <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_TBATTLES, tb, "#", o.darken);
            }
            pdata["c:t_battles"] = pdata["c:t-battles"];
            // {{c:tdb}}
            pdata["c:tdb"] = data.tdb <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_TDB, data.tdb, "#", o.darken);
            }
            // {{c:tdv}}
            pdata["c:tdv"] = data.tdv <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_TDV, data.tdv, "#", o.darken);
            }
            // {{c:tfb}}
            pdata["c:tfb"] = data.tfb <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_TFB, data.tfb, "#", o.darken);
            }
            // {{c:tsb}}
            pdata["c:tsb"] = data.tsb <= 0 ? "" : function(o:MacrosFormatOptions):String {
                return MacrosUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_TSB, data.tsb, "#", o.darken);
            }

            // Alpha
            // {{a:xeff}}
            pdata["a:xeff"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_X, data.xeff);
            }
            // {{a:xwn}}
            pdata["a:xwn"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_X, data.xwn);
            }
            // {{a:eff}}
            pdata["a:eff"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_EFF, eff);
            }
            // {{a:wn}}
            pdata["a:wn"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_WN, data.wn);
            }
            // {{a:e}}
            pdata["a:e"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_E, data.te);
            }
            // {{a:twr}}
            pdata["a:twr"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_TWR, data.twr);
            }
            // {{a:rating}}
            pdata["a:rating"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_RATING, r);
            }
            // {{a:kb}}
            pdata["a:kb"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_KB, b / 1000);
            }
            // {{a:t-rating}}
            pdata["a:t-rating"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_RATING, tr);
            }
            // {{a:t-battles}}
            pdata["a:t-battles"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_TBATTLES, tb);
            }
            // {{a:tdb}}
            pdata["a:tdb"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_TDB, data.tdb);
            }
            // {{a:tdv}}
            pdata["a:tdv"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_TDV, data.tdv);
            }
            // {{a:tfb}}
            pdata["a:tfb"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_TFB, data.tfb);
            }
            // {{a:tsb}}
            pdata["a:tsb"] = function(o:MacrosFormatOptions):Number {
                return MacrosUtil.GetDynamicAlphaValue(Defines.DYNAMIC_ALPHA_TSB, data.tsb);
            }
        }

        // PRIVATE

        private static function modXvmDevLabel(name:String):String
        {
            var label:String = WGUtils.GetPlayerName(name);
            switch (Config.gameRegion)
            {
                case "RU":
                    if (label == "M_r_A")
                        return "Флаттершай - лучшая пони!";
                    if (label == "XlebniDizele4ku")
                        return "как ник зделал поруски!!!";
                    if (label == "sirmax2" || label == "0x01" || label == "_SirMax_")
                        return "«сэр Макс» (XVM)";
                    break;

                case "CT":
                    if (label == "M_r_A_RU" || label == "M_r_A_EU")
                        return "Fluttershy is best pony!";
                    if (label == "sirmax2_RU" || label == "sirmax2_EU" || label == "sirmax_NA" || label == "0x01_RU")
                        return "«sir Max» (XVM)";
                    break;

                case "EU":
                    if (label == "M_r_A")
                        return "Fluttershy is best pony!";
                    if (label == "sirmax2" || label == "0x01" || label == "_SirMax_")
                        return "«sir Max» (XVM)";
                    break;

                case "US":
                    if (label == "sirmax" || label == "0x01" || label == "_SirMax_")
                        return "«sir Max» (XVM)";
                    break;
            }

            return name;
        }

        //   src: ally, squadman, enemy, unknown, player (allytk, enemytk - how to detect?)
        public static function damageFlagToDamageSource(damageFlag:Number):String
        {
            switch (damageFlag)
            {
                case Defines.FROM_ALLY:
                    return "ally";
                case Defines.FROM_ENEMY:
                    return "enemy";
                case Defines.FROM_PLAYER:
                    return "player";
                case Defines.FROM_SQUAD:
                    return "squadman";
                case Defines.FROM_UNKNOWN:
                default:
                    return "unknown";
            }
        }
    }
}


class MacrosFormatOptions
{
    public var skip:Object = null;
    public var curHealth:int = -1;
    public var delta:int = -1;
    public var damageType:String = null;
    public var damageFlag:Number = -1;
    public var entityName:String = null;
    public var dead:Boolean = false;
    public var blowedUp:Boolean = false;
    public var darken:Boolean = false;
}
