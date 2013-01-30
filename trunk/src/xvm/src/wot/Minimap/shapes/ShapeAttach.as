import wot.utils.Logger;
import wot.Minimap.model.externalProxy.IconsProxy;

/**
 * Handles circles and lines scaling aspect.
 * Defines icon to attach to.
 */

class wot.Minimap.shapes.ShapeAttach
{
    private var MAP_SIZE_IN_POINTS:Number = 211; /** Internal MoviecLip minimap size in points without scaling */
    
    private var metersPerPoint:Number;
    private var self:Object; // :MinimapEntry
        
    public function ShapeAttach(mapSizeInMeters:Number) 
    {
        /**
         * Get oneself icon.
         * Used as a center of circles.
         * Will carry attached circles with itself automatically.
         */
        self = IconsProxy.getSelf();
        
        metersPerPoint = (MAP_SIZE_IN_POINTS / mapSizeInMeters) / self._xscale * 100;
    }
}
