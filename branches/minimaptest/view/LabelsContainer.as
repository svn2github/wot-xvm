import flash.geom.Point;
import wot.Minimap.MinimapProxy;

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
    
    public function createLabel(pos:Point):MovieClip
    {
        var depth:Number = holder.getNextHighestDepth();
        var label:MovieClip = holder.createEmptyMovieClip("lostLabel" + depth, depth);
        /** Set lost position */
        label._x = pos.x;
        label._y = pos.y;
        
        return label;
    }
    
    //-- Private
    
    private function get icons():MovieClip
    {
        return MinimapProxy.wrapper.icons;
    }
}
