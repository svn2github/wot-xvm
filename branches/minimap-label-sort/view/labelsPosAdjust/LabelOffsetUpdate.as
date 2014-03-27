import wot.Minimap.MinimapProxy;
import com.xvm.Logger;
import wot.Minimap.MinimapEntry;
import wot.Minimap.model.externalProxy.IconsProxy
import wot.Minimap.view.labelsPosAdjust.Util;

class wot.Minimap.view.labelsPosAdjust.LabelOffsetUpdate
{
	public static var Y_OFFSET_PROPERTY:String = "y_offset";
	public static var X_OFFSET_PROPERTY:String = "x_offset";
	public static var OVERLAP_STATUS_PROPERTY:String = "overlaps";
	/** Small step may make nice smooth animation */
	private static var OFFSET_STEP:Number = 0.2;
	private static var DISTANCE_THRESHOLD:Number = 6; /** Less values makes labels move */
	private static var OFFSET_MOVED:Boolean = true;
	private static var OFFSET_UNTOUCHED:Boolean = !OFFSET_MOVED;
	
	private static var OVERLAPPED:Boolean = true;
	private static var NOT_OVERLAPPED:Boolean = !OVERLAPPED;
	
	/**
	 * Slightly move one tank entry
	 * relative to first found other entry with label placemenet overlaps.
	 * Move from original 0,0 point
	 * in direction of less steps amount to no-overlap.
	 * 
	 * TODO:
	 * Border conditions.
	 */
	public static function updateEntry(primaryEntry:MovieClip):Void
	{
		if (primaryEntry.labelMc[OVERLAP_STATUS_PROPERTY] == OFFSET_UNTOUCHED)
		{
			/** If no overlap then move towards original center where offset is 0, 0 */
			
			relaxOffset(primaryEntry.labelMc);
		}
		
		for (var i in icons) /** Iterate over all tank entries except itself */
        {
			var relativeEntry:MovieClip = Util.getApplicableEntry(icons[i]);
			
			if (relativeEntry == null)
				continue;
			
			if (Util.isTheSameEntry(primaryEntry, relativeEntry))
				continue;
			
			primaryEntry.labelMc[OVERLAP_STATUS_PROPERTY] = updateLabelOffset(primaryEntry.labelMc, relativeEntry.labelMc);
			
			if (primaryEntry.labelMc[OVERLAP_STATUS_PROPERTY] == OFFSET_MOVED)
			{
				/**
				 * First overlapping occurence found. Move along to next primary.
				 * Dont search for other relative labels for this particular primary.
				 */
				break;
			}
		}
	}
	
	private static function updateLabelOffset(primaryLabel:MovieClip, relativeLabel:MovieClip):Boolean
	{
		// if centers are too close -> move
		var dist:Number = Util.centersDistance(primaryLabel, relativeLabel);
		if (dist < DISTANCE_THRESHOLD)
		{
			moveLabel(primaryLabel, relativeLabel);
			return OFFSET_MOVED; /** Was overlaping */
		}
		else
		{
			return OFFSET_UNTOUCHED; /** No overlaping */
		}
	}
	
	private static function moveLabel(primaryLabel:MovieClip, relativeLabel:MovieClip):Void
	{
		if (Util.isBelow(primaryLabel, relativeLabel))
		{
			/**
			 * Primary is below relative.
			 * Move lower. This direction is shorter to achieve non-overlap.
			 */
			primaryLabel[Y_OFFSET_PROPERTY] += OFFSET_STEP; 
		}
		else
		{
			primaryLabel[Y_OFFSET_PROPERTY] -= OFFSET_STEP;
		}
		
		if (Util.isOnTheRight(primaryLabel, relativeLabel))
		{
			/**
			 * Primary is on the right of relative.
			 * Move lower. This direction is shorter to achieve non-overlap.
			 */
			primaryLabel[X_OFFSET_PROPERTY] += OFFSET_STEP; 
		}
		else
		{
			primaryLabel[X_OFFSET_PROPERTY] -= OFFSET_STEP;
		}
	}
	
	/** Move towards original point */
	private static function relaxOffset(label:MovieClip):Void
	{
		if (label._y > 0)
			label._y -= OFFSET_STEP;
		else if (label._y < 0)
			label._y += OFFSET_STEP;
			
		if (label._x > 0)
			label._x -= OFFSET_STEP;
		else if (label._x < 0)
			label._x += OFFSET_STEP;
		
		/** Do nothing for 0 for offset */
	}
	
	private static function get icons():MovieClip
    {
        return MinimapProxy.wrapper.icons;
    }
}