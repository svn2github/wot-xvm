import gfx.io.GameDelegate;

class com.xvm.Cmd
{
    private static var COMMAND_LOG:String = "log";
    private static var COMMAND_PING:String = "ping";
    private static var COMMAND_GETSCREENSIZE:String = "getScreenSize";
    private static var COMMAND_GETGAMEREGION:String = "getGameRegion";
    private static var COMMAND_LOADSTATDATA:String = "loadStatData";
    private static var COMMAND_LOADUSERDATA:String = "loadUserData";
    private static var COMMAND_LOGSTAT:String = "logstat";
    private static var COMMAND_SAVE_SETTINGS:String = "save_settings";
    private static var COMMAND_LOAD_SETTINGS:String = "load_settings";

    public static var RESPOND_STATDATA = "xvm.statdata";
    public static var RESPOND_USERDATA = "xvm.userdata";

    public static function log(str:String)
    {
        _call(null, null, [COMMAND_LOG, str]);
    }

    public static function ping(target:Object, callback:String)
    {
        _call(target, callback, [COMMAND_PING]);
    }

    public static function getScreenSize(target:Object, callback:String)
    {
        _call(target, callback, [COMMAND_GETSCREENSIZE]);
    }

    public static function getGameRegion(target:Object, callback:String)
    {
        _call(target, callback, [COMMAND_GETGAMEREGION]);
    }

    public static function loadStatData(players:Array)
    {
        _call(null, null, [COMMAND_LOADSTATDATA, players]);
    }

    public static function loadUserData(value:String, isId:Boolean)
    {
        _call(null, null, [COMMAND_LOADUSERDATA, value, isId]);
    }

    public static function logStat()
    {
        _call(null, null, [COMMAND_LOGSTAT]);
    }

    public static function loadSettings(target:Object, callback:String)
    {
        _call(target, callback, [COMMAND_LOAD_SETTINGS]);
    }

    public static function saveSettings(settingsStr)
    {
        _call(null, null, [COMMAND_SAVE_SETTINGS, settingsStr]);
    }

    /////////////////////////////////////////////////////////////////

    private static function _call(target:Object, callback:String, args:Array):Void
    {
        if (!_global._xvm_sandbox_cmd_initialized)
        {
            _global.setTimeout(function() {
                _global._xvm_sandbox_cmd_initialized = true;
                Cmd._call(target, callback, args);
            }, 100);
        }
        else
        {
            //Logger.add(">>> Cmd.send: " + com.xvm.JSONx.stringify(arguments, "", true));
            GameDelegate.call("xvm.cmd", args, target, callback);
        }
    }
}
