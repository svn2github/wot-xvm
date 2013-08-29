/**
 * XVM Communication interface
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.io
{
    import flash.external.ExternalInterface;
    import flash.utils.setTimeout;

    import flash.text.TextFormatAlign

    public class Cmd
    {
        private static const COMMAND_LOG:String = "log";
        private static const COMMAND_PING:String = "ping";
        private static const COMMAND_GETSCREENSIZE:String = "getScreenSize";
        private static const COMMAND_GETGAMEREGION:String = "getGameRegion";
        private static const COMMAND_GETLANGUAGE:String = "getLanguage";
        private static const COMMAND_LOADSTATDATA:String = "loadStatData";
        private static const COMMAND_LOADUSERDATA:String = "loadUserData";
        private static const COMMAND_LOGSTAT:String = "logstat";
        private static const COMMAND_SAVE_SETTINGS:String = "save_settings";
        private static const COMMAND_LOAD_SETTINGS:String = "load_settings";

        public static const RESPOND_STATDATA:String = "xvm.statdata";
        public static const RESPOND_USERDATA:String = "xvm.userdata";

        public static function log(str:String):void
        {
            _call(null, null, [COMMAND_LOG, str]);
        }

        public static function ping(target:Object, callback:String):void
        {
            _call(target, callback, [COMMAND_PING]);
        }

        public static function getScreenSize(target:Object, callback:String):void
        {
            _call(target, callback, [COMMAND_GETSCREENSIZE]);
        }

        public static function getGameRegion(target:Object, callback:String):void
        {
            _call(target, callback, [COMMAND_GETGAMEREGION]);
        }

        public static function getLanguage(target:Object, callback:String):void
        {
            _call(target, callback, [COMMAND_GETLANGUAGE]);
        }

        public static function loadStatData(players:Array):void
        {
            _call(null, null, [COMMAND_LOADSTATDATA, players]);
        }

        public static function loadUserData(value:String, isId:Boolean):void
        {
            _call(null, null, [COMMAND_LOADUSERDATA, value, isId]);
        }

        public static function logStat():void
        {
            _call(null, null, [COMMAND_LOGSTAT]);
        }

        public static function loadSettings(target:Object, callback:String):void
        {
            _call(target, callback, [COMMAND_LOAD_SETTINGS]);
        }

        public static function saveSettings(settingsStr:String):void
        {
            _call(null, null, [COMMAND_SAVE_SETTINGS, settingsStr]);
        }

        /////////////////////////////////////////////////////////////////

        private static var _xvm_sandbox_cmd_initialized:Boolean = false;
        private static function _call(target:Object, callback:String, args:Array):void
        {
            if (!_xvm_sandbox_cmd_initialized)
            {
                setTimeout(function():void {
                    Cmd._xvm_sandbox_cmd_initialized = true;
                    Cmd._call(target, callback, args);
                }, 1);
            }
            else
            {
                //App.environment.envoke
                //Logger.add(">>> Cmd.send: " + com.xvm.JSONx.stringify(arguments, "", true));
                var id:Number = 0;
                args.unshift('xvm.cmd', id);
                ExternalInterface.call.apply(null, args);
            }
        }
    }
}
