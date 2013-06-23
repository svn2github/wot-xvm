import wot.Minimap.model.iconTracker.*;
import wot.Minimap.*;
import wot.Minimap.model.externalProxy.*;
import wot.Minimap.view.*;
import wot.Minimap.model.mapSize.MapSizeModel;

class wot.Minimap.Features
{
    private static var _instance:Features;
    
    private static var MAP_BORDER_SIZE_INDEX:Number = 0;
    
    private var markerScaling:MarkerScaling;
    private var zoom:Zoom;
    private var mapSizeLabel:MapSizeLabel

    /** Defines lost enemy positions */
    private var autoUpdate:AutoUpdate;
    /** Places and removes lost enemy positions on minimap */
    private var lostMarkers:LostMarkers;
    
    public static function get instance():Features
    {
        if (!_instance)
        {
            _instance = new Features();
        }
        
        return _instance;
    }
    
    /**
     * Have to be public.
     * Invoked each time minimap.scaleMarkers is called.
     */
    public function scaleMarkers():Void
    {
        if (!markerScaling)
        {
            markerScaling = new MarkerScaling();
        }
        markerScaling.scale();
    }
    
    /**
     * Have to be public.
     * Invoked each time minimap.correctSizeIndexImpl is called.
     */
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
     * 
     * Have to be public.
     * Invoked each time minimap.onEntryInited is called.
     */
    public function setCameraAlpha():Void
    {
        if (MapConfig.enabled)
        {
            var camera:MinimapEntry = IconsProxy.cameraEntry;
            camera.wrapper._alpha = MapConfig.cameraAlpha;
        }
    }
    
    public function applyMajorMods():Void
    {
        setBGMapImageAlpha();
        setPlayerIconAlpha();
        
        /** With enable switch */
        lostMarkersFeature();
        zoomFeature();
        /** And dependent on successful map size recognition */
        if (MapSizeModel.instance.getCellSide())
        {
            mapSizeFeature();
        }
    }
    
    //-- Private
    
    /**
     * Set alpha of background map image.
     * Does not affect markers
     */
    private function setBGMapImageAlpha():Void
    {
        MinimapProxy.wrapper.backgrnd._alpha = MapConfig.mapBackgroundImageAlpha;
    }
    
    /**
     * Setup alpha for icon of player himself.
     * Looks like white arrow.
     * Does not affect attached shapes.
     * TODO: check when swithing in spec mode
     */
    private function setPlayerIconAlpha():Void
    {
        var selfIcon:MinimapEntry = IconsProxy.selfEntry;
        selfIcon.wrapper.selfIcon._alpha = MapConfig.selfIconAlpha;
    }
    
    private function lostMarkersFeature():Void
    {
        if (MapConfig.lostEnemyEnabled)
        {
            /**
             * Defines lost enemy units and
             * sends event on lost units change.
             */
            autoUpdate = new AutoUpdate();
            lostMarkers = new LostMarkers();
        }
    }
    
    private function zoomFeature():Void
    {
        if (MapConfig.zoomEnabled)
        {
            zoom = new Zoom();
        }
    }
    
    private function mapSizeFeature():Void
    {
        /** Draw map size at map corner */
        if (MapConfig.mapSizeLabelEnabled)
        {
            mapSizeLabel = new MapSizeLabel();
        }
    }
}
