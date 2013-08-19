/**
 * Helper class for shared functions used in the players lists renderers in the hangar
 */
import net.wargaming.messenger.MessengerUtils;
import net.wargaming.managers.ToolTipManager;
import com.xvm.Cache;
import com.xvm.Config;
import com.xvm.Defines;
import com.xvm.GraphicsUtil;
import com.xvm.Locale;
import com.xvm.Utils;
import com.xvm.DataTypes.Stat;

class com.xvm.Helpers.TeamRendererHelper
{
    public static function CreateXVMHeaderLabel(wnd:MovieClip, name:String, styleFld:TextField,
        offsetX:Number, offsetY:Number, tipName:String)
    {
        if (!wnd[name] || wnd[name + "XVM"])
            return;

        var res = Utils.duplicateTextField(wnd, name + "XVM", styleFld, 0, "right");
        res._width = 25;
        res._x = wnd[name]._x + offsetX + 25;
        res._y = wnd[name]._y + offsetY;
        if (Config.s_config.hangar.xwnInCompany == true)
        {
            res.htmlText = "<span class='xvm_" + name + "XVM'><font color='#" +
                wnd[name].textColor.toString(16) + "'>xwn</font></span>";
        }
        else
        {
            res.htmlText = "<span class='xvm_" + name + "XVM'><font color='#" +
                wnd[name].textColor.toString(16) + "'>xeff</font></span>";
        }

        var b = wnd.attachMovie("Button", name + "XVMHolder", wnd.getNextHighestDepth());
        b._x = res._x;
        b._y = res._y;
        b.setSize(res._width, res._height);
        b._alpha = 0;
        b.addEventListener("rollOver", function() {
            ToolTipManager.instance.show(Locale.get(tipName));
        });
        b.addEventListener("rollOut", function() {
            ToolTipManager.instance.hide();
        });

        return res;
    }

    public static function GetToolTipData(data, stat:Stat)
    {
        var prefix =
            MessengerUtils.isFriend(data) ? '<font color="#66FF66">' + Locale.get("Friend") + '</font><br>' :
            MessengerUtils.isIgnored(data) ? '<font color="#FF6666">' + Locale.get("Ignored") + '</font><br>' : "";

        var dt = stat.date ? stat.date.split("T").join(" ").substr(0, 10) : Locale.get("unknown");

        var s = "";
        // line 1
        var pname = data.displayName || data.owner;
        s += Utils.GetPlayerName(pname) + "<font color='#CCCCCC'>" + Utils.GetClanNameWithBrackets(pname) + "</font>";
        s += "<br>";
        // line 2
        s += "WN6: " + (!stat.wn ? "--" :
            "<font color='" + GraphicsUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_X, stat.xwn) + "'>" + (stat.xwn == 100 ? "XX" : (stat.xwn < 10 ? "0" : "") + stat.xwn) + "</font>") + " ";
        s += "(" + (!stat.wn ? "-" :
            "<font color='" + GraphicsUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_WN, stat.wn) + "'>" + stat.wn + "</font>") + ") ";
        s += Locale.get("EFF") + ": " + (!stat.eff ? "--" :
            "<font color='" + GraphicsUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_X, stat.xeff) + "'>" + (stat.xeff == 100 ? "XX" : (stat.xeff < 10 ? "0" : "") + stat.xeff) + "</font>") + " ";
        s += "(" + (!stat.eff ? "-" :
            "<font color='" + GraphicsUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_EFF, stat.eff) + "'>" + stat.eff + "</font>") + ")";
        s += "<br>";
        // line 3
        s += Locale.get("Fights") + ": " + (!stat.battles ? "-" :
            "<font color='" + GraphicsUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_KB, stat.battles / 1000) + "'>" + stat.battles + "</font>") + " ";
        s += Locale.get("Wins") + ": " + (!stat.r ? "-" :
            "<font color='" + GraphicsUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_RATING, stat.r) + "'>" + stat.r + "%</font>") + " ";
        s += "TWR: " + (!stat.twr ? "-" :
            "<font color='" + GraphicsUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_TWR, stat.twr) + "'>" + stat.twr + "%</font>");
        s += "<br>";
        // line 4
        s += Locale.get("Data was updated at") + ": <font color='#CCCCCC'>" + dt + "</font>";

/*        if (list.selectedIndex == 0)
        {
            m_statisticsHeaderField.htmlText = "";
            var spo = m_userData.spo / b;
            var def = m_userData.def / b;
            var cap = m_userData.cap / b;
            m_statisticsField2.htmlText = "<span class='xvm_statisticsField'>" +
                Locale.get("Avg level") + ": <font color='#ffc133'>" +
                    (m_userData.lvl ? Sprintf.format("%.1f", m_userData.lvl) : "-") + "</font> " +
                Locale.get("Spotted") + ": <font color='#ffc133'>" +
                    (spo ? Sprintf.format("%.2f", spo) : "-") + "</font> " +
                Locale.get("Defence") + ": <font color='#ffc133'>" +
                    (def ? Sprintf.format("%.2f", def) : "-") + "</font> " +
                Locale.get("Capture") + ": <font color='#ffc133'>" +
                    (cap ? Sprintf.format("%.2f", cap) : "-") + "</font> " +
                "</span>";
        }
        else
        {
            m_statisticsHeaderField.htmlText = "<span class='xvm_statisticsHeader'>" + Locale.get("player (average / top)") + "</span>";
            var data = list.dataProvider[list.selectedIndex];
            if (!data)
                m_statisticsField2.htmlText = "";
            else
            {
                //Logger.addObject(blocksArea, "blocksArea", 3);
                //Logger.addObject(data);
                var tb = extractNumber(blocksArea.blockcommon.itembattlesCount.value.text);
                var tw = extractNumber(blocksArea.blockcommon.itemwins.value.text);
                var td = extractNumber(blocksArea.blockbattleeffect.itemdamageDealt.value.text);
                var tf = extractNumber(blocksArea.blockbattleeffect.itemfrags.value.text);
                var vn = VehicleInfo.getVehicleName(data.icon);
                vn = vn.slice(vn.indexOf("-") + 1).toUpperCase();
                var stat = {
                    tb: tb,
                    tw: data.w,
                    tl: data.level,
                    vn: vn,
                    td: td,
                    tf: tf,
                    ts: data.ts
                };
                stat = StatLoader.CalculateStatValues(stat, true);
                //Logger.addObject(stat);

                var effd = td / tb / data.hp || 0;
                var e_color = GraphicsUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_E, stat.te);
                var s2 = "";
                s2 += "E: " + (!stat.teff ? "-" :
                    "<font color='" + e_color + "'>" + (stat.te < 10 ? stat.te : "X") + "</font> (<font color='" + e_color + "'>" + stat.teff + "</font>)") + "  ";
                s2 += Locale.get("Eff damage") + ": " + (!effd ? "-" :
                    "<font color='" + GraphicsUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_TDV, effd) + "'>" + Sprintf.format("%.2f", effd) + "</font>") + " ";
                s2 += "(<font color='#ffc133'>" + (data.avgE ? Sprintf.format("%.2f", data.avgE) : "-") + "</font>" +
                    " / <font color='#ffc133'>" + (data.topE ? Sprintf.format("%.2f", data.topE) : "-") + "</font>)  ";
                s2 += Locale.get("Spotted") + ": " + (!data.tsb ? "-" :
                    "<font color='" + GraphicsUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_TSB, data.tsb) + "'>" + Sprintf.format("%.2f", data.tsb) + "</font>") + " ";
                s2 += "(<font color='#ffc133'>" + (data.avgS ? Sprintf.format("%.2f", data.avgS) : "-") + "</font>" +
                    " / <font color='#ffc133'>" + (data.topS ? Sprintf.format("%.2f", data.topS) : "-") + "</font>)  ";
                m_statisticsField2.htmlText = "<span class='xvm_statisticsField'>" + s2 + "</span>";
            }
        }
*/
        return prefix + s;
    }

    public static function setXVMStat(key, textField)
    {
        var stat = Cache.Get(key);
        if (Config.s_config.hangar.xwnInCompany == true)
        {
            textField.htmlText = "<span class='xvm_eff'>" + (!stat.wn ? "--" :
            "<font color='" + GraphicsUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_X, stat.xwn) + "'>" + (stat.xwn == 100 ? "XX" : (stat.xwn < 10 ? "0" : "") + stat.xwn) + "</font>") + "</span>";
        }
        else
        {
            textField.htmlText = "<span class='xvm_eff'>" + (!stat.eff ? "--" :
            "<font color='" + GraphicsUtil.GetDynamicColorValue(Defines.DYNAMIC_COLOR_X, stat.xeff) + "'>" + (stat.xeff == 100 ? "XX" : (stat.xeff < 10 ? "0" : "") + stat.xeff) + "</font>") + "</span>";
        }
        return stat;
    }
}
