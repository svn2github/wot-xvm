/**
 * XVM Communication interface
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.io
{
    public class Cmd
    {
        native public static function log(str:String):void;
        native public static function ping(target:Object, callback:Function):void;
        native public static function getScreenSize(target:Object, callback:Function):void;
        native public static function getGameRegion(target:Object, callback:Function):void;
        native public static function getLanguage(target:Object, callback:Function):void;
        native public static function getMods(target:Object, callback:Function):void;
        native public static function loadStatData(players:Array):void;
        native public static function loadUserData(value:String, isId:Boolean):void;
        native public static function logStat():void;
        native public static function loadSettings(target:Object, callback:Function):void;
        native public static function saveSettings(settingsStr:String):void;
    }
}
