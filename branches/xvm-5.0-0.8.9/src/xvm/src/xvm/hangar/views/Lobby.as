/**
 * XVM - lobby
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm.hangar.views
{
    import com.xvm.*;
    import com.xvm.infrastructure.*;
    import com.xvm.utils.*;
    import com.xvm.types.cfg.*;
    import flash.display.*;
    import flash.utils.*;
    import net.wg.gui.lobby.LobbyPage;
    import net.wg.infrastructure.events.LifeCycleEvent;
    import net.wg.infrastructure.interfaces.IView;
    import xvm.*;
    import xvm.hangar.*;

    public class Lobby extends XvmViewBase
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
            //Logger.add("onAfterPopulate: " + view.as_alias);
            hideTutorial();
            XvmHangar.Globals[XvmHangar.G_NAME] = WGUtils.GetPlayerName(page.header.tankPanel.account_name.text);
        }

        private function hideTutorial():void
        {
            if (Config.config.hangar.hideTutorial == true)
                page.header.tutorialControl.y = -10000;
        }
    }

}
