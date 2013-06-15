import wot.Minimap.MinimapProxy;
import wot.Minimap.model.externalProxy.IconsProxy;
import wot.Minimap.MinimapEntry;
import wot.Minimap.model.externalProxy.MapConfig;
import com.xvm.Logger;

class wot.Minimap.view.MarkerScaling
{
    private static var STATIC_DECALS_NAME:String = "base";
    private static var ORIGINAL_MARKERS_SCALING_FACTOR:Number = 0.5;
    
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
            /** Original WG scaling behaviour */
            MinimapProxy.base.scaleMarkers(ORIGINAL_MARKERS_SCALING_FACTOR);
        }
    }
    
    // -- Private
    
    private function xvmScale():Void
    {
        /**
         * Original WG scaling behaviour
         * plus static entries omitting.
         * 
         * icons._xscale is changed by minimap resize
         */
        var scaleFactor:Number = 10000 / icons._xscale;
        scaleFactor = scaleFactor + (100 - scaleFactor);
        
        var moddedScale:Number = scaleFactor * MapConfig.iconScale;
        var originalScale:Number = scaleFactor * ORIGINAL_MARKERS_SCALING_FACTOR;
        
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
        var entries:Array = IconsProxy.allEntries;
        for (var i in entries)
        {
            var entry:MinimapEntry = entries[i];
            entry.rescaleAttachments();
        }
    }
    
    private function get icons():MovieClip
    {
        return MinimapProxy.wrapper.icons;
    }
}
