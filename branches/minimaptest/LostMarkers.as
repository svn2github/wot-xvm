import com.xvm.Logger;
import com.xvm.GlobalEventDispatcher;
import wot.Minimap.dataTypes.Icon;
import wot.Minimap.MinimapEvent;
import wot.Minimap.view.LabelsContainer;

class wot.Minimap.LostMarkers
{
    public function LostMarkers()
    {
        GlobalEventDispatcher.addEventListener(MinimapEvent.LOST_PLAYERS_UPDATE, this, onLost);
    }

    // -- Private

    private function onLost(event:MinimapEvent):Void
    {
        var lost:Array = event.payload.newLost;
        Logger.add("");
        Logger.addObject(lost, "lost", 2);
        //Logger.addObject(found, "found", 2);
        createLabels(lost);
        //removeLabels(found);
    }

    private function createLabels(lost:Array):Void
    {
        for (var i in lost)
        {
            var lostGuy:Icon = lost[i];
            labelsContainer.recreateLabel(
                lostGuy.pos,
                lostGuy.uid,
                wot.Minimap.MinimapEntry.MINIMAP_ENTRY_NAME_LOST,
                lostGuy.vehicleClass
            );
            Logger.add("+ " + lostGuy.uid);
        }
    }
    
    private function removeLabels(found:Array):Void
    {
        for (var i in found)
        {
            var foundGuy:Icon = found[i];
            labelsContainer.removeLabel(foundGuy.uid);
            Logger.add("- " + foundGuy.uid);
        }
    }
    
    private function get labelsContainer():LabelsContainer
    {
        return LabelsContainer.instance;
    }
}
