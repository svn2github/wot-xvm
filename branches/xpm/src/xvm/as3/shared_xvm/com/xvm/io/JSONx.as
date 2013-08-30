package com.xvm.io
{
    public class JSONx
    {
        native public static function stringifyDepth(arg:*, depth:int = 1):String;
        native public static function stringify(arg:*, indent:String = '', compact:Boolean = false):String;
        native public static function parse(text:String):Object;
    }
}
