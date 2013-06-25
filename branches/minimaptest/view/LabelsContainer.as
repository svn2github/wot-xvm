import com.xvm.GlobalEventDispatcher;
import flash.geom.Point;
import wot.Minimap.MinimapEvent;
import wot.Minimap.MinimapProxy;
import wot.Minimap.view.LabelAppend;
import wot.Minimap.dataTypes.Icon;

class wot.Minimap.view.LabelsContainer
{
    private static var _instance:LabelsContainer;
    
    private static var CONTAINER_NAME:String = "labelsContainer";
    private static var LABEL_PREFIX:String = "lost";
    
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
    
    public function recreateLabel(pos:Point, uid:Number, entryName:String, vehicleClass:String):MovieClip
    {
        removeLabel(uid);
        
        return createLabel(pos, uid, entryName, vehicleClass);
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
    
    private function removeLabel(uid:Number):Void
    {
        var label:MovieClip = holderMc[LABEL_PREFIX + uid];
        var tf:TextField = label[LabelAppend.TEXT_FIELD_PREFIX];
        tf.removeTextField();
        label.removeMovieClip();
    }
    
    private function onLost(event:MinimapEvent):Void
    {
        var lost:Array = event.payload.newLost;
        for (var i in lost)
        {
            var lostGuy:Icon = lost[i];
            recreateLabel(
                lostGuy.pos,
                lostGuy.uid,
                wot.Minimap.MinimapEntry.MINIMAP_ENTRY_NAME_LOST,
                lostGuy.vehicleClass
            );
        }
    }
}
