/**
 * XVM Utils
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.utils
{
    public class Utils
    {
        native public static function toInt(value:Object, defaultValue:Number):Number;
        native public static function toFloat(value:Object, defaultValue:Number):Number;
        native public static function toBool(value:Object, defaultValue:Boolean):Boolean;
        native public static function Timeout(target:Object, callback:Function, timeout:Number):uint;
        native public static function Interval(target:Object, callback:Function, timeout:Number):uint;
        native public static function elapsedMSec(start:Date, end:Date):Number;
        native public static function fixPath(path:String):String;
        native public static function compareVersions(v1:String, v2:String):Number;
    }
}
