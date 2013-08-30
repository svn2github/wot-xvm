/**
 * XVM Test mod
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm.mods.testmod
{
    import flash.display.MovieClip;
    import flash.events.Event;
    import flash.utils.setInterval;
    import com.xvm.Logger;
    import com.xvm.Config;
    import net.wg.infrastructure.interfaces.IView;

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

            Logger.add("testmod running");
        }
    }
}
