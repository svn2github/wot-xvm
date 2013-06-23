import wot.Minimap.dataTypes.Icon;
import com.xvm.GlobalEventDispatcher;
import wot.Minimap.MinimapEvent;
import wot.Minimap.view.LabelAppend;
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
            var tf:TextField = lostMarkersTracking[i];
            tf.removeTextField();
        }
    }

    private function createAllLabels(lost:Array):Void
    {
        /** Find UIDs that present in lost but are absent in labels */
        for (var i in lost)
        {
            var lostGuy:Icon = lost[i];

            var depth:Number = labelsContainer.getNextHighestDepth();
            var label:MovieClip = labelsContainer.createEmptyMovieClip("lostLabel" + depth, depth);
            /** Set lost position */
            label._x = lostGuy.pos.x;
            label._y = lostGuy.pos.y;

            /* New TextField is attached to Minimap at this moment */
            var tf:TextField = LabelAppend.append(label, lostGuy.uid, wot.Minimap.MinimapEntry.MINIMAP_ENTRY_NAME_LOST, lostGuy.vehicleClass);

            /**
             * Pointer to its address is tracked to handle proper remove
             * and to avoid unnecessary new identical TextField creation.
             */
            lostMarkersTracking.push(tf);
        }
    }
    
    private function get labelsContainer():MovieClip
    {
        return LabelsContainer.instance.holder;
    }
}
