﻿/**
 * XVM Utils
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.utils
{
    import flash.display.Sprite;
    import flash.utils.*;
    import flash.text.*;
    import flash.filters.*;
    import net.wg.gui.lobby.profile.components.DashLineTextItem;
    import org.idmedia.as3commons.util.StringUtils;
    import com.xvm.*;

    public class Utils
    {
        public static function toInt(value:Object, defaultValue:int = 0):int
        {
            if (!value)
                return defaultValue;
            var n:Number = parseInt(String(value));
            return isNaN(n) ? defaultValue : int(n);
        }

        public static function toFloat(value:Object, defaultValue:Number = 0):Number
        {
            if (!value)
                return defaultValue;
            var n:Number = parseFloat(String(value));
            return isNaN(n) ? defaultValue : n;
        }

        public static function toBool(value:Object, defaultValue:Boolean):Boolean
        {
            if ((typeof value) == "boolean")
                return Boolean(value);
            if (!value)
                return defaultValue;
            value = String(value).toLowerCase();
            return defaultValue ? value != "false" : value == "true";
        }

        /**
         * @param format http://php.net/date
         * https://code.google.com/p/as3-php-date/wiki/Documentation
         */
        public static function FormatDate(format:String, date:Date):String
        {
            return new PhpDate(date).format(format);
        }

        /*public static function elapsedMSec(start:Date, end:Date):Number
        {
            return end.getTime() - start.getTime();
        }*/

        public static function fixPath(path:String):String
        {
            if (path == null)
                return null;
            path = path.replace(/\\/g, "/");
            if (!StringUtils.endsWith(path, "/"))
                path += "/";
            return path;
        }

        // Strip path and file extendion from icon
        public static function clearIcon(icon:String):String
        {
            if (!icon)
                return null;
            icon = icon.slice(icon.lastIndexOf("/") + 1);
            icon = icon.slice(0, icon.lastIndexOf("."));
            return icon;
        }

        // 0 - equal, -1 - v1<v2, 1 - v1>v2, -2 - error
        public static function compareVersions(v1:String, v2:String):Number
        {
            try
            {
                v1 = v1.split("-").join(".");
                v2 = v2.split("-").join(".");

                var a: Array = v1.split(".");
                while (a.length < 4)
                    a.push("0");
                var b: Array = v2.split(".");
                while (b.length < 4)
                    b.push("0");

                for (var i:int = 0; i < 4; ++i)
                {
                    if (isNaN(parseInt(a[i])) && isNaN(parseInt(b[i])))
                        return a[i] == b[i] ? 0 : a[i] < b[i] ? -1 : 1;

                    if (isNaN(parseInt(a[i])))
                        return -1;

                    if (isNaN(parseInt(b[i])))
                        return 1;

                    if (parseInt(a[i]) < parseInt(b[i]))
                        return -1;

                    if (parseInt(a[i]) > parseInt(b[i]))
                        return 1;
                }
            }
            catch (e:Object)
            {
                return -2;
            }
            return 0;
        }

        public static function safeCall(target:Object, func:Function, args:Array):*
        {
            try
            {
                return func.apply(target, args);
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        /**
         * Array subtraction
         * [1,2,3,4,5,6] - [1,2,3] = [4,5,6]
         * minuend − subtrahend = difference
         */
/*        public static function subtractArray(minuend:Array, subtrahend:Array):Array
        {
            var difference:Array = [];

            for (var i in minuend)
            {
                var testVal = minuend[i];
                var testIsAbcentInSubtrahend:Boolean = true;
                for (var j in subtrahend)
                {
                    if (testVal == subtrahend[j])
                    {
                        testIsAbcentInSubtrahend = false;
                        break;
                    }
                }
                if (testIsAbcentInSubtrahend)
                    difference.push(minuend[i])
            }

            return difference;
        }
*/

        /**
         * Create CSS
         */
        public static function createCSS(className:String, color:Object,
            fontName:String, fontSize:Object, align:String, bold:Boolean, italic:Boolean):String
        {
            return "." + className + " {" +
                "color:#" + StringUtils.leftPad(color.toString(16), 6, '0') + ";" +
                "font-family:\"" + fontName + "\";" +
                "font-size:" + fontSize + ";" +
                "text-align:" + align + ";" +
                "font-weight:" + (bold ? "bold" : "normal") + ";" +
                "font-style:" + (italic ? "italic" : "normal") + ";" +
                "}";
        }

        /**
         * Create CSS based on config
         */
/*        public static function createCSSFromConfig(config_font:Object, color:Number, className:String):String
        {
            return createCSS(className,
                color,
                config_font && config_font.name ? config_font.name : "$FieldFont",
                config_font && config_font.size ? config_font.size : 13,
                config_font && config_font.align ? config_font.align : "center",
                config_font && config_font.bold ? true : false,
                config_font && config_font.italic ? true : false);
        }
*/
        public static function createStyleSheet(css:String):StyleSheet
        {
            var style:StyleSheet = new StyleSheet();
            style.parseCSS(css);
            return style;
        }

        // Fix <img src='xvmres://...'> to <img src='img://XVMRES_ROOT/...'> (res_mods/xvm/res)
        public static function fixImgTag(str:String):String
        {
            return str.split("xvmres://").join("img://" + Defines.XVMRES_IMG_ROOT);
        }

        public static function cloneObject(obj:Object, clazz:Class):*
        {
            var clone:* = new clazz();
            var description:XML = describeType(obj);
            for each (var item:XML in description.accessor) {
                if (item.@access != 'readonly') {
                    try {
                        clone[item.@name] = obj[item.@name];
                    } catch(error:Error) {
                        // N/A yet.
                    }
                }
            }
            return clone;
        }

        public static function cloneTextField(textField:TextField, replace:Boolean = false):TextField
        {
            var clone:TextField = cloneObject(textField, TextField);
            clone.defaultTextFormat = textField.getTextFormat();
            if (textField.parent && replace) {
                textField.parent.addChild(clone);
                textField.parent.removeChild(textField);
            }
            return clone;
        }

        public static function cloneDashLineTextItem(dl:DashLineTextItem):DashLineTextItem
        {
            var clone:DashLineTextItem = App.utils.classFactory.getComponent("DashLineTextItem_UI", DashLineTextItem,
                {
                    x:dl.x,
                    y:dl.y,
                    width: dl.width,
                    height: dl.height,
                    label: dl.label,
                    value: dl.value
                });

            clone.labelTextField.defaultTextFormat = cloneTextFormat(dl.labelTextField.defaultTextFormat);
            clone.valueTextField.defaultTextFormat = cloneTextFormat(dl.valueTextField.defaultTextFormat);

            return clone;
        }

        public static function cloneTextFormat(textFormat:TextFormat):TextFormat
        {
            return new TextFormat(textFormat.font, textFormat.size, textFormat.color, textFormat.bold,
                textFormat.italic, textFormat.underline, textFormat.url, textFormat.target, textFormat.align,
                textFormat.leftMargin, textFormat.rightMargin, textFormat.indent, textFormat.leading);
        }

        public static function createTextStyleSheet(name:String, textFormat:TextFormat):StyleSheet
        {
            return Utils.createStyleSheet(Utils.createCSS(name, textFormat.color,
                textFormat.font, textFormat.size, textFormat.align, textFormat.bold, textFormat.italic));
        }

        public static function addEventListeners(obj:Object, target:Object, handlers:Object):void
        {
            if (!obj || !target || !handlers)
                return;
            for (var name:* in handlers)
                obj.addEventListener(name, target, handlers[name]);
        }
		
        private static function showTooltip(e:Object):void
        {
            var b:* = e.target;
            if (b.tooltipText)
                App.toolTipMgr.showComplex(b.tooltipText);
        }

        private static function hideTooltip(e:Object):void
        {
            App.toolTipMgr.hide();
        }

        /**
         * Create DropShadowFilter from config section
         */
        public static function extractShadowFilter(source:Object):DropShadowFilter
        {
            // NOTE: quality arg is not working with Scaleform 4.2 AS3
            return new DropShadowFilter(
                source.distance, // distance
                source.angle, // angle
                parseInt(source.color, 16),
                source.alpha / 100.0,
                source.blur,
                source.blur,
                source.strength);
        }
    }
}
