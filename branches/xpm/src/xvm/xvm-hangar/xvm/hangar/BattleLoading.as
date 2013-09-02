/**
 * XVM - login page
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm.hangar
{
    import flash.events.*;
    import flash.utils.*;
    import flash.external.ExternalInterface;
    import net.wg.gui.lobby.battleloading.*;
    import net.wg.infrastructure.interfaces.IView;
    import net.wg.infrastructure.events.LifeCycleEvent;
    import com.xvm.*;
    import com.xvm.io.Cmd;

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
                //Logger.add("onAfterPopulate: " + view.as_alias);
                ExternalInterface.addCallback(Cmd.RESPOND_STATDATA, Logger.add);
                Cmd.loadBattleStat();

                //if (page.initialized)
                initBattleLoading();
                //else
                //    page.addEventListener(
                //initBattleLoading();
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

        private function initBattleLoading():void
        {
            //page.form.helpTip.htmlText = "#@#$@#$@#$";
        }

        private function statLoaded(data:Object):void
        {
            Logger.addObject(data, "statLoaded");
        }
    }
}
