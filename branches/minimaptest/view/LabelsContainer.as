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
    private static var LABEL_PREFIX:String = "label";
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
        GlobalEventDispatcher.addEventListener(MinimapEvent.LOST_PLAYERS_UPDATE, this, onLost);
    }
    
    public function getLabel(uid:Number, entryName:String, vehicleClass:String):MovieClip
    {
        if (!holderMc[LABEL_PREFIX + uid])
        {
            return createLabel(uid, entryName, vehicleClass);
        }
        else
        {
            // changeViewToNormal()
        }
        
        return holderMc[LABEL_PREFIX + uid];
    }
    
    // -- Private
    
    private function createLabel(uid:Number, entryName:String, vehicleClass:String):MovieClip
    {
        var depth:Number = holderMc.getNextHighestDepth();
        var labelMc:MovieClip = holderMc.createEmptyMovieClip(LABEL_PREFIX + uid, depth);
        
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
    
    private function onLost(event:MinimapEvent):Void
    {
        return;
        //############
        var lost:Array = event.payload.newLost;
        for (var i in lost)
        {
            var lostGuy:Icon = lost[i];
            
            /**
             * recreate() not just create().
             * Dont know why.
             */
            getLabel(
                lostGuy.uid,
                wot.Minimap.MinimapEntry.MINIMAP_ENTRY_NAME_LOST,
                lostGuy.vehicleClass
            );
        }
    }
}
