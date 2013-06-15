import wot.Minimap.view.MarkerScaling;

class wot.Minimap.Features
{
    private var markerScaling:MarkerScaling;
    
    public function Features() 
    {
        markerScaling = new MarkerScaling();
    }
    
    public function scaleMarkersImpl(percent):Void
    {
        markerScaling.scale(percent);
    }
    
    public function applyMod():Void
    {
        
    }
}
