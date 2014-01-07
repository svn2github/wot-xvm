/**
 * XVM Communication interface
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.io
{
    import flash.external.ExternalInterface;
    import flash.utils.setTimeout;
    import com.xvm.*;
    import com.xvm.utils.Sandbox;

    public class Cmd
    {
        private static const COMMAND_LOG:String = "log";
        private static const COMMAND_PING:String = "ping";
        private static const COMMAND_GETSCREENSIZE:String = "getScreenSize";
        private static const COMMAND_GETGAMEREGION:String = "getGameRegion";
        private static const COMMAND_GETLANGUAGE:String = "getLanguage";
        private static const COMMAND_GETMODS:String = "getMods";
        private static const COMMAND_GETVEHICLEINFODATA:String = "getVehicleInfoData";
        private static const COMMAND_LOADBATTLESTAT:String = "loadBattleStat";
        private static const COMMAND_LOADUSERDATA:String = "loadUserData";
        private static const COMMAND_GETDOSSIER:String = "getDossier";
        private static const COMMAND_LOGSTAT:String = "logstat";
        private static const COMMAND_SAVE_SETTINGS:String = "save_settings";
        private static const COMMAND_LOAD_SETTINGS:String = "load_settings";
        private static const COMMAND_TEST:String = "test";

        public static const RESPOND_PINGDATA:String = "xvm.pingdata";
        public static const RESPOND_STATDATA:String = "xvm.statdata";
        public static const RESPOND_USERDATA:String = "xvm.userdata";
        public static const RESPOND_DOSSIER:String = "xvm.dossier";

        public static function log(str:String):void
        {
            _call(null, null, [COMMAND_LOG, str]);
        }

        public static function ping():void
        {
            _call(null, null, [COMMAND_PING]);
        }

        public static function getScreenSize(target:Object, callback:Function):void
        {
            _call(target, callback, [COMMAND_GETSCREENSIZE]);
        }

        public static function getGameRegion(target:Object, callback:Function):void
        {
            _call(target, callback, [COMMAND_GETGAMEREGION]);
        }

        public static function getLanguage(target:Object, callback:Function):void
        {
            _call(target, callback, [COMMAND_GETLANGUAGE]);
        }

        public static function getMods(target:Object, callback:Function):void
        {
            _call(target, callback, [COMMAND_GETMODS]);
        }

        public static function getVehicleInfoData(target:Object, callback:Function):void
        {
            _call(target, callback, [COMMAND_GETVEHICLEINFODATA]);
        }

        public static function loadBattleStat(players:Array = null):void
        {
            _call(null, null, [COMMAND_LOADBATTLESTAT, Config.config.rating.showPlayersStatistics, players]);
        }

        public static function loadUserData(value:String, isId:Boolean):void
        {
            _call(null, null, [COMMAND_LOADUSERDATA, value, isId]);
        }

        public static function getDossier(playerId:String, vehId:String = null):void
        {
            _call(null, null, [COMMAND_GETDOSSIER, playerId, vehId]);
        }

        public static function logStat():void
        {
            _call(null, null, [COMMAND_LOGSTAT]);
        }

        public static function loadSettings(target:Object, callback:Function):void
        {
            _call(target, callback, [COMMAND_LOAD_SETTINGS]);
        }

        public static function saveSettings(settingsStr:String):void
        {
            _call(null, null, [COMMAND_SAVE_SETTINGS, settingsStr]);
        }

        public static function runTest(... args):void
        {
            args.unshift(COMMAND_TEST);
            _call(null, null, args);
        }

        /////////////////////////////////////////////////////////////////

        private static var _listeners:Object = {};
        private static var _counter:int = 0;

        private static var _xvm_sandbox_cmd_initialized:Boolean = false;
        private static function _call(target:Object, callback:Function, args:Array):void
        {
            if (!_xvm_sandbox_cmd_initialized)
            {
                ExternalInterface.addCallback("xvm.respond", _callback);
                setTimeout(function():void {
                    Cmd._xvm_sandbox_cmd_initialized = true;
                    Cmd._call(target, callback, args);
                }, 1);
            }
            else
            {
                //Logger.add(">>> Cmd.send: " + com.xvm.JSONx.stringify(arguments, "", true));
                var id:String = Sandbox.GetCurrentSandboxPrefix() + String(++_counter);
                if (callback != null)
                    _listeners[id] = {target:target, callback:callback};
                args.unshift('xvm.cmd', id);
                ExternalInterface.call.apply(null, args);
            }
        }

        private static function _callback(id:String, data:*):void
        {
            if (!_listeners.hasOwnProperty(id))
                return;
            try
            {
                var callback:Function = _listeners[id].callback;
                if (callback != null)
                    callback.call(_listeners[id].target, data);
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
            finally
            {
                delete _listeners[id];
            }
        }
    }
}
