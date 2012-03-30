/**
 * ...
 * @author sirmax2
 */

class wot.BattleStatItemRenderer extends net.wargaming.BattleStatItemRenderer
{
  // override
  private var _iconLoaded = false;
  function completeLoad(event)
  {
    if (!_iconLoaded)
    {
      _iconLoaded = true;
      if (this.owner._name == "team2")
      {
        event.target._xscale = -event.target._xscale;
        event.target._x -= 80 - 5; // FIXIT: where I can get image width?
      }
    }
    event.target.visible = true;
  }
}
