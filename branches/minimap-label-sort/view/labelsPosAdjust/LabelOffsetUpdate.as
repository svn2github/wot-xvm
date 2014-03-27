import wot.Minimap.view.labelsPosAdjust.LabelPositionAdjusting
import wot.Minimap.MinimapProxy;
import com.xvm.Logger;
import wot.Minimap.MinimapEntry;
import wot.Minimap.model.externalProxy.IconsProxy
import wot.Minimap.view.labelsPosAdjust.Util;

class wot.Minimap.view.labelsPosAdjust.LabelOffsetUpdate
{
	private static var DISTANCE_THRESHOLD:Number = 5; /** Less values makes labels move */
	private static var OFFSET_LIMIT:Number = 20;
	
	public static var INITIAL_OFFSET:Number = 0;
	
	public static var Y_OFFSET:String = "y_offset";
	public static var X_OFFSET:String = "x_offset";
	/** Small step may make nice smooth animation */
	private static var OFFSET_STEP:Number = 0.1;
	private static var RELAX_OFFSET_STEP:Number = OFFSET_STEP / 2;
	
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
		
		
		// ######################
		// TODO ENABLE
		// ######################
		//relaxOffset(primaryEntry.labelMc);
		
		
		
		for (var i in icons) /** Iterate over all tank entries except itself */
        {
			var relativeEntry:MinimapEntry = Util.getApplicableEntry(icons[i]);
			
			if (relativeEntry == null)
				continue;
			
			if (Util.isTheSameEntry(primaryEntry, relativeEntry))
				continue;
			
			if (updateLabelOffset(primaryEntry, relativeEntry) == MOVED)
			{
				/**
				 * First overlapping occurence found. Move along to next primary.
				 * Dont search for other relative labels for this particular primary.
				 */
				break;
			}
		}
	}
	
	private static function updateLabelOffset(primaryEntry:MinimapEntry, relativeEntry:MinimapEntry):Boolean
	{
		// if centers are too close -> move
		var dist:Number = Util.centersDistance(primaryEntry, relativeEntry);
		
		Logger.add("updateLabelOffset dist " + dist);
		if (dist > DISTANCE_THRESHOLD)
		{
			moveLabel(primaryEntry, relativeEntry);
			Logger.add(" MOVED");
			return MOVED; /** Was overlaping */
		}
		else
		{
			Logger.add(" !MOVED");
			return !MOVED; /** No overlaping */
		}
	}
	
	private static function moveLabel(primaryEntry:MinimapEntry, relativeEntry:MinimapEntry):Void
	{
		/**
		 * Dont forget to use both entry.wrapper._x and xOffset.
		 */
		if (Util.isBelow(primaryEntry, relativeEntry))
		{
			Logger.add(" Below");
			/**
			 * Primary is below relative.
			 * Move lower. This direction is shorter to achieve non-overlap.
			 */
			primaryEntry.labelMc[Y_OFFSET] += OFFSET_STEP; 
		}
		else
		{
			Logger.add(" Ontop");
			primaryEntry.labelMc[Y_OFFSET] -= OFFSET_STEP;
		}
		
		if (Util.isOnTheRight(primaryEntry, relativeEntry))
		{
			Logger.add(" OnRight");
			/**
			 * Primary is on the right of relative.
			 * Move lower. This direction is shorter to achieve non-overlap.
			 */
			primaryEntry.labelMc[X_OFFSET] += OFFSET_STEP; 
		}
		else
		{
			Logger.add(" OnLeft");
			primaryEntry.labelMc[X_OFFSET] -= OFFSET_STEP;
		}
	}
	
	/** Move towards original point */
	private static function relaxOffset(label:MovieClip):Void
	{
		if (label[Y_OFFSET] > OFFSET_STEP)
			label[Y_OFFSET] -= RELAX_OFFSET_STEP;
		else if (label[Y_OFFSET] < -OFFSET_STEP)
			label[Y_OFFSET] += RELAX_OFFSET_STEP;
		else 
			label[Y_OFFSET] = INITIAL_OFFSET;
		
		if (label[X_OFFSET] > OFFSET_STEP)
			label[X_OFFSET] -= RELAX_OFFSET_STEP;
		else if (label[X_OFFSET] < -OFFSET_STEP)
			label[X_OFFSET] += RELAX_OFFSET_STEP;
		else 
			label[X_OFFSET] = INITIAL_OFFSET;
	}
	
	private function limitOffset(labelMc:MovieClip):Void
	{
		if (Math.abs(labelMc[LabelOffsetUpdate.X_OFFSET]) > OFFSET_LIMIT ||
			Math.abs(labelMc[LabelOffsetUpdate.Y_OFFSET]) > OFFSET_LIMIT)
		{
			labelMc[LabelOffsetUpdate.X_OFFSET] = INITIAL_OFFSET;
			labelMc[LabelOffsetUpdate.Y_OFFSET] = INITIAL_OFFSET;
		}
	}
	
	private static function get icons():MovieClip
    {
        return MinimapProxy.wrapper.icons;
    }
}