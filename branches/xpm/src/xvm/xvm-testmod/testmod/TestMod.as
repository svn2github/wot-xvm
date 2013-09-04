/**
 * XVM Test mod
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package testmod
{
    import flash.display.MovieClip;
    import flash.events.Event;
    import flash.utils.setInterval;
    import com.xvm.Logger;
    import com.xvm.Config;
    import net.wg.infrastructure.events.LoaderEvent;
    import testmod.xvm.Login;
    import testmod.xvm.Lobby;

    [SWF(width="1", height="1", backgroundColor="#111111")]

    public class TestMod extends MovieClip
    {
        public function TestMod():void
        {
            if (stage)
            {
                init();
            }
            else
            {
                addEventListener(Event.ADDED_TO_STAGE, init);
            }
        }

        private function init(e:Event = null):void
        {
            removeEventListener(Event.ADDED_TO_STAGE, init);

            // entry point

            try
            {
                Logger.add("testmod running, current view: " + (App.containerMgr.lastFocusedView ? App.containerMgr.lastFocusedView.as_alias : "None"));
                App.containerMgr.loader.addEventListener(LoaderEvent.VIEW_LOADED, onViewLoaded);
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        private function onViewLoaded(e:LoaderEvent):void
        {
            try
            {
                Logger.add("View loaded: " + e.view.as_alias);

                switch (e.view.as_alias)
                {
                    case "login":
                        new Login(e.view);
                        break;
                    case "lobby":
                        new Lobby(e.view);
                        break;
                }
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }
    }
}
