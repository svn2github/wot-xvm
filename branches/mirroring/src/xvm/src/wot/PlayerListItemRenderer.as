/**
 * ...
 * @author sirmax2
 */
class wot.PlayerListItemRenderer extends net.wargaming.ingame.PlayerListItemRenderer
{
  // override
  private var _iconLoaded = false;
  function completeLoad(event)
  {
    var icon = event.target;
    if (!_iconLoaded)
    {
      _iconLoaded = true;
      if (this.owner._itemRenderer == "RightItemRendererIcon")
      {
        icon._xscale = -icon._xscale;
        icon._x -= icon.__width;
        this.vehicleLevel._x = icon._x + 15;
      }
    }
    icon.visible = true;
  }
}
