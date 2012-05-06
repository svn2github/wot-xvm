/**
 * ...
 * @author sirmax2
 */
import wot.utils.Defines;

class wot.PlayerListItemRenderer extends net.wargaming.ingame.PlayerListItemRenderer
{
  private function get team(): Number
  {
    return (this.owner._itemRenderer == "LeftItemRendererIcon") ? Defines.TEAM_ALLY : Defines.TEAM_ENEMY;
  }

  // override
  function errorLoad(event)
  {
    if (event.target.source)
    {
      // Fallback to default icon
      var src = event.target.source.split(Defines.CONTOUR_ICON_PATH_PP).join(Defines.CONTOUR_ICON_PATH);
      if (src == event.target.source)
        super.errorLoad(event);
      else
        event.target.source = src;
    }
  }

  // override
  private var _iconLoaded = false;
  function completeLoad(event)
  {
    if (!_iconLoaded)
    {
      _iconLoaded = true;
      if (team == Defines.TEAM_ENEMY)
      {
        event.target._xscale = -event.target._xscale;
        event.target._x -= event.target.width;
      }
    }
    event.target.visible = true;
  }

  // override
  function update()
  {
    if (data)
    {
      // Alternative icon set
      data.icon = data.icon.split(Defines.CONTOUR_ICON_PATH).join(Defines.CONTOUR_ICON_PATH_PP);
    }

    super.update();
  }
}
