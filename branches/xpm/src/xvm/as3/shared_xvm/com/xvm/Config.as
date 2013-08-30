/**
 * XVM Config
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm
{
    public class Config
    {
        native public static function get config():CConfig;
        native public static function get GameRegion():String;
        native public static function get Language():String;
        native public static function get StateInfo():Object;
    }
}
