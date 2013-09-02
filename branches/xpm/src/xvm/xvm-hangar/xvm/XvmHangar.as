/**
 * XVM
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm
{
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import net.wg.infrastructure.events.*;
    import com.xvm.*;
    import xvm.hangar.*;

    [SWF(width="100", height="100", backgroundColor="#666666")]

    public class XvmHangar extends Sprite
    {
        public function XvmHangar():void
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
                Logger.add("[XVM] hangar, current view: " + (App.containerMgr.lastFocusedView ? App.containerMgr.lastFocusedView.as_alias : "None"));

                App.containerMgr.loader.addEventListener(LoaderEvent.VIEW_LOADED, onViewLoaded);
                App.containerMgr.loader.addEventListener(LoaderEvent.VIEW_LOADED, onViewLoaded);
            }
            catch (e:*)
            {
                Logger.add(e.getStackTrace());
            }
        }

        private function onViewLoaded(e:LoaderEvent):void
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
    }
}
