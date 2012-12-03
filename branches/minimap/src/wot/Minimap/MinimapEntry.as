import wot.Minimap.model.PlayersPanelProxy;

/**
 * MinimapEntry represent individual object on map.
 * One tank icon, base capture point, starting point or player himself.
 * 
 * @author ilitvinov87@gmail.com
 */

class wot.Minimap.MinimapEntry extends net.wargaming.ingame.MinimapEntry
{
    /**
     * Subject of PlayersPanel <-> Minimap syncronization.
     * Syncronized during light delegate event.
     */
    public var uid:Number;
    
    function setDead(isPermanent)
    {
        // If MinimapConfig.enabled
        /** Does not work. No idea why */
        //Logger.add("- MinimapEntry.setDead(" + MapConfig.isDeadPermanent + ")");
        //MapConfig.isDeadPermanent
        //Logger.addObject(_root, "_root", 2);
        //super.setDead(MapConfig.isDeadPermanent);
    }
    
    function lightPlayer(visibility)
    {
        uid = _root.minimap.sync.getTestUid();
        
        appendText(defineText());
    }
    
    private function defineText():String
    {
        var player:Object = PlayersPanelProxy.getPlayerInfo(uid);
        
        var text:String = "<font face='Verdana' size='6' color='#FF9999'><b>" + player.level + "<b> <i>" + player.vehicle + "</i></font>";
        
        return text;
    }
    
    private function appendText(htmlText:String):Void
    {
        var textField:TextField = markMC.createTextField("textField", 1, 0, 0, 90, 14);
        textField.antiAliasType = "advanced";
        textField.html = true;
        textField.htmlText = htmlText;
    }
}
