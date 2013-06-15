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
    
    public function scale(factor:Number):Void
    {
        MinimapProxy.base.scaleMarkers(factor);
        revertStaticItemsSize(getStaticItems());
        rescaleAttachments();
    }
    
    // -- Private
    
    /**
     * Respawn or capture point items
     */
    private function getStaticItems():Array
    {
        var statics:Array = [];
        var icons = MinimapProxy.wrapper.icons;
        for (var i in icons)
        {
            var icon = icons[i];
            if (icon.entryName == STATIC_DECALS_NAME)
            {
                statics.push(icon);
            }
        }
        
        return statics;
    }
    
    private function revertStaticItemsSize(statics:Array):Void
    {
        /**
         * Revert capture base and
         * start position icons size
         * to original size.
         */
        for (var i in statics)
        {
            var base = statics[i];
            base._xscale = base._yscale = 100;
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
