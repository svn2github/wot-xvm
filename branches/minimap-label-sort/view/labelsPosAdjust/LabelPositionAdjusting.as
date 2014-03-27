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
	
	private static var INITIAL_OFFSET:Number = 0;
	private static var OFFSET_LIMIT:Number = 10;
	private static var INITIAL_OVERLAP_STATUS:Boolean = false;
	
	public function init():Void
	{
		Logger.add("init");
		icons.onEnterFrame = function()
		{
			LabelPositionAdjusting.instance.updateAllLabelPositions();
		}
	}
	
	public function setInitialOffset(labelMc:MovieClip):Void
	{
		Logger.add("setInitialOffset");
		labelMc[LabelOffsetUpdate.Y_OFFSET_PROPERTY] = INITIAL_OFFSET;
		labelMc[LabelOffsetUpdate.X_OFFSET_PROPERTY] = INITIAL_OFFSET;
		labelMc[LabelOffsetUpdate.OVERLAP_STATUS_PROPERTY] = INITIAL_OVERLAP_STATUS;
	}
	
	public function updateAllLabelPositions():Void
	{
		Logger.add("Update all");
        for (var i in icons)
        {
			var entry:MovieClip = Util.getApplicableEntry(icons[i]);
			
			if (entry == null)
				continue;
				
			LabelOffsetUpdate.updateEntry(entry);
			applyOffset(entry);
			Logger.add(" entry.labelMc._y " + entry.labelMc._y);
			Logger.add(" entry.labelMc._x " + entry.labelMc._x);
        }
	}
	
	private function applyOffset(entry:MovieClip):Void
	{
		var xOffset:Number = limitOffset(entry.labelMc[LabelOffsetUpdate.X_OFFSET_PROPERTY]);
		var yOffset:Number = limitOffset(entry.labelMc[LabelOffsetUpdate.Y_OFFSET_PROPERTY]);
		entry.labelMc._x = entry.wrapper._x + xOffset;
		entry.labelMc._y = entry.wrapper._y + yOffset;
	}
	
	private function limitOffset(offset:Number):Number
	{
		return offset > OFFSET_LIMIT ? OFFSET_LIMIT : offset;
	}
	
	private function get icons():MovieClip
    {
        return MinimapProxy.wrapper.icons;
    }
}
