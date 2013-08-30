/**
 * XVM Sandbox Detector
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 * @author Michael Pavlyshko
 * @author Pavel Máca
 */
package com.xvm.l10n
{
    public class Locale extends EventDispatcher
    {
        native public static function get(text:String):String;
        native public static function formatMacros(format:String):String;
    }
}
