/**
 * XVM Entry Point
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm
{
    import flash.display.MovieClip;
    import flash.events.Event;
    import flash.utils.setInterval;
    import com.xvm.Logger;
    import com.xvm.Config;
    import com.xvm.io.JSONxLoader;
    import net.wg.infrastructure.interfaces.IView;

    [SWF(width="1", height="1", backgroundColor="#000000")]

    public class Xvm extends MovieClip
    {
        public function Xvm():void
        {
            Config.load(this, init);
        }

        private function init(e:Event = null):void
        {
            if (!stage)
            {
                addEventListener(Event.ADDED_TO_STAGE, init);
                return;
            }
            removeEventListener(Event.ADDED_TO_STAGE, init);

            // entry point

            try
            {
                var view:IView = App.instance.containerMgr.lastFocusedView;
                Logger.add("view: " + (view ? view.as_alias : "(null)"));
                setInterval(function():void {
                    view = App.instance.containerMgr.lastFocusedView;
                    Logger.add("view: " + (view ? view.as_alias : "(null)"));
                }, 1000);
                //wrapper.version.text = value + "   XVM " + Defines.XVM_VERSION + " (WoT " + Defines.WOT_VERSION + ")";
                //Logger.addObject(Config.config, "config", 10);
            }
            catch (e:*)
            {
                Logger.add(e.message);
            }
        }
    }
}
