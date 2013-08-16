import com.xvm.Cmd;
import com.xvm.Comm;
import com.xvm.Config;
import com.xvm.Defines;
import com.xvm.GlobalEventDispatcher;
import com.xvm.JSONx;
import com.xvm.Logger;
import com.xvm.Macros;
import com.xvm.StatData;
import com.xvm.Utils;
import com.xvm.VehicleInfo;

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
        if (instance._loading)
            return;
        instance._loading = true;
        Cmd.loadStatData(instance, "LoadStatDataCallback", null);
    }

    public static function LoadUserData(value:String, isId:Boolean)
    {
        Cmd.loadUserData(instance, "LoadUserDataCallback", value, isId);
    }

    public static function LoadLastStat(event)
    {
        if (event)
            GlobalEventDispatcher.removeEventListener(Config.E_CONFIG_LOADED, StatLoader.LoadLastStat);
        GlobalEventDispatcher.addEventListener("process_fow", instance, instance.ProcessForFogOfWar);
        if (Config.s_config.rating.showPlayersStatistics)
        {
            if (!StatData.s_loaded)
                Comm.Sync(Defines.COMMAND_GET_PLAYERS, null, instance, instance.GetPlayersCallback);
            else
                GlobalEventDispatcher.dispatchEvent({type: StatData.E_STAT_LOADED});
        }
    }


    public var players_count = 0;
    public var teams = { t1:0, t2:0 };
    private var _loading = false;
    private var dirty:Boolean = false;

    // data: {
    //   uid|id|playerId,
    //   label|playerName,
    //   vehicle|vehicleName,
    //   icon|tankIcon,
    //   himself,
    //   vehId|playerID,
    //   vehicleState
    // }
    public function AddPlayerData(data:Object, team:Number)
    {
        var id = data.uid || data.id || data.playerId || 0;
        var label = data.label || data.playerName;
        var vehicle = data.vehicle || data.vehicleName;
        var icon = data.icon || data.tankIcon;
        var vehId = data.vehId || data.playerID || 0;
        var vehicleState = data.vehicleState || 3; // IS_ALIVE = 1, IS_AVATAR_READY = 2, IS_UNKNOWN = 4

        //Logger.add("AddPlayerData: " + team + ", " + label + ", " + vehicle + ", " + icon);

        if (id <= 0 || !label)
            return;

        if (data.clanAbbrev)
            label += "[" + data.clanAbbrev + "]";

        var pname = Utils.GetNormalizedPlayerName(label);
        var clan = Utils.GetClanName(label);

        if (team == Defines.TEAM_ALLY)
            teams.t1 = 1;
        else
            teams.t2 = 1;

        if (!StatData.s_data[pname])
            players_count++;
        StatData.s_data[pname] = {
            playerId: id,
            fullPlayerName: label.split(" ").join(""),
            label: pname,
            clanAbbrev: clan,
            vehicle: vehicle,
            vehicleKey: VehicleInfo.getInfo2(icon).name.toUpperCase(),
            icon: icon,
            team: team,
      	    vehicleId: vehId,
            vehicleState: vehicleState,
            selected: data.himself,
            loadstate: !StatData.s_data[pname].loadstate ? Defines.LOADSTATE_NONE : StatData.s_data[pname].loadstate,
            stat: StatData.s_data[pname] ? StatData.s_data[pname].stat : undefined
        };
        if (StatData.s_data[pname].loadstate == Defines.LOADSTATE_NONE)
            dirty = true;
    }

    private function LoadStatDataCallback(event)
    {
        Logger.addObject(event, "LoadStatDataCallback");
        var finallyBugWorkaround: Boolean = false; // Workaround: finally block have a bug - it can be called twice. Why? How?
        try
        {
            var response = JSONx.parse(event.str);

            if (response.info && response.info.xvm)
                GlobalEventDispatcher.dispatchEvent({ type: "set_info", ver: response.info.xvm.ver, message: response.info.xvm.message });

            if (response.players)
            {
                var players_length = response.players.length;
                for (var i = 0; i < players_length; ++i)
                {
                    var stat = response.players[i];
                    var name = stat.name.toUpperCase();
                    stat = CalculateStatValues(stat);
                    if (!StatData.s_data[name])
                    {
                        players_count++;
                        StatData.s_data[name] = { };
                    }
                    StatData.s_data[name].stat = stat;
                    StatData.s_data[name].loadstate = (StatData.s_data[name].vehicleKey == "UNKNOWN")
                        ? Defines.LOADSTATE_UNKNOWN : Defines.LOADSTATE_DONE;
                    StatData.s_empty = false;
                    Macros.RegisterStatMacros(stat.name, stat);
                    //Logger.addObject(StatData.s_data[name], "s_data[" + name + "]");
                }
            }
        }
        catch (ex)
        {
            // do nothing
        }
        finally
        {
            if (finallyBugWorkaround)
                return;
            finallyBugWorkaround = true;

            StatData.s_loaded = true;
            _loading = false;
            //Logger.add("Stat Loaded");
            GlobalEventDispatcher.dispatchEvent({type: StatData.E_STAT_LOADED});

            if (dirty)
                var timer = _global.setTimeout(function() { StatLoader.LoadData(); }, 50);
        }
    }

    public function CalculateStatValues(stat, forceTeff): Object
    {
        // rating (GWR)
        stat.r = stat.b > 0 ? Math.round(stat.w / stat.b * 100) : 0;

        if (!stat.tb || stat.tb <= 0 || !stat.tl || stat.tl <= 0)
            stat.tr = stat.r;
        else
        {
            var Or = stat.r;
            var Tr = Math.round(stat.tw / stat.tb * 100);
            var Tb = stat.tb / 100;
            var Tl = Math.min(stat.tl, 4) / 4;
            if (stat.tb < 100)
                stat.tr = Math.round(Or - (Or - Tr) * Tb * Tl);
            else
                stat.tr = Tr;
        }

        // XVM Scale: http://www.koreanrandom.com/forum/topic/2625-xvm-scale

        // xeff
        stat.xeff = null;
        if (stat.e != null && stat.e > 0)
            stat.xeff = Utils.XEFF(stat.e);

        // xwn
        stat.xwn = null;
        if (stat.wn != null && stat.wn > 0)
            stat.xwn = Utils.XWN(stat.wn);

        // tdb, tfb, tsb, tdv, te, teff (last)
        stat.tdb = null;
        stat.tfb = null;
        stat.tsb = null;
        stat.tdv = null;
        stat.te = null;
        stat.teff = null;
        // skip tb less then 10, because of WG bug:
        // http://www.koreanrandom.com/forum/topic/1643-/page-19#entry26189
        // forceTeff used in UserInfo, there is not this bug there.
        if (stat.tb == null || stat.tl == null || (forceTeff != true && stat.tb < 10 + stat.tl * 2))
            return stat;

        stat.tdb = (stat.td == null || stat.td < 0) ? null : Math.round(stat.td / stat.tb);
        stat.tfb = (stat.tf == null || stat.tf < 0) ? null : Math.round(stat.tf / stat.tb * 10) / 10;
        stat.tsb = (stat.ts == null || stat.ts < 0) ? null : Math.round(stat.ts / stat.tb * 10) / 10;
        //Logger.addObject(stat);

        var vi2 = VehicleInfo.getInfo2("/-" + stat.vn + ".");
        if (!vi2 || !vi2.type || !vi2.level)
        {
            //Logger.add("WARNING: vehicle info (3) missed: " + stat.vn);
            return stat;
        }

        stat.tdv = (stat.td == null || stat.td < 0) ? null : Math.round(stat.td / stat.tb / vi2.hptop * 10) / 10;

        var EC = { CD: 3, CF: 1 };
//        Logger.addObject(stat);
//        Logger.addObject(EC);
        if (EC.CD != null && EC.CD > 0 && (stat.tdb == null || stat.tdb <= 0))
            return stat;
        if (EC.CF != null && EC.CF > 0 && (stat.tfb == null || stat.tfb <= 0))
            return stat;

        if (vi2.top.D == vi2.avg.D || vi2.top.F == vi2.avg.F)
            return stat;

        var dD = stat.tdb - vi2.avg.D;
        var dF = stat.tfb - vi2.avg.F;
        var minD = vi2.avg.D * 0.4;
        var minF = vi2.avg.F * 0.4;
        var d = 1 + dD / (vi2.top.D - vi2.avg.D);
        var f = 1 + dF / (vi2.top.F - vi2.avg.F);
        var d2 = (stat.tdb < vi2.avg.D) ? stat.tdb / vi2.avg.D : d;
        var f2 = (stat.tfb < vi2.avg.F) ? stat.tfb / vi2.avg.F : f;
        d = (stat.tdb < vi2.avg.D) ? 1 + dD / (vi2.avg.D - minD) : d;
        f = (stat.tfb < vi2.avg.F) ? 1 + dF / (vi2.avg.F - minF) : f;

        d = Math.max(0, d);
        f = Math.max(0, f);
        d2 = Math.max(0, d2);
        f2 = Math.max(0, f2);

        stat.te = (d * EC.CD + f * EC.CF) / (EC.CD + EC.CF);
        stat.teff2 = (d2 * EC.CD + f2 * EC.CF) / (EC.CD + EC.CF);
//        Logger.add(stat.vn + " D:" + d + " F:" + f + " S:" + s);

        stat.teff = Math.max(1, Math.round(stat.te * 1000));
        stat.teff2 = Math.max(1, Math.round(stat.teff2 * 1000));
        stat.te = (stat.teff == 0) ? 0 //can not be used
            : (stat.teff < 300) ? 1
            : (stat.teff < 500) ? 2
            : (stat.teff < 700) ? 3
            : (stat.teff < 900) ? 4
            : (stat.teff < 1100) ? 5
            : (stat.teff < 1300) ? 6
            : (stat.teff < 1550) ? 7
            : (stat.teff < 1800) ? 8
            : (stat.teff < 2000) ? 9 : 10;

//        Logger.add(stat.vn + " teff=" + stat.teff + " e:" + stat.te);
//        Logger.addObject(stat);

        return stat;
    }

    private function GetPlayersCallback(event)
    {
        try
        {
            //Logger.add(event.str);
            var players = JSONx.parse(event.str);
            for (var i = 0; i < players.length; ++i)
            {
                var p = players[i];
                var vi2 = VehicleInfo.getInfo2("/-" + p.v + ".");
                AddPlayerData({
                   uid: p.id,
                   label: p.n,
                   vehicle: vi2 ? vi2.name : p.v,
                   icon: "../maps/icons/vehicle/contour/" + (vi2 ? vi2.nation + "-" + vi2.name : "unknown-" + p.v) + ".png",
                   himself: p.s,
                   vehId: 0,
                   vehicleState: 3
                }, p.t);
            }
            var timer = _global.setTimeout(function() { StatLoader.LoadData(); }, 50);
        }
        catch (ex)
        {
            // do nothing
        }
    }

    // Fog of War

    private function ProcessForFogOfWar(event)
    {
        if (!event)
            return;
        var data = event.data;
        if (!data.uid)
            return;

        //Logger.add("ProcessForFogOfWar(): " + data.label);
        //Logger.addObject(data);

        var pname: String = Utils.GetNormalizedPlayerName(data.label);
        if (StatData.s_data[pname] && StatData.s_data[pname].loadstate != Defines.LOADSTATE_NONE)
            return;

        AddPlayerData(data, event.team);

        var timer = _global.setTimeout(function() { StatLoader.LoadData(); }, 50);
    }

    private function LoadUserDataCallback(event, value, isId)
    {
        var data = null;
        if (event.error)
            data = {error:event.error};
        else if (!event.str)
            data = {error:"no data"};
        else
        {
            try
            {
                data = JSONx.parse(event.str);
            }
            catch (ex)
            {
                data = {error:ex};
            }
        }
        GlobalEventDispatcher.dispatchEvent( { type: "userdata_loaded", data: data, request: { value: value, isId: isId } } );
    }
}
