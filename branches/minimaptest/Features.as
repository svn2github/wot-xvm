import wot.Minimap.view.MarkerScaling;

class wot.Minimap.Features
{
    private var markerScaling:MarkerScaling;
    
    public function Features() 
    {
        markerScaling = new MarkerScaling();
    }
    
    public function scaleMarkersImpl():Void
    {
        markerScaling.scale();
    }
    
    public function applyMod():Void
    {
        
    }
}
