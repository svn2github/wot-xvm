/**
 * XVM - login page
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm.hangar
{
    import flash.events.*;
    import flash.utils.*;
    import net.wg.gui.components.controls.ReadOnlyScrollingList;
    import net.wg.gui.lobby.battleloading.*;
    import net.wg.infrastructure.interfaces.IView;
    import net.wg.infrastructure.events.LifeCycleEvent;
    import com.xvm.*;
    import xvm.hangar.components.BattleLoading.*;
    import xvm.hangar.components.WinChances.WinChances;

    public class BattleLoading extends XvmModBase
    {
        public function BattleLoading(view:IView)
        {
            super(view);
        }

        public function get page():net.wg.gui.lobby.battleloading.BattleLoading
        {
            return super.view as net.wg.gui.lobby.battleloading.BattleLoading;
        }

        public override function onAfterPopulate(e:LifeCycleEvent):void
        {
            try
            {
                logBriefConfigurationInfo();

                page.form.team1List.itemRenderer = LeftItemRendererWrapper;
                page.form.team2List.itemRenderer = RightItemRendererWrapper;

                //Logger.add("onAfterPopulate: " + view.as_alias);
                Stat.loadBattleStat(this, statLoaded, true);

                if (page.initialized)
                    initBattleLoading();
                else
                {
                    // TODO: find event
                    setTimeout(initBattleLoading, 1);
                }
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        public override function onBeforeDispose(e:LifeCycleEvent):void
        {
            //Logger.add("onBeforeDispose: " + view.as_alias);
        }

        // PRIVATE

        private function logBriefConfigurationInfo():void
        {
            Logger.add(
                "[BattleLoading]\n" +
                "                               XVM_VERSION=" + Defines.XVM_VERSION + " for WoT " + Defines.WOT_VERSION +"\n" +
                "                               gameRegion=" + Config.gameRegion + "\n" +
                "                               configVersion=" + Config.config.configVersion + "\n" +
                "                               showPlayersStatistics=" + Config.config.rating.showPlayersStatistics + "\n" +
                // TODO "                               loadEnemyStatsInFogOfWar=" + Config.config.rating.loadEnemyStatsInFogOfWar + "\n" +
                "                               useStandardMarkers=" + Config.config.battle.useStandardMarkers);
        }

        private function initBattleLoading():void
        {
            try
            {
                // Components
                new WinChances(page); // Winning chance info above players list.
                new TipField(page);   // Information field below players list.
                new Clock(page);  // Realworld time at right side of TipField.
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        private function statLoaded():void
        {
            //Logger.addObject(Stat.stat, "statLoaded");

            //TODO if (Config.config.rating.enableStatisticsLog == true)
            //    StatsLogger.saveStatistics("setup", StatData.s_data);
        }
    }
}
