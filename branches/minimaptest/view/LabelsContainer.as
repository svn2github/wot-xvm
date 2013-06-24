import flash.geom.Point;
import wot.Minimap.MinimapProxy;
import wot.Minimap.view.LabelAppend;

class wot.Minimap.view.LabelsContainer
{
    private static var _instance:LabelsContainer;
    
    public var holder:MovieClip;
    
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
        holder = icons.createEmptyMovieClip("labelsContainer", wot.Minimap.Minimap.LABELS);
    }
    
    public function createLabel(pos:Point, uid:Number, entryName:String, vehicleClass:String):MovieClip
    {
        var depth:Number = holder.getNextHighestDepth();
        var labelMc:MovieClip = holder.createEmptyMovieClip("label" + depth, depth);
        
        labelMc._x = pos.x;
        labelMc._y = pos.y;
        
        LabelAppend.appendTextField(labelMc, uid, entryName, vehicleClass);
        
        // TODO: move label management here
        return labelMc;
    }
    
    //-- Private
    
    private function get icons():MovieClip
    {
        return MinimapProxy.wrapper.icons;
    }
}