import com.xvm.*;
import wot.Minimap.*;
import wot.PlayersPanel.*;
import wot.Minimap.MinimapProxy;
import com.xvm.Logger;
import wot.Minimap.MinimapEntry;
import wot.Minimap.model.externalProxy.IconsProxy
import wot.Minimap.view.labelsPosAdjust.LabelOffsetUpdate;
import wot.Minimap.view.labelsPosAdjust.Util;

/**
 * Updates label positions so they do not overlap or get out of view.
 */
class wot.Minimap.view.labelsPosAdjust.LabelPositionAdjusting
{
	public static var instance:LabelPositionAdjusting = new LabelPositionAdjusting();
	
	public function init():Void
	{
		GlobalEventDispatcher.addEventListener(AutoUpdate.UPDATE_BY_TIMER_EVENT, this, updateAllLabelPositions);
		/**
		icons.onEnterFrame = function()
		{
			LabelPositionAdjusting.instance.updateAllLabelPositions();
		}
		*/
	}
	
	public function setInitialOffset(labelMc:MovieClip):Void
	{
		labelMc[LabelOffsetUpdate.Y_OFFSET] = LabelOffsetUpdate.INITIAL_OFFSET;
		//labelMc[LabelOffsetUpdate.X_OFFSET] = LabelOffsetUpdate.INITIAL_OFFSET;
	}
	
	public function setArtificialOffset():Void
	{
		Logger.add("setArtificialOffset");
		for (var i in icons)
        {
			var entry:MinimapEntry = Util.getApplicableEntry(icons[i]);
			
			if (entry == null)
				continue;
				
			entry.labelMc[LabelOffsetUpdate.Y_OFFSET] += 15;
		}
	}
	
	/** Update labels positions by positions of label owners and offset */
	public function updateAllLabelPositions():Void
	{
        for (var i in icons)
        {
			var entry:MinimapEntry = Util.getApplicableEntry(icons[i]);
			
			if (entry == null)
				continue;
				
			//LabelOffsetUpdate.updateEntry(entry);
			update(entry);
        }
	}
	
	private function update(entry:MinimapEntry):Void
	{
		entry.labelMc._x = entry.wrapper._x;
		entry.labelMc._y = entry.wrapper._y + entry.labelMc[LabelOffsetUpdate.Y_OFFSET];
	}
	
	private function get icons():MovieClip
    {
        return MinimapProxy.wrapper.icons;
    }
}
