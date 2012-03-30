/**
 * ...
 * @author sirmax2
 */

class wot.BattleLoadingItemRenderer extends net.wargaming.controls.LobbyPlayerListItemRenderer
{
  // override
  private var _iconLoaded = false;
  function completeLoad(event)
  {
    if (!_iconLoaded)
    {
      _iconLoaded = true;
      if (this.owner._name == "team2List")
      {
        event.target._xscale = -event.target._xscale;
        event.target._x -= event.target.__width - 5;
      }
    }
    event.target.visible = true;
  }
}
