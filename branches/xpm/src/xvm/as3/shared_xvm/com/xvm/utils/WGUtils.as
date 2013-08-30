/**
 * XVM Utils
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.utils
{
    public class WGUtils
    {
        native public static function vehicleClassToVehicleType(vclass:String):String;
        native public static function GetPlayerName(fullplayername:String):String;
        native public static function GetNormalizedPlayerName(fullplayername:String):String;
        native public static function GetClanName(fullplayername:String):String;
        native public static function GetClanNameWithBrackets(fullplayername:String):String;
        native public static function TraceXvmModule(moduleName:String):Void;
    }
}
