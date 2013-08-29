﻿/**
 * XVM Utils
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.utils
{
    import flash.utils.setInterval;
    import flash.utils.setTimeout;
    import com.adobe.utils.StringUtil;

    public class Utils
    {
        public static function toInt(value:Object, defaultValue:Number):Number
        {
            if (!defaultValue)
                defaultValue = 0;
            if (!value)
                return defaultValue;
            var n: Number = parseInt(value.toString());
            return isNaN(n) ? defaultValue : n;
        }

        public static function toFloat(value:Object, defaultValue:Number):Number
        {
            if (!defaultValue)
                defaultValue = 0;
            if (!value)
                return defaultValue;
            var n: Number = parseFloat(value.toString());
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

        public static function Timeout(target:Object, callback:Function, timeout:Number):uint
        {
            return setTimeout(function():void { callback.call(target) }, timeout);
        }

        public static function Interval(target:Object, callback:Function, timeout:Number):uint
        {
            return setInterval(function():void { callback.call(target) }, timeout);
        }

        public static function elapsedMSec(start:Date, end:Date):Number
        {
            return end.getTime() - start.getTime();
        }

        public static function fixPath(path:String):String
        {
            path = path.split("\\").join("/");
            if (!StringUtil.endsWith("/", path))
                path += "/";
            return path;
        }

        //public static function indexOf(array:Array, value:Object):Number
        //{
            //var i:Number = 0;
            //var len:Number = array.length;
            //while(i < len)
            //{
                //if (array[i] === value)
                    //return i;
                //++i;
            //}
            //return -1;
        //}

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

        /**
         * Get children MovieClips of MovieClip
         * FIXIT: skips TextField?
         */
/*        public static function getChildrenOf(target:MovieClip, recursive:Boolean):Array
        {
            var result:Array = [];
            for (var i in target)
            {
                if (target[i] instanceof MovieClip)
                {
                    result.push(target[i]);

                    // Concatenate children of clips at this level,recurse
                    if (recursive)
                        result = result.concat(getChildrenOf(target[i],true));
                }
            }
            return result;
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

        /**
         * Create CSS
         */
/*        public static function createCSS(className:String, color:Number,
            fontName:String, fontSize:Number, align:String, bold:Boolean, italic:Boolean):String
        {
            return "." + className + " {" +
                "color:#" + Strings.padLeft(color.toString(16), 6, '0') + ";" +
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

        public static function createStyleSheet(css:String):TextField.StyleSheet
        {
            var style:TextField.StyleSheet = new TextField.StyleSheet();
            style.parseCSS(css);
            return style;
        }

        // Fix <img src='xvmres://...'> to <img src='img://XVMRES_ROOT/...'> (res_mods/xvm/res)
        public static function fixImgTag(str:String):String
        {
            return str.split("xvmres://").join("img://" + Defines.XVMRES_IMG_ROOT);
        }

        // Duplicate text field
        public static function duplicateTextField(mc:MovieClip, name:String, textField:TextField, yOffset:Number, align:String):TextField
        {
            var res:TextField = mc.createTextField("name", mc.getNextHighestDepth(),
                textField._x, textField._y + yOffset, textField._width, textField._height);
            res.antiAliasType = "advanced";
            res.html = true;
            res.selectable = false;
            res.autoSize = align; // http://theolagendijk.com/2006/09/07/aligning-htmltext-inside-flash-textfield/
            var tf: TextFormat = textField.getNewTextFormat();
            res.styleSheet = Utils.createStyleSheet(Utils.createCSS("xvm_" + name,
                tf.color, tf.font, tf.size, align, tf.bold, tf.italic));

            return res;
        }

        public static function createButton(mc:MovieClip, name:String, x:Number, y:Number, txt:String, align:String):MovieClip
        {
            var b:MovieClip = mc.attachMovie("Button", name, mc.getNextHighestDepth());
            b._x = x;
            b._y = y;
            b.autoSize = true;
            b.label = txt;

            if (align == "right")
                b._x -= Math.round(b.textField.textWidth + 21);

            b.addEventListener("rollOver", showTooltip);
            b.addEventListener("rollOut", hideTooltip);

            return b;
        }

        public static function createRadioButton(mc:MovieClip, name:String, x:Number, y:Number, width:Number, txt:String, group:String):MovieClip
        {
            var b:MovieClip = mc.attachMovie("RadioButton", name, mc.getNextHighestDepth());
            b._x = x;
            b._y = y;
            b.autoSize = false;
            b.width = width;
            b.label = txt;
            b.group = group;

            b.addEventListener("rollOver", showTooltip);
            b.addEventListener("rollOut", hideTooltip);

            return b;
        }

        public static function createCheckBox(mc:MovieClip, name:String, x:Number, y:Number, txt:String, align:String):MovieClip
        {
            var b:MovieClip = mc.attachMovie("CheckBox", name, mc.getNextHighestDepth());
            b._x = x;
            b._y = y;
            b.autoSize = true;
            b.label = txt;

            if (align == "right")
                b._x -= Math.round(b.textField.textWidth + 21);

            b.addEventListener("rollOver", showTooltip);
            b.addEventListener("rollOut", hideTooltip);

            return b;
        }

        public static function createTextInput(mc:MovieClip, name:String, x:Number, y:Number, width:Number):gfx.controls.TextInput
        {
            var c:gfx.controls.TextInput = gfx.controls.TextInput(mc.attachMovie("TextInput", name, mc.getNextHighestDepth()));
            c._x = x;
            c._y = y;
            c._width = width;
            return c;
        }

        public static function duplicateButton(src:Object, name:String, offsetX:Number, offsetY:Number,
            text:String, iconSource:String, toolTip:String):MovieClip
        {
            var mc = src.duplicateMovieClip(name, 0);
            mc._x = src._x + offsetX;
            mc._y = src._y + offsetY;
            mc._autoSize = true;
            mc._iconSource = iconSource;
            mc.tooltipText = toolTip;

            mc.addEventListener("rollOver", showTooltip);
            mc.addEventListener("rollOut", hideTooltip);

            mc.configUI();

            return mc;
        }

        public static function addEventListeners(obj:Object, target:Object, handlers:Object):Void
        {
            if (!obj || !target || !handlers)
                return;
            for (var name in handlers)
                obj.addEventListener(name, target, handlers[name]);
        }

        private static function showTooltip(e:Object):Void
        {
            var b = e.target;
            if (b.tooltipText)
                net.wargaming.managers.ToolTipManager.instance.show(b.tooltipText);
        }

        private static function hideTooltip(e:Object):Void
        {
            net.wargaming.managers.ToolTipManager.instance.hide();
        }

        // http://www.koreanrandom.com/forum/topic/2625-/
        public static function XEFF(value:Number):Number
        {
            return value < 420 ? 0 :
                Math.round(Math.max(0, Math.min(100,
                    value * (value * (value * (value * (value * (value *
                    0.000000000000000045254
                    - 0.00000000000033131)
                    + 0.00000000094164)
                    - 0.0000013227)
                    + 0.00095664)
                    - 0.2598)
                    + 13.23
                )));
        }

        public static function XWN(value:Number):Number
        {
            return value > 2160 ? 100 :
                Math.round(Math.max(0, Math.min(100,
                    value * (value * (value * (value *
                    - 0.00000000001268
                    + 0.00000005147)
                    - 0.00006418)
                    + 0.07576)
                    - 7.25
                )));
        }

        /**
         * Create DropShadowFilter from config section
         */
/*        public static function extractShadowFilter(source:Object):DropShadowFilter
        {
            return new DropShadowFilter(
                source.distance, // distance
                source.angle, // angle
                parseInt(source.color, 16),
                // DropShadowFilter accepts alpha be from 0 to 1.
                // 90 at default config.
                source.alpha / 100,
                source.blur,
                source.blur,
                source.strength,
                3 // quality
            )
        }*/
    }
}
