import wot.Minimap.view.MarkerScaling;
import com.xvm.Logger;

class wot.Minimap.Features
{
    private static var instanceField:Features;
    
    private var markerScaling:MarkerScaling;
    
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
    
    public function disableMapWindowSizeRestriction(sizeIndex:Number):Number
    {
        Logger.add("wot.Minimap.Features sizeIndex " + sizeIndex);
        
        /** base.correctSizeIndex code is omitted to drop limits */

        /** Do not allow size less than map border */
        if (sizeIndex < 0)
        {
            sizeIndex = 0;
        }
        
        return sizeIndex;
    }
}
