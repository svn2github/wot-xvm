/**
 * Original Minimap manages all kinds size, border, drawing and clicking.
 * 
 * Minimap extends MinimapEntity.
 * 
 * Extra functionality:
 * ) Level\type\nick or anything else at icon on Minimap.
 *    Achieved using highlighting feature.
 *    Original light behaviour was Ctrl + mouseOver at PlayersPanel -> icon highlight at Minimap.
 *    Feature is modded to allow PlayersPanel <-> Minimap syncronization.
 *    Any individual user linked data is now available at Minimap.
 * ) Free marker scaling adjusts tank and base icon size.
 * 
 * TODO: highlight T-50-2 etc automatically
 * 
 * @author ilitvinov87@gmail.com
 */

import wot.Minimap.model.PlayersModel;
import wot.utils.Logger;
import wot.utils.Utils;
import wot.Minimap.model.MapConfig;
import wot.utils.GlobalEventDispatcher;
import wot.Minimap.MinimapEvent

class wot.Minimap.Minimap extends net.wargaming.ingame.Minimap
{
    private var isMinimapReady:Boolean = false;
    private var isAllyPlayersPanelReady:Boolean = false;
    private var isEnemyPlayersPanelReady:Boolean = false;
    private var loadComplete:Boolean = false;
    
    /**
     * Testing uid during delegate event lighting cycle stored here.
     * Is set before light delegate event.
     * In case individual icon:MinimapEntry captures light event
     * this var is considered actula uid of icon:MinimapEntry.
     */
    public var syncTestUid:Number;
    
    private var players:PlayersModel;
    
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
        
        if (loadComplete)
            updateIconsExtension();
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
        
        if (loadComplete)
        {
            players = new PlayersModel(icons);
            updateIconsExtension();
        }
    }
    
    private function updateIconsExtension():Void
    {
        var unassignedUids:Array = players.getUnassignedUids();
        Logger.add("--- mm.unassignedUids.length " + unassignedUids.length);
        /**
         * TODO: Optimizations are possible to avoid unnecessary gfx.io.GameDelegate.call.
         * 
         * - Filter ally/type/alive -> much less unassigned to test.
         * 
         * - Exclusion. Only one alive enemy of type heavy in PlayersPanel
         *   means no other alive enemy of type heavy present on Minimap.
         *   Exact match without GameDelegate call.
         * 
         * - With each successful touch getUnassignedUids has to be recalculated
         *   to work with exclusion for its best results.
         *   By other words - remove successfully synced uid from unassignedUids and reevaluate Exclusion..
         */
        
        for (var i in unassignedUids)
        {
            /**
             * TODO: Optimization is possible to avoid unnecessary gfx.io.GameDelegate.call.
             * 
             * - Stop touching if everybody on Minimap is in sync.
             *   Keep count of unsynced icons?
             */
            trySync(unassignedUids[i]);
        }
    }
    
    private function trySync(uid:Number):Void
    {
        syncTestUid = uid;
        syncTouchPlayer(uid);
    }
    
    /** Touched players MinimapEntry receives event */
    private function syncTouchPlayer(uid:Number):Void
    {
        /**
         * Delegate call purpose is altered to extend Minimap functionality.
         * Lighting event is used at Minimap to define icon-user relation.
         */
        gfx.io.GameDelegate.call("minimap.lightPlayer", [players.getVehId(uid), true]);
    }
}
