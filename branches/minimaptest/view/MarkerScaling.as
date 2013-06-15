import wot.Minimap.MinimapProxy;
import wot.Minimap.model.externalProxy.IconsProxy;
import wot.Minimap.MinimapEntry;
import wot.Minimap.model.externalProxy.MapConfig;
import com.xvm.Logger;

class wot.Minimap.view.MarkerScaling
{
    private static var STATIC_DECALS_NAME:String = "base";
    private static var ORIGINAL_MARKERS_SCALING:Number = 0.5;
    
    public function MarkerScaling() 
    {
        scale();
    }
    
    public function scale():Void
    {
        if (MapConfig.enabled)
        {
            xvmScale();
        }
        else
        {
            MinimapProxy.base.scaleMarkers(ORIGINAL_MARKERS_SCALING);
        }
    }
    
    // -- Private
    
    private function xvmScale():Void
    {
        /**
         * ###########################################
         * TODO: omit when enabled: false
         * #########
         */
        
        /**
         * Original WG scaling behaviour
         * plus static entries omitting.
         * 
         * icons._xscale is changed by minimap resize
         */
        var scaleFactor:Number = 10000 / icons._xscale;
        scaleFactor = scaleFactor + (100 - scaleFactor);
        
        var moddedScale:Number = scaleFactor * MapConfig.iconScale;
        var originalScale:Number = scaleFactor * ORIGINAL_MARKERS_SCALING;
        
        for (var i in icons)
        {
            if (icons[i] instanceof net.wargaming.ingame.MinimapEntry)
            {
                var entry = icons[i];
                if (entry._currentframe != 5 && entry._currentframe != 6)
                {
                    if (entry.entryName == STATIC_DECALS_NAME)
                    {
                        /**
                         * Capture bases and respawn point
                         * should not be alternatively scaled.
                         */
                        entry._xscale = entry._yscale = originalScale;
                    }
                    else
                    {
                        entry._xscale = entry._yscale = moddedScale;
                    }
                }
            }
        }
        
        rescaleAttachments();
    }
    
    private function rescaleAttachments():Void
    {
        /**
         * WTF?
         * ########
         * TODO: Clean up
         */
        var entries:Array = IconsProxy.allEntries;
        var len:Number = entries.length;
        for (var i:Number = 0; i < len; ++i)
        {
            var entry:MinimapEntry = entries[i];
            entry.rescaleAttachments();
        }
        /** See MinimapEntry.rescaleAttachments() */
    }
    
    private function get icons():MovieClip
    {
        return MinimapProxy.wrapper.icons;
    }
}
