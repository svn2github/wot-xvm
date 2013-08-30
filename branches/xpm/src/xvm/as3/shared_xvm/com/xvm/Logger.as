/**
 * XVM Logger
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm
{
    public class Logger
    {
        native public static function add(str:String):void;
        native public static function addObject(obj:Object, name:String = "obj", depth:Number = 1):void;
    }
}
