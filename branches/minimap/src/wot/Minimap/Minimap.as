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

import wot.utils.Utils;
import wot.utils.Logger;
import wot.Minimap.model.MapConfig;
import wot.utils.GlobalEventDispatcher;
import wot.Minimap.MinimapEvent

class wot.Minimap.Minimap extends net.wargaming.ingame.Minimap
{
    private var isMinimapReady:Boolean = false;
    private var isAllyPlayersPanelReady:Boolean = false;
    private var isEnemyPlayersPanelReady:Boolean = false;
    
    private var allAllyUids:Array;
    private var allEnemyUids:Array;
    
    /**
     * Testing uid during delegate event lighting cycle stored here.
     * Is set before light delegate event.
     * In case individual icon:MinimapEntry captures light event
     * this var is considered actula uid of icon:MinimapEntry.
     */
    public var syncTestUid:Number;
    
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
    
    /*function draw()
    {
        super.draw();
        Logger.add("Minimap.draw");
    }
    
    function updateContent()
    {
        super.updateContent();
        Logger.add("Minimap.updateContent");
    }
    
    function updateContentBeforeDraw(leftBorderSpace, topBorderSpace, rightBorderSpace, bottomBorderSpace)
    {
        super.updateContentBeforeDraw(leftBorderSpace, topBorderSpace, rightBorderSpace, bottomBorderSpace);
        Logger.add("Minimap.updateContentBeforeDraw");
    }
    
    function onEntryInited()
    {
        super.onEntryInited();
        Logger.add("Minimap.onEntryInited");
    }*/
    
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
        
        if (isMinimapReady && isAllyPlayersPanelReady && isEnemyPlayersPanelReady)
            battleStartUpdate();
    }
    
    private function battleStartUpdate():Void
    {
        /**
         * TODO: Append random sequenct at first for test purposes.
         */
        
        //_root.leftPanel.
        //Logger.addObject(_root.leftPanel.m_list, "--- mm._root.leftPanel.m_list", 3)
        updateUser(participantsData[1].uid);
        updateUser(participantsData[3].uid);
        updateUser(participantsData[5].uid);
                
        // Individual sync
        /** All uid-s from Players panel minus Assigned uids in icons*/
        //var unassignedEnemyUids:Array = getUnassignedUids(_level0.rightPanel);
        /*while (!isMinimapSynced())
        {
            Logger.add("-- Minimap !isMinimapSynced()");
            var uid:Number = Number(unassignedUids.pop());
            invokeUnusedUidTouch(uid);
            assignUidToTouchRecepient(uid);
        }*/
    }
    
    private function appendText():Void
    {
        var clips:Array = Utils.getChildrenOf(icons);
        for (var i:Number = 0 ; i < clips.length; i++)
            if (clips[i].hasOwnProperty("vehicleClass") && !clips[i].uid)
            {
                //Logger.add("-- inside LOOP");
                var clipTf:TextField = clips[i].markMC.createTextField("clipTf", 1, 0, 0, 20, 14);
                clipTf.text = "123";
                var format:TextFormat = new TextFormat();
                format.color = 0xFFFFFF;
                format.size = 8;
                //tf.font = "Arial"; $FieldFont
                clipTf.setTextFormat(format);
            }
    }
    
    /** Is there any unidentified tank icons on minimap */
    private function isMinimapSynced():Boolean
    {
        var clips:Array = Utils.getChildrenOf(icons);
        var tanks:Array = [];
        
        for (var i:Number = 0 ; i < clips.length; i++)
        {
            if (clips[i].entryName == "ally" || clips[i].entryName == "enemy")
            {
                if (!clips[i].uid)
                    return false;
            }
        }
        
        return true;
    }
    
    private function updateUser(uid:Number):Void
    {
        syncTestUid = uid;
        touchUser(uid);
    }
    
    private function touchUser(uid:Number):Void
    {
        //Logger.addObject(participantsData, "participantsData", 3);
        //Logger.add("participantsData.length = " + participantsData.length);
        for (var i:Number = 0; i < participantsData.length; i++)
        {
            if (participantsData[i].uid == uid)
            {
                /**
                 * Delegate call purpose is altered to extend Minimap functionality.
                 * Lighting event is used at Minimap to define icon-user relation.
                 */
                gfx.io.GameDelegate.call("minimap.lightPlayer", [participantsData[i].vehId, true]);
                Logger.add("-------- PP touch invoked for uid:" + uid + " vehID:" + participantsData[i].vehId + " i:" + i);
                break;
            }
        }
    }
    
    private function get participantsData():Array
    {
        return _root.leftPanel.m_list._dataProvider;
    }
}
