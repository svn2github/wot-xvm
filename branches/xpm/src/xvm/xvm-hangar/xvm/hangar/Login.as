/**
 * XVM - login page
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm.hangar
{
    import flash.display.MovieClip;
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.text.TextField;
    import flash.utils.*;
    import net.wg.gui.login.impl.LoginPage;
    import net.wg.infrastructure.interfaces.IView;
    import net.wg.infrastructure.base.meta.ILoginPageMeta
    import net.wg.infrastructure.events.LifeCycleEvent;
    import com.xvm.Config;
    import com.xvm.Logger;
    import com.xvm.Defines;
    import xvm.hangar.components.PingServers.PingServers;
    import xvm.hangar.components.PingServers.PingServersView;

    public class Login extends XvmModBase
    {
        public function Login(view:IView)
        {
            super(view);
        }

        public function get page():LoginPage
        {
            return super.view as LoginPage;
        }

        public override function onAfterPopulate(e:LifeCycleEvent):void
        {
            try
            {
                //Logger.addObject("onAfterPopulate: " + view.as_alias);
                setTimeout(setVersion, 1);
                initPing();
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

        private function setVersion():void
        {
            page.version.appendText("   XVM " + Defines.XVM_VERSION + " (WoT " + Defines.WOT_VERSION + ")");
        }

        private function initPing():void
        {
            if (!Config.config.login.pingServers.enabled)
                return;

            // PingServers component
            PingServers.initFeature(Config.config.login.pingServers);
            page.addChild(new PingServersView(Config.config.login.pingServers));
        }
    }

}
