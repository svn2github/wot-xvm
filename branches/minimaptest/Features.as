import wot.Minimap.view.MarkerScaling;
import com.xvm.Logger;

class wot.Minimap.Features
{
    private var markerScaling:MarkerScaling;
    
    public function Features() 
    {
        markerScaling = new MarkerScaling();
    }
    
    public function scaleMarkers():Void
    {
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
    
    public function applyMod():Void
    {
        
    }
}
