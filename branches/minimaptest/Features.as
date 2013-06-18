import wot.Minimap.view.MarkerScaling;
import com.xvm.Logger;
import wot.Minimap.view.Zoom;

class wot.Minimap.Features
{
    private static var instanceField:Features;
    
    private static var MAP_BORDER_SIZE_INDEX:Number = 0;
    
    private var markerScaling:MarkerScaling;
    private var zoom:Zoom;
    
    public static function get instance():Features
    {
        if (!instanceField)
        {
            instanceField = new Features();
        }
        
        return instanceField;
    }
    
    public function scaleMarkers():Void
    {
        if (!markerScaling)
        {
            markerScaling = new MarkerScaling();
        }
        markerScaling.scale();
    }
    
    public function disableMapWindowSizeLimitation(sizeIndex:Number):Number
    {
        /** base.correctSizeIndex code is omitted to drop limits */

        /** Do not allow size less than map border */
        if (sizeIndex < MAP_BORDER_SIZE_INDEX)
        {
            sizeIndex = MAP_BORDER_SIZE_INDEX;
        }
        
        return sizeIndex;
    }
    
    public function applyMajorMods():Void
    {
        zoom = new Zoom();
    }
}
