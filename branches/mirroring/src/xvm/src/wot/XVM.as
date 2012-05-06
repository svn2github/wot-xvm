/**
 * ...
 * @author Nicolas Siver
 * @author bkon
 * @author sirmax2
 * @author STL1te
 */
import wot.utils.Defines;

class wot.XVM extends net.wargaming.ingame.VehicleMarker
{
  // override
  function init(vClass, vIconSource, vType, vLevel, pFullName, curHealth, maxHealth, entityName, speaking, hunt)
  {
    // Alternative icon set
    vIconSource = vIconSource.split(Defines.CONTOUR_ICON_PATH).join(Defines.CONTOUR_ICON_PATH_VM);

    super.init(vClass, vIconSource, vType, vLevel, pFullName, curHealth, maxHealth, entityName, speaking, hunt);
  }

  // override
  function _onErrorLoad(event)
  {
    if (event.target.source)
    {
      // Fallback to default icon
      var src = event.target.source.split(Defines.CONTOUR_ICON_PATH_VM).join(Defines.CONTOUR_ICON_PATH);
      if (src == event.target.source)
        super._onErrorLoad(event);
      else
        event.target.source = src;
    }
  }

  // override
  function _centeringIcon()
  {
    super._centeringIcon();
    iconLoader._x -= 6;
  }
}
