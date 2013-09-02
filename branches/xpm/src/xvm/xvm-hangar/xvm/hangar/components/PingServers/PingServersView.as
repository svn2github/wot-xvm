package xvm.hangar.components.PingServers
{
    import flash.display.*;
    import flash.text.*;
    import flash.filters.*;
    import com.xvm.Logger;
    import com.xvm.cfg.CPingServers;
    import com.xvm.events.ObjectEvent;
    import com.xvm.utils.Utils;

    public class PingServersView extends Sprite
    {
        private static const QUALITY_BAD:String = "bad";
        private static const QUALITY_POOR:String = "poor";
        private static const QUALITY_GOOD:String = "good";
        private static const QUALITY_GREAT:String = "great";
        private static const STYLE_NAME_PREFIX:String = "xvm_ping_";

        private var cfg:CPingServers;
        private var fields:Vector.<TextField>;

        public function PingServersView(cfg:CPingServers)
        {
            this.cfg = cfg;
            fields = new Vector.<TextField>();
            var f:TextField = createNewField();
            f.htmlText = makeStyledRow( { cluster: "Initialization", time: "..." } );
            PingServers.addListener(update);
        }

        // -- Private

        private function update(e:ObjectEvent):void
        {
            var responceTimeList:Array = e.result as Array;
            if (responceTimeList.length == 0)
                return;
            clearAllFields();
            for (var i:int = 0; i < responceTimeList.length; ++i)
                appendRowToFields(makeStyledRow(responceTimeList[i]));
        }

        /**
         * Each update data is obsolete.
         * Content is erased, but empty fields remain.
         */
        private function clearAllFields():void
        {
            for each (var tf:TextField in fields)
                tf.htmlText = "";
        }

        private function appendRowToFields(row:String):void
        {
            var receiverTf:TextField = getReceiverField();
            if (receiverTf.htmlText != "")
                receiverTf.htmlText += "\n";
            receiverTf.htmlText += row;
            alignFields();
        }

        private function makeStyledRow(pingObj:Object):String
        {
            var time:String = pingObj.time;
            var cluster:String = pingObj.cluster;
            var raw:String = cluster + cfg.delimiter + time;
            return "<span class='" + STYLE_NAME_PREFIX + defineQuality(time) + "'>" + raw + "</span>";
        }

        private function defineQuality(time:String):String
        {
            var t:Number = parseInt(time);
            if (isNaN(t))
                return QUALITY_BAD;
            if (t < cfg.threshold[QUALITY_GREAT])
                return QUALITY_GREAT;
            if (t < cfg.threshold[QUALITY_GOOD])
                return QUALITY_GOOD;
            else if (t < cfg.threshold[QUALITY_POOR])
                return QUALITY_POOR;
            return QUALITY_BAD;
        }

        /**
         * Defines which field is appropriate for data apeend.
         * If there is no such field then create one.
         */
        private function getReceiverField():TextField
        {
            var firstNotFullField:TextField = getFirstNotFullField();
            return  firstNotFullField || createNewField();
        }

        /**
         * Align colums so they do not overlap each other.
         */
        public function alignFields():void
        {
            for (var i:Number = 1; i < fields.length; i++)
            {
                var currentField:TextField = fields[i];
                var prevField:TextField = fields[i - 1];
                currentField.x = prevField.x + prevField.width + cfg.columnGap;
            }
        }

        // -- Private

        private function getFirstNotFullField():TextField
        {
            for (var i:int = 0; i < fields.length; i++)
            {
                var field:TextField = fields[i];
                if (field.htmlText == "" || field.scrollRect.bottom < cfg.maxRows)
                {
                    return field;
                }
            }

            return null;
        }

        private function createNewField():TextField
        {
            var newFieldNum:int = fields.length + 1;
            var newField:TextField = createField(newFieldNum);
            fields.push(newField);
            return fields[fields.length - 1];
        }

        public function createField(num:int):TextField
        {
            var tf:TextField = new TextField();
            tf.name = "tfPing" + num;
            tf.x = cfg.x;
            tf.y = cfg.y;
            tf.width = 200;
            tf.height = 200;
            tf.autoSize = TextFieldAutoSize.LEFT;
            tf.multiline = true;
            tf.selectable = false;
            tf.styleSheet = Utils.createStyleSheet(createCss());
            tf.alpha = cfg.alpha / 100.0;
            tf.htmlText =  "";
            if (cfg.shadow.enabled)
                tf.filters = [ Utils.extractShadowFilter(cfg.shadow) ];
            addChild(tf);
            return tf;
        }

        // -- Private

        private function createCss():String
        {
            var css:String = "";
            css += createQualityCss(PingServersView.QUALITY_GREAT);
            css += createQualityCss(PingServersView.QUALITY_GOOD)
            css += createQualityCss(PingServersView.QUALITY_POOR);
            css += createQualityCss(PingServersView.QUALITY_BAD);

            return css;
        }

        private function createQualityCss(quality:String):String
        {
            var size:Number = cfg.fontStyle.size;
            var bold:Boolean = cfg.fontStyle.bold;
            var italic:Boolean = cfg.fontStyle.italic;
            var name:String = cfg.fontStyle.name;
            var color:Number = parseInt(cfg.fontStyle.color[quality], 16);

            return Utils.createCSS(PingServersView.STYLE_NAME_PREFIX + quality, color, name, size, "left", bold, italic);
        }
    }
}
