import com.xvm.Logger;
import com.xvm.Utils;
import wot.Minimap.MinimapEvent;
import com.xvm.GlobalEventDispatcher;
import wot.Minimap.model.externalProxy.IconsProxy;
import wot.PlayersPanel.PlayersPanelProxy;

class wot.Minimap.model.iconTracker.LostPlayers
{

    /** Keep track of previously lost players to avoid unnecessary event dispatch */
    private var lostPrev:Array;

    /** Position tracking of all enemy icons on minimap */
    private var posTrack:Array;

    public function LostPlayers(posTrack:Array)
    {
        this.posTrack = posTrack;
    }

    /**
     * Find enemy units seen atleast once but lost out of sight.
     * Theese are the candidates to mark last position at map.
     */
    public function find():Void
    {
        /** All the units not revealed at minimap */
        var hiddenUids = Utils.subtractArray(PlayersPanelProxy.enemyUids, IconsProxy.syncedUids);

        hiddenUids = filterDead(hiddenUids);

        /** Lost player are the players that has position tracked and are hidden(currently not revealed) on minimap */
        var lost:Array = [];

        for (var i in hiddenUids)
        {
            var uid:Number = hiddenUids[i];

            for (var j in posTrack)
            {
                if (posTrack[j].uid == uid) /** If this hidden uid is tracked */
                {
                    lost.push(posTrack[j]); /** This guy is lost! */
                    break;
                }
            }
        }

        /** Keep track of previously lost players to avoid unnecessary event dispatch */
        if (lostPrev == undefined)
            lostPrev = lost;

        if (!areLostListsEqual(lostPrev, lost))
        {
            var newLost:Array = getTrackingOnesideDiff(lost, lostPrev);
            var payload:Object = { newLost: newLost };
            
            GlobalEventDispatcher.dispatchEvent(new MinimapEvent(MinimapEvent.LOST_PLAYERS_UPDATE, payload));
            
            lostPrev = lost;
        }
    }

    // -- Private
    
    private function getTrackingOnesideDiff(a:Array, b:Array):Array
    {
        /** are minuend (a) − subtrahend (b) = difference */
        var minuend:Array = a.concat();
        var subtrahend:Array = b.concat();
        
        for (var i in minuend)
        {
            for (var j in subtrahend)
            {
                if (minuend[i] == subtrahend[j])
                {
                    /**
                     * Common uid found.
                     * Mark it as irrelevat.
                     */
                    minuend[i] = null;
                    break;
                }
            }
        }
        
        var diff:Array = [];
        for (var i in minuend)
        {
            if (minuend[i])
            {
                diff.push(minuend[i]);
            }
        }
        
        return diff;
    }

    /** We do not need to count dead players as lost on minimap */
    private function filterDead(all:Array):Array
    {
        var alive:Array = [];
        for (var i in all)
        {
            if (!PlayersPanelProxy.isDead(all[i]))
            {
                alive.push(all[i]);
            }
        }

        return alive;
    }

    function areLostListsEqual(a:Array, b:Array):Boolean
    {
        if (a.length != b.length)
        {
            return false;
        }
        var len:Number = a.length;
        for (var i:Number = 0; i < len; i++)
        {
            if (a[i].uid !== b[i].uid)
            {
                return false;
            }
        }
        return true;
    }
}
