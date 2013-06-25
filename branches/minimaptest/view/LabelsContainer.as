import com.xvm.GlobalEventDispatcher;
import flash.geom.Point;
import wot.Minimap.dataTypes.Icon;
import wot.Minimap.MinimapEvent;
import wot.Minimap.MinimapProxy;
import wot.Minimap.view.LabelAppend;

class wot.Minimap.view.LabelsContainer
{
    private static var _instance:LabelsContainer;
    
    private static var CONTAINER_NAME:String = "labelsContainer";
    private static var LABEL_PREFIX:String = "label";
    
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
    
    public function getLabel(pos:Point, uid:Number, entryName:String, vehicleClass:String):MovieClip
    {
        if (!holderMc[LABEL_PREFIX + uid])
        {
            return createLabel(pos, uid, entryName, vehicleClass);
        }
        
        return holderMc[LABEL_PREFIX + uid];
    }
    
    // -- Private
    
    private function createLabel(pos:Point, uid:Number, entryName:String, vehicleClass:String):MovieClip
    {
        var depth:Number = holderMc.getNextHighestDepth();
        var labelMc:MovieClip = holderMc.createEmptyMovieClip(LABEL_PREFIX + uid, depth);
        
        labelMc._x = pos.x;
        labelMc._y = pos.y;
        
        LabelAppend.appendTextField(labelMc, uid, entryName, vehicleClass);
        
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
                lostGuy.pos,
                lostGuy.uid,
                wot.Minimap.MinimapEntry.MINIMAP_ENTRY_NAME_LOST,
                lostGuy.vehicleClass
            );
        }
    }
}
