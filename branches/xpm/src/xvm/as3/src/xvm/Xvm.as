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

    [SWF(width="1", height="1", backgroundColor="#000000")]

    public class Xvm extends MovieClip
    {

        public function Xvm():void
        {
            Config.addListener(this, init);
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

            Logger.add("init()");
            try
            {
                Logger.addObject(Config.config, "app", 1);
            }
            catch (e:*)
            {
                Logger.add(e.message);
            }
        }
    }
}
