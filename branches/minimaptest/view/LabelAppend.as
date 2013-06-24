import wot.Minimap.staticUtils.MinimapMacro;
import wot.Minimap.model.externalProxy.MapConfig;
import flash.geom.Point;
import wot.Minimap.dataTypes.Player;
import wot.PlayersPanel.PlayersPanelProxy;

class wot.Minimap.view.LabelAppend
{
    public static function appendTextField(container:MovieClip, uid:Number, entryName:String, vehicleClass:String):Void
    {
        var offset:Point = MapConfig.unitLabelOffset(entryName);

        var textField:TextField = container.createTextField("textField-" + uid + entryName, container.getNextHighestDepth(), offset.x, offset.y, 100, 40);
        textField.antiAliasType = "advanced";
        textField.html = true;
        textField.multiline = true;
        textField.selectable = false;

        var style:TextField.StyleSheet = new TextField.StyleSheet();
        style.parseCSS(MapConfig.unitLabelCss(entryName));
        textField.styleSheet = style;

        var player:Player = PlayersPanelProxy.getPlayerInfo(uid);
        var text:String = getText(entryName, player, vehicleClass);
        if (text == "undefined" || !text)
        {
            /**
             * Skip creation of textFields with "undefined" string.
             * Happens for oneSelf icon at replay rewind.
             */
            text = "";
        }
        textField.htmlText = text;

        if (MapConfig.unitShadowEnabled(entryName))
        {
            textField.filters = [MapConfig.unitShadow(entryName)];
        }

        textField._alpha = MapConfig.unitLabelAlpha(entryName);
    }

    // -- Private

    private static function getText(entryName:String, player:Player, vehicleClass:String):String
    {
        var format:String = MapConfig.unitLabelFormat(entryName);

        return MinimapMacro.process(format, player, vehicleClass);
    }
}