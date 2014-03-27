import wot.Minimap.MinimapProxy;
import com.xvm.Logger;
import wot.Minimap.MinimapEntry;
import wot.Minimap.model.externalProxy.IconsProxy

class wot.Minimap.view.labelsPosAdjust.Util
{
	public static function isTheSameEntry(entry1:MovieClip, entry2:MovieClip):Boolean
	{
		return entry1.uid == entry2.uid;
	}	
	
	public static function getApplicableEntry(icon:MovieClip):MovieClip
	{
		/** Not a player icon */
		if (!icon.player)
			return null;
			
		var entry:MovieClip = icon.xvm_worker;
		
		/**
		 * Seldom error workaround.
		 * Wreck sometimes is placed at map center.
		 */
		if (!entry.wrapper._x && !entry.wrapper._y)
			return null;
		
		/**
		 * No label - nothing to align.
		 * Example: capture or respawn point.
		 */
		if (entry.labelMc._x == undefined)
			return null;
			
		/** All checks are passed. This entry is valid for procedures. */
		return entry;
	}
	
	public static function centersDistance(label1:MovieClip, label2:MovieClip):Number
	{
		var xCenter1:Number = Util.getXCenter(label1);
		var yCenter1:Number = Util.getYCenter(label1);
		var xCenter2:Number = Util.getXCenter(label2);
		var yCenter2:Number = Util.getYCenter(label2);
		var distance:Number = Math.pow(xCenter2 - xCenter1, 2) +
							  Math.pow(yCenter2 - yCenter1, 2);
		return Math.sqrt(distance);
	}
	
	/** Is label1 below label2? */
	public static function isBelow(label1:MovieClip, label2:MovieClip):Boolean
	{
		return label1._y > label2._y;
	}
	
	/** Is label1 below label2? */
	public static function isOnTheRight(label1:MovieClip, label2:MovieClip):Boolean
	{
		return label1._x > label2._x;
	}
	
	private static function getXCenter(label:MovieClip):Number
	{
		return label._x + label._width / 2;
	}
	
	private static function getYCenter(label:MovieClip):Number
	{
		return label._y + label._height / 2;
	}
}
