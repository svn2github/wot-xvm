/**
 * MinimapEntry represent individual object on map.
 * One tank icon, base capture point, starting point or player himself.
 * 
 * @author ilitvinov87@gmail.com
 */

import wot.utils.Logger;
//import wot.Minimap.model.MapConfig;

class wot.Minimap.MinimapEntry extends net.wargaming.ingame.MinimapEntry
{
    /**
     * Subject of PlayersPanel <-> Minimap syncronization.
     * Syncronized during light delegate event.
     */
    public var uid:Number;
    
    function setDead(isPermanent)
    {
        /** Does not work. No idea why */
        //Logger.add("- MinimapEntry.setDead(" + MapConfig.isDeadPermanent + ")");
        //MapConfig.isDeadPermanent
        //Logger.addObject(_root, "_root", 2);
        //super.setDead(MapConfig.isDeadPermanent);
    }
    
    function lightPlayer(visibility)
    {
        uid = _root.minimap.syncTestUid;
        appendText(uid.toString());
    }
    
    private function appendText(text:String):Void
    {
        var field:TextField = markMC.createTextField("clipTf", 1, 0, 0, 50, 14);
        field.text = text;
        var format:TextFormat = new TextFormat();
        format.color = 0xFFFFFF;
        format.size = 8;
        //tf.font = "Arial"; $FieldFont
        field.setTextFormat(format);
    }
}
