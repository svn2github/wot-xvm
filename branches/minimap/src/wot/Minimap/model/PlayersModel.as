import wot.utils.Utils;

/**
 * Class defines current unassigned uid-s to Minimap's icon
 * based on data from player lists at PlayersPanel
 * and Minimap.icons.
 * 
 * Icon at Minimap with without uid shows no extra data like type/level/etc
 * and is candidate for syncronization and following extra data attach.
 */
import wot.utils.Logger;

class wot.Minimap.model.PlayersModel
{
    private var allUids:Array;
    private var icons:MovieClip;
    
    public function PlayersModel(icons)
    {
        this.icons = icons;
        allUids = getAllUids();
    }
        
    /** Is there any unidentified tank icons on minimap */
    public function getUnassignedUids():Array
    {
        return Utils.subtractArray(allUids.concat(), getAssignedUids());
    }
    
    public function getVehId(uid):Number
    {
        for (var i:Number = 0; i < allyPlayers.length; i++)
            if (allyPlayers[i].uid == uid)
                return allyPlayers[i].vehId;
        
        for (var i:Number = 0; i < enemyPlayers.length; i++)
            if (enemyPlayers[i].uid == uid)
                return enemyPlayers[i].vehId;
        
        return null;
    }
    
    // -- Private
    
    /** Get currently assigned values at icons */
    private function getAssignedUids():Array
    {
        var minimapEntries:Array = Utils.getChildrenOf(icons, false);
        
        /** Bases does not have uid. Do player himself has? 
            var tanks:Array = separateTanks(minimapEntries) */
        
        var assigned:Array = [];
        //Logger.addObject(minimapEntries,  "mm.pm.minimapEntries", 3)
        for (var i:Number = 0; i < minimapEntries.length; i++)
        {
            if (minimapEntries[i].uid)
                assigned.push(minimapEntries[i].uid);
        }
        //Logger.addObject(assigned, "mm.pm.assigned", 3);
        return assigned;
    }
    
    private function getAllUids(team:String):Array
    {
        var all:Array = [];
        for (var i:Number = 0; i < allyPlayers.length; i++)
            all.push(allyPlayers[i].uid);
            
        for (var i:Number = 0; i < enemyPlayers.length; i++)
            all.push(enemyPlayers[i].uid);

        return all;
    }
    
    private function get allyPlayers():Array
    {
        return _root.leftPanel.m_list._dataProvider;
    }
    
    private function get enemyPlayers():Array
    {
        return _root.rightPanel.m_list._dataProvider;
    }
}