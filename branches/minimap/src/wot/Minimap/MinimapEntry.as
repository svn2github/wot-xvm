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
    public var actualUid:Number;
    
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
        Logger.add("------ me.lightPlayer(" + visibility + ")");
        //Logger.addObject(_root, "_root", 2)
        actualUid = _root.minimap.syncTestUid;
        Logger.add("Sync! actualUid = " + actualUid );
    }
}
