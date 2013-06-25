import com.xvm.Logger;
import com.xvm.GlobalEventDispatcher;
import flash.geom.Point;
import wot.Minimap.dataTypes.Icon;
import wot.Minimap.MinimapEvent;
import wot.Minimap.MinimapProxy;
import wot.Minimap.view.LabelViewBuilder;

class wot.Minimap.view.LabelsContainer
{
    private static var _instance:LabelsContainer;
    
    private static var CONTAINER_NAME:String = "labelsContainer";
    private static var OFFMAP_COORDINATE:Number = 500;
    
    public var holderMc:MovieClip;
    
    public static function get instance():LabelsContainer
    {
        if (!_instance)
        {
            _instance = new LabelsContainer();
        }
        
        return _instance;
    }
    
    public function LabelsContainer()
    {
        var icons:MovieClip = MinimapProxy.wrapper.icons;
        holderMc = icons.createEmptyMovieClip(CONTAINER_NAME, wot.Minimap.Minimap.LABELS);
        GlobalEventDispatcher.addEventListener(MinimapEvent.TICK, this, onTimerTick);
    }
    
    public function getNormalLabel(uid:Number, entryName:String, vehicleClass:String):MovieClip
    {
        if (!holderMc[uid])
        {
            createNormalLabel(uid, entryName, vehicleClass);
        }
        else
        {
            // getLabel()
            // changeLabelViewToNormal()
        }
        
        return holderMc[uid];
    }
    
    // -- Private
    
    private function createNormalLabel(uid:Number, entryName:String, vehicleClass:String):MovieClip
    {
        var depth:Number = holderMc.getNextHighestDepth();
        var labelMc:MovieClip = holderMc.createEmptyMovieClip("" + uid, depth);
        
        /**
         * Label stays at creation point some time before first move.
         * It makes unpleasant label positioning at map center.
         * Workaround.
         */
        var offmapPoint:Point = new Point(OFFMAP_COORDINATE, OFFMAP_COORDINATE);
        labelMc._x = offmapPoint.x;
        labelMc._y = offmapPoint.y;
        
        LabelViewBuilder.createTextField(labelMc, uid, entryName, vehicleClass);
        
        return labelMc;
    }
    
    private function onTimerTick(event:MinimapEvent):Void
    {
        checkStatusForEveryLabelOwner();
    }
    
    private function checkStatusForEveryLabelOwner():Void
    {
        for (var uidStr:String in holderMc)
        {
            var uid:Number = parseInt(uidStr);
            if (uid)
            {
                /**
                 * Have to check for uid value consistency
                 * because we are iterating through MovieClip props not Array.
                 * There are four keys except movie clips named by uid:
                 * enabled, tweenFrom, tweenEnd, tweenTo.
                 * 
                 */
                checkUidStatus(uid);
            }
        }
        
        /*
         getNormalLabel(
                lostGuy.uid,
                wot.Minimap.MinimapEntry.MINIMAP_ENTRY_NAME_LOST,
                lostGuy.vehicleClass
            );*/
    }
    
    private function checkUidStatus(uid:Number):Void
    {
        Logger.add("check " + uid);
    }
}
