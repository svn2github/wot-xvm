/**
 * XVM - lobby
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm.hangar
{
    import com.xvm.cfg.CPingServers;
    import flash.display.*;
    import flash.utils.*;
    import net.wg.gui.lobby.LobbyPage;
    import net.wg.infrastructure.events.LifeCycleEvent;
    import net.wg.infrastructure.interfaces.IView;
    import com.xvm.*;
    import xvm.hangar.components.PingServers.*;

    public class Lobby extends XvmModBase
    {
        public function Lobby(view:IView)
        {
            super(view);
        }

        public function get page():LobbyPage
        {
            return super.view as LobbyPage;
        }

        public override function onAfterPopulate(e:LifeCycleEvent):void
        {
            try
            {
                //Logger.addObject("onAfterPopulate: " + view.as_alias);
                initPing();
                hideTutorial();
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        private function initPing():void
        {
            var cfg:CPingServers = Config.config.hangar.pingServers;
            PingServers.initFeature(cfg);
            if (cfg.enabled)
                page.addChild(new PingServersView(cfg));
        }

        private function hideTutorial():void
        {
            if (Config.config.hangar.hideTutorial == true)
            {
                setTimeout(function()
                {
                    page.header.tutorialControl.visible = false;
                }, 1);
            }
        }

    }

}
