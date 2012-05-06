/**
 * ...
 * @author sirmax2
 */
import wot.utils.Defines;

class wot.BattleLoadingItemRenderer extends net.wargaming.controls.LobbyPlayerListItemRenderer
{
  private function get team(): Number
  {
    return (this.owner._name == "team1List") ? Defines.TEAM_ALLY : Defines.TEAM_ENEMY;
  }

  // override
  function errorLoad(event)
  {
    if (event.target.source)
    {
      // Fallback to default icon
      var src = event.target.source.split(Defines.CONTOUR_ICON_PATH_BL).join(Defines.CONTOUR_ICON_PATH);
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
        event.target._x -= event.target.__width;
      }
    }
    event.target.visible = true;
  }

  // override
  function setData(data)
  {
    if (data)
    {
      // Alternative icon set
      data.icon = data.icon.split(Defines.CONTOUR_ICON_PATH).join(Defines.CONTOUR_ICON_PATH_BL);
    }

    super.setData(data);
  }
}
