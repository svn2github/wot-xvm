import flash.external.*;
import com.xvm.*;
import com.xvm.DataTypes.*;

class com.xvm.StatLoader
{
    private static var _instance:StatLoader = null
    public static function get instance():StatLoader
    {
        if (_instance == null)
            _instance = new StatLoader();
        return _instance;
    }

    public static function LoadData()
    {
        if (!Config.s_config.rating.showPlayersStatistics)
            return;
        if (Stat.s_loaded == true)
            return;
        if (instance._loading)
            return;
        instance._loading = true;
        Stat.s_data = {};
        Stat.s_empty = true;
        Cmd.loadBattleStat(null);
    }

    // PRIVATE

    private var _loading = false;

    private function StatLoader()
    {
        ExternalInterface.addCallback(Cmd.RESPOND_BATTLEDATA, this, LoadStatDataCallback);
    }

    private function LoadStatDataCallback(json_str)
    {
        var finallyBugWorkaround: Boolean = false; // Workaround: finally block have a bug - it can be called twice. Why? How?
        try
        {
            var response = JSONx.parse(json_str);
            //Logger.addObject(response, "response", 2);

            if (response.players)
            {
                for (var nm in response.players)
                {
                    var stat:StatData = response.players[nm];
                    //Logger.addObject(stat);
                    CalculateStatValues(stat);
                    if (!Stat.s_data[nm])
                    {
                        //players_count++;
                        Stat.s_data[nm] = { };
                    }
                    Stat.s_data[nm].stat = stat;
                    Stat.s_data[nm].loadstate = (Stat.s_data[nm].vehicleKey == "UNKNOWN")
                        ? Defines.LOADSTATE_UNKNOWN : Defines.LOADSTATE_DONE;
                    Stat.s_empty = false;
                    Macros.RegisterStatMacros(nm, stat);
                    //Logger.addObject(StatData.s_data[nm], "s_data[" + nm + "]", 3);
                }
            }

            if (response.info)
                GlobalEventDispatcher.dispatchEvent({ type: Config.E_SET_INFO, ver: response.info.ver, message: response.info.message });
        }
        catch (ex)
        {
            Logger.add("[LoadStatDataCallback] ERROR: " + ex.toString());
        }
        finally
        {
            if (finallyBugWorkaround)
                return;
            finallyBugWorkaround = true;

            Stat.s_loaded = true;
            _loading = false;
            //Logger.add("Stat Loaded");
            GlobalEventDispatcher.dispatchEvent({type: Stat.E_STAT_LOADED});
        }
    }

    public function CalculateStatValues(stat:StatData, forceTeff:Boolean):Void
    {
        // rating (GWR)
        stat.r = stat.b > 0 ? Math.round(stat.w / stat.b * 100) : 0;

        if (stat.v == null)
        {
            stat.v = new VData();
            return;
        }

        stat.v.data = VehicleInfo.get(stat.v.id);
        if (stat.v.data == null)
        {
            //Logger.add("WARNING: vehicle info (3) missed: " + stat.vn);
            return;
        }

        var vdata:VehicleData = stat.v.data;

        if (!stat.v.b || stat.v.b <= 0)
            stat.v.r = stat.r;
        else
        {
            var Or = stat.r;
            var Tr = Math.round(stat.v.w / stat.v.b * 100);
            var Tb = stat.v.b / 100;
            var Tl = Math.min(vdata.level, 4) / 4;
            if (stat.v.b < 100)
                stat.v.r = Math.round(Or - (Or - Tr) * Tb * Tl);
            else
                stat.v.r = Tr;
        }

        // XVM Scale: http://www.koreanrandom.com/forum/topic/2625-xvm-scale

        // xeff
        stat.xeff = null;
        if (stat.e != null && stat.e > 0)
            stat.xeff = Utils.XEFF(stat.e);

        // xwn6
        stat.xwn6 = null;
        if (stat.wn6 != null && stat.wn6 > 0)
            stat.xwn6 = Utils.XWN6(stat.wn6);

        // xwn8
        stat.xwn8 = null;
        if (stat.wn8 != null && stat.wn8 > 0)
            stat.xwn8 = Utils.XWN8(stat.wn8);

        // tdb, tfb, tsb, tdv, te, teff (last)
        stat.v.db = null;
        stat.v.fb = null;
        stat.v.sb = null;
        stat.v.dv = null;
        stat.v.te = null;
        stat.v.teff = null;
        // skip v.b less then 10, because of WG bug:
        // http://www.koreanrandom.com/forum/topic/1643-/page-19#entry26189
        // forceTeff used in UserInfo, there is not this bug there.
        if (stat.v == null || stat.v.b == null || (forceTeff != true && stat.v.b < 10 + vdata.level * 2))
            return;

        stat.v.db = (stat.v.d == null || stat.v.d < 0) ? null : Math.round(stat.v.d / stat.v.b);
        stat.v.fb = (stat.v.f == null || stat.v.f < 0) ? null : Math.round(stat.v.f / stat.v.b * 10) / 10;
        stat.v.sb = (stat.v.s == null || stat.v.s < 0) ? null : Math.round(stat.v.s / stat.v.b * 10) / 10;
        //Logger.addObject(stat);

        stat.v.dv = (stat.v.d == null || stat.v.d < 0) ? null : Math.round(stat.v.d / stat.v.b / vdata.hpTop * 10) / 10;

        var EC = { CD: 3, CF: 1 };
//        Logger.addObject(stat);
//        Logger.addObject(EC);
        if (EC.CD != null && EC.CD > 0 && (stat.v.db == null || stat.v.db <= 0))
            return;
        if (EC.CF != null && EC.CF > 0 && (stat.v.fb == null || stat.v.fb <= 0))
            return;

        if (vdata.top.D == vdata.avg.D || vdata.top.F == vdata.avg.F)
            return;

        var dD = stat.v.db - vdata.avg.D;
        var dF = stat.v.fb - vdata.avg.F;
        var minD = vdata.avg.D * 0.4;
        var minF = vdata.avg.F * 0.4;
        var d = 1 + dD / (vdata.top.D - vdata.avg.D);
        var f = 1 + dF / (vdata.top.F - vdata.avg.F);
        var d2 = (stat.v.db < vdata.avg.D) ? stat.v.db / vdata.avg.D : d;
        var f2 = (stat.v.fb < vdata.avg.F) ? stat.v.fb / vdata.avg.F : f;
        d = (stat.v.db < vdata.avg.D) ? 1 + dD / (vdata.avg.D - minD) : d;
        f = (stat.v.fb < vdata.avg.F) ? 1 + dF / (vdata.avg.F - minF) : f;

        d = Math.max(0, d);
        f = Math.max(0, f);
        d2 = Math.max(0, d2);
        f2 = Math.max(0, f2);

        stat.v.te = (d * EC.CD + f * EC.CF) / (EC.CD + EC.CF);
        //stat.teff2 = (d2 * EC.CD + f2 * EC.CF) / (EC.CD + EC.CF);
//        Logger.add(stat.vn + " D:" + d + " F:" + f + " S:" + s);

        stat.v.teff = Math.max(1, Math.round(stat.v.te * 1000));
        //stat.teff2 = Math.max(1, Math.round(stat.teff2 * 1000));
        stat.v.te = (stat.v.teff == 0) ? 0 //can not be used
            : (stat.v.teff < 300) ? 1
            : (stat.v.teff < 500) ? 2
            : (stat.v.teff < 700) ? 3
            : (stat.v.teff < 900) ? 4
            : (stat.v.teff < 1100) ? 5
            : (stat.v.teff < 1300) ? 6
            : (stat.v.teff < 1550) ? 7
            : (stat.v.teff < 1800) ? 8
            : (stat.v.teff < 2000) ? 9 : 10;

//        Logger.add(stat.vn + " teff=" + stat.teff + " e:" + stat.te);
//        Logger.addObject(stat);
    }
}
