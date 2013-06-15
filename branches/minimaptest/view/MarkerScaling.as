import wot.Minimap.MinimapProxy;
import wot.Minimap.model.externalProxy.IconsProxy;
import wot.Minimap.MinimapEntry;
import wot.Minimap.model.externalProxy.MapConfig;
import com.xvm.Logger;

class wot.Minimap.view.MarkerScaling
{
    private static var STATIC_DECALS_NAME:String = "base";
    
    public function MarkerScaling() 
    {
        /**
         * Setup minimap icon size.
         * Read value from config.
         * Default by WG is 0.5.
         * Default by XVM is 1.
         */
        net.wargaming.ingame.Minimap.MARKERS_SCALING = MapConfig.iconScale;
        scale(net.wargaming.ingame.Minimap.MARKERS_SCALING);
    }
    
    public function scale(percent:Number):Void
    {
        MinimapProxy.base.scaleMarkers(percent);
        revertBasesIconSize(percent);
        rescaleAttachments();
        
        // ##########
        Logger.add("############# scale(" + percent);
    }
    
    private function revertBasesIconSize(percent:Number):Void
    {
        /**
         * Revert capture base and
         * start position icons size
         * to original size.
         */
        var icons = MinimapProxy.wrapper.icons;
        for (var i in icons)
        {
            var icon = icons[i];
            if (icon.entryName == STATIC_DECALS_NAME)
                icon._xscale = icon._yscale = 100;
        }
    }
    
    private function rescaleAttachments():Void
    {
        var entries:Array = IconsProxy.allEntries;
        var len:Number = entries.length;
        for (var i:Number = 0; i < len; ++i)
        {
            var entry:MinimapEntry = entries[i];
            entry.rescaleAttachments();
        }
        /** See MinimapEntry.rescaleAttachments() */
    }
}
