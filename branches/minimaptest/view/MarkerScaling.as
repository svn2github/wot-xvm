import wot.Minimap.MinimapProxy;
import wot.Minimap.model.externalProxy.IconsProxy;
import wot.Minimap.MinimapEntry;

class wot.Minimap.view.MarkerScaling
{
    private static var STATIC_DECALS_NAME:String = "base";
    
    public function MarkerScaling() 
    {
        
    }
    
    public function scale(percent:Number):Void
    {
        MinimapProxy.base.scaleMarkers(percent);
        revertBasesIconSize(percent);
        rescaleAttachments();
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
