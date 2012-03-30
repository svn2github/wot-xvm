﻿/**
 * ...
 * @author sirmax2
 */
import wot.utils.Config;

class wot.BattleMain
{
  static var instance:BattleMain;
  static var minimap;

  static function main()
  {
    /*if (!_global.xvm)
      _global.xvm = [];
    if (wot.utils.Utils.indexOf(_global.xvm, "Battle::main") == -1)
      _global.xvm.push("Battle::main");
    wot.utils.Logger.add("--> " + _global.xvm.join(", "));*/

    Config.LoadConfigAndStatLegacy("XVM.xvmconf", "BattleMain.as");

    instance = new BattleMain();

    gfx.io.GameDelegate.addCallBack("battle.showPostmortemTips", instance, "showPostmortemTips");
    gfx.io.GameDelegate.addCallBack("Stage.Update", instance, "onUpdateStage");
  }

  function showPostmortemTips(movingUpTime, showTime, movingDownTime)
  {
    if (Config.s_config.battle.showPostmortemTips)
      _root.showPostmortemTips(movingUpTime, showTime, movingDownTime);
  }
  
  function onUpdateStage(width, height)
  {
    //wot.utils.Logger.add("onUpdateStage");
    _root.onUpdateStage(width, height);
    //_root.minimap.foreground._alpha = 30;
    //_root.minimap.foregroundHR._alpha = 30;
    //wot.utils.Logger.addObject(_root);
  }
}
