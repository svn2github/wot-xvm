import wot.Minimap.MinimapProxy;
import com.xvm.Logger;
import wot.Minimap.MinimapEntry;
import wot.Minimap.model.externalProxy.IconsProxy

/**
 * Updates label positions so they do not overlap or get out of view.
 */
class wot.Minimap.view.LabelPositionAdjusting
{
	public static var instance:LabelPositionAdjusting = new LabelPositionAdjusting();
	
	public function LabelPositionAdjusting() 
	{
		
	}
	
	public function init()
	{
		icons.onEnterFrame = function()
		{
			LabelPositionAdjusting.instance.updateAllLabelPositions();
		}
	}
	
	public function updateAllLabelPositions()
	{
		var entries:Array = IconsProxy.allEntries;
        for (var i in entries)
        {
            var entry:MovieClip = entries[i];
			
			/**
             * Seldom error workaround.
             * Wreck sometimes is placed at map center.
             */
			if (!entry.wrapper._x && !entry.wrapper._y)
                continue;
				
            entry.labelMc._x = entry.wrapper._x;
            entry.labelMc._y = entry.wrapper._y;
        }
	}
	
	private function get icons():MovieClip
    {
        return MinimapProxy.wrapper.icons;
    }
}
