/**
 * Generic Object to Class Instance Converter
 * url http://sinnus.blogspot.com/2012/01/how-to-create-typed-as3-objects-from.html
 * source https://gist.github.com/sinnus/1556693
 * enhanced and ported to Scaleform 29.08.2013 by Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.utils
{
    import flash.utils.describeType;
    import flash.utils.getDefinitionByName;

    public class ObjectConverter
    {
        native public static function convertData(rawData: Object, clazz: Class):*;
    }
}
