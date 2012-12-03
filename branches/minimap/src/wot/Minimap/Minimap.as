import wot.Minimap.model.SyncModel;
import wot.utils.Logger;
import wot.utils.Utils;
import wot.Minimap.model.MapConfig;
import wot.utils.GlobalEventDispatcher;
import wot.Minimap.MinimapEvent

/**
 * Original Minimap manages all kinds size, border, drawing and clicking.
 * 
 * Minimap extends MinimapEntity.
 * 
 * Extra functionality implemented:
 * ) Level\type\nick\etc at icon on Minimap.
 *    Achieved exploiting WG highlighting feature.
 *    Original light behaviour was Ctrl + mouseOver at PlayersPanel -> icon highlight at Minimap.
 *    Feature is modded to allow PlayersPanel <-> Minimap syncronization.
 *    Any individual user linked data is now available at Minimap.
 * ) Free marker scaling adjusts tank and base icon size.
 * 
 * TODO: highlight T-50-2 etc automatically
 * 
 * @author ilitvinov87@gmail.com
 */

class wot.Minimap.Minimap extends net.wargaming.ingame.Minimap
{
    /** Used at MinimapEntry to get testUid */
    public var sync:SyncModel;
    
    private var isMinimapReady:Boolean = false;
    private var isAllyPlayersPanelReady:Boolean = false;
    private var isEnemyPlayersPanelReady:Boolean = false;
    private var loadComplete:Boolean = false;
    
    // override
    function Minimap()
    {
        Utils.TraceXvmModule("Minimap");
        super();
        
        /**
         * Setup minimap icon size.
         * Read val from config.
         * Default by WG is 0.5.
         * 
         * TODO:
         * Default at XVM config is 0.5.
         */
        Logger.add("MapConfig.iconScale = " + MapConfig.iconScale);
        if (MapConfig.enabled)
            MARKERS_SCALING = MapConfig.iconScale;
        
        GlobalEventDispatcher.addEventListener(MinimapEvent.MINIMAP_READY, this, onReady);
        GlobalEventDispatcher.addEventListener(MinimapEvent.ALLY_PLAYERS_PANEL_READY, this, onReady);
        GlobalEventDispatcher.addEventListener(MinimapEvent.ENEMY_PLAYERS_PANEL_READY, this, onReady);
        
        checkLoading();
    }
    
    // override
    function onEntryInited()
    {
        super.onEntryInited();
        
        if (sync && MapConfig.enabled)
            sync.updateIconsExtension();
    }
    
    // -- Private
    
    private function checkLoading():Void
    {
        icons.onEnterFrame = function()
        {
            if (this.MinimapEntry0)
            {
                delete this.onEnterFrame;
                GlobalEventDispatcher.dispatchEvent(new MinimapEvent(MinimapEvent.MINIMAP_READY));
            }
        }
    }
        
    private function onReady(event:MinimapEvent):Void
    {
        switch (event.type)
        {
            case MinimapEvent.MINIMAP_READY:
                isMinimapReady = true;
                break;
            case MinimapEvent.ALLY_PLAYERS_PANEL_READY:
                isAllyPlayersPanelReady = true;
                break;
            case MinimapEvent.ENEMY_PLAYERS_PANEL_READY:
                isEnemyPlayersPanelReady = true;
                break;
        }
        
        loadComplete = isMinimapReady && isAllyPlayersPanelReady && isEnemyPlayersPanelReady;
        
        if (loadComplete && MapConfig.enabled)
        {
            sync = new SyncModel();
            sync.updateIconsExtension();
        }
    }
}
