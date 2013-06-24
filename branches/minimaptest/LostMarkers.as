import com.xvm.GlobalEventDispatcher;
import wot.Minimap.dataTypes.Icon;
import wot.Minimap.MinimapEvent;
import wot.Minimap.view.LabelsContainer;

class wot.Minimap.LostMarkers
{
    private var lostMarkersTracking:Array;

    public function LostMarkers()
    {
        GlobalEventDispatcher.addEventListener(MinimapEvent.LOST_PLAYERS_UPDATE, this, onLost);
        lostMarkersTracking = [];
    }

    // -- Private

    private function onLost(event:MinimapEvent):Void
    {
        /** No optimization needed. Performance is acceptable. */
        removeAllLabels();
        createAllLabels(Array(event.payload)); /** Array of lost players by UnitPositionTracking */
    }

    private function removeAllLabels():Void
    {
        for (var i in lostMarkersTracking)
        {
            var labelMc:MovieClip = lostMarkersTracking[i];
            labelMc.removeMovieClip();
        }
    }

    private function createAllLabels(lost:Array):Void
    {
        /** Find UIDs that present in lost but are absent in labels */
        for (var i in lost)
        {
            var lostGuy:Icon = lost[i];
            var labelMc:MovieClip = labelsContainer.createLabel(
                lostGuy.pos,
                lostGuy.uid,
                wot.Minimap.MinimapEntry.MINIMAP_ENTRY_NAME_LOST,
                lostGuy.vehicleClass
            );

            /**
             * Pointer to its address is tracked to handle proper remove
             * and to avoid unnecessary new identical TextField creation.
             * 
             * TODO: tracking below may be deleted
             * after labelsContainer auto remove routine?
             */
            lostMarkersTracking.push(labelMc);
        }
    }
    
    private function get labelsContainer():LabelsContainer
    {
        return LabelsContainer.instance;
    }
}
