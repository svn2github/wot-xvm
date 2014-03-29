import wot.Minimap.view.labelsPosAdjust.LabelPositionAdjusting
import wot.Minimap.MinimapProxy;
import com.xvm.Logger;
import wot.Minimap.MinimapEntry;
import wot.Minimap.model.externalProxy.IconsProxy
import wot.Minimap.view.labelsPosAdjust.Util;

class wot.Minimap.view.labelsPosAdjust.LabelOffsetUpdate
{
	private static var DISTANCE_THRESHOLD:Number = 15; /** Less values makes labels move */
	private static var OFFSET_LIMIT:Number = DISTANCE_THRESHOLD * 2;
	
	public static var INITIAL_OFFSET:Number = 0;
	
	public static var Y_OFFSET:String = "y_offset";
	//public static var X_OFFSET:String = "x_offset";
	/** Small step may make nice smooth animation */
	private static var OFFSET_STEP:Number = 0.1;
	
	private static var MOVED:Boolean = true;
	
	/**
	 * Slightly move one tank entry
	 * relative to first found other entry with label placemenet overlaps.
	 * Move from original 0,0 point
	 * in direction of less steps amount to no-overlap.
	 * 
	 * TODO:
	 * Border conditions.
	 */
	public static function updateEntry(primaryEntry:MinimapEntry):Void
	{
		relaxOffset(primaryEntry.labelMc);
		
		for (var i in icons) /** Iterate over all tank entries except itself */
        {
			var relativeEntry:MinimapEntry = Util.getApplicableEntry(icons[i]);
			
			if (relativeEntry == null)
				continue;
			
			if (Util.isTheSameEntry(primaryEntry, relativeEntry))
				continue;
			
			if (updateLabelOffset(primaryEntry, relativeEntry) == MOVED)
			{
				limitOffset(primaryEntry.labelMc);
				/**
				 * First overlapping occurence found. Move along to next primary.
				 * Dont search for other relative labels for this particular primary.
				 */
				//break;
			}
		}
	}
	
	private static function updateLabelOffset(primaryEntry:MinimapEntry, relativeEntry:MinimapEntry):Boolean
	{
		Logger.add(" ");
		var dist:Number = Util.centersDistance(primaryEntry, relativeEntry);
		Logger.add("primaryEntry y is " + (primaryEntry.wrapper._y + primaryEntry.labelMc[LabelOffsetUpdate.Y_OFFSET]));
		Logger.add("primaryEntry center y is " + (Util.getCurrentLabelY(primaryEntry) + primaryEntry.labelMc._height / 2));
		Logger.add("primaryEntry height is " + primaryEntry.labelMc._height);
		
		if (dist < DISTANCE_THRESHOLD)
		{
			// if centers are too close -> move
			//moveEntry(primaryEntry, relativeEntry);
			return MOVED; /** Was overlaping */
		}
		else
		{
			return !MOVED;
		}
	}
	
	private static function moveEntry(primaryEntry:MinimapEntry, relativeEntry:MinimapEntry):Void
	{
		// ######################
		// TODO Vectorize
		// Move direction depends on RP vector angle
		// RP vector = Rv - Rp?
		
		// Or maybe i should move only vertically.
		// Horizontal issue is handled by distance
		// ######################
		
		/**
		 * Dont forget to use both entry.wrapper._x and xOffset.
		 */
		if (Util.isBelow(primaryEntry, relativeEntry))
		{
			/**
			 * Primary is below relative.
			 * Move lower. This direction is shorter to achieve non-overlap.
			 */
			primaryEntry.labelMc[Y_OFFSET] += OFFSET_STEP; 
		}
		else
		{
			primaryEntry.labelMc[Y_OFFSET] -= OFFSET_STEP;
		}
	}
	
	/** Move towards original point */
	private static function relaxOffset(label:MovieClip):Void
	{
		var relaxStep:Number = 0.2;
		/** Define direction */
		if (label[Y_OFFSET] > OFFSET_STEP)
			label[Y_OFFSET] -= relaxStep;
		else if (label[Y_OFFSET] < -OFFSET_STEP)
			label[Y_OFFSET] += relaxStep;
		else 
			label[Y_OFFSET] = INITIAL_OFFSET;
	}
	
	private static function limitOffset(labelMc:MovieClip):Void
	{
		if (Math.abs(labelMc[LabelOffsetUpdate.Y_OFFSET]) > OFFSET_LIMIT)
		{
			//labelMc[LabelOffsetUpdate.X_OFFSET] = INITIAL_OFFSET;
			labelMc[LabelOffsetUpdate.Y_OFFSET] = INITIAL_OFFSET;
		}
	}
	
	private static function get icons():MovieClip
    {
        return MinimapProxy.wrapper.icons;
    }
}