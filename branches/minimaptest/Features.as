import wot.Minimap.*;
import wot.Minimap.model.externalProxy.*;
import wot.Minimap.view.*;

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
    
    /**
     * Setup alpha for camera of player himself.
     * Looks like green highlighted corner.
     * TODO: Detach camera line
     */
    public function setCameraAlpha():Void
    {
        var camera:MinimapEntry = IconsProxy.cameraEntry;
        camera.wrapper._alpha = MapConfig.cameraAlpha;
    }
    
    /**
     * Set alpha of background map image.
     * Does not affect markers
     */
    public function setBGMapImageAlpha():Void
    {
        MinimapProxy.wrapper.backgrnd._alpha = MapConfig.mapBackgroundImageAlpha;
    }
    
    /**
     * Setup alpha for icon of player himself.
     * Looks like white arrow.
     * Does not affect attached shapes.
     */
    public function setPlayerIconAlpha():Void
    {
        var selfIcon:MinimapEntry = IconsProxy.selfEntry;
        selfIcon.wrapper.selfIcon._alpha = MapConfig.selfIconAlpha;
    }
    
    public function applyMajorMods():Void
    {
        zoom = new Zoom();
    }
}
