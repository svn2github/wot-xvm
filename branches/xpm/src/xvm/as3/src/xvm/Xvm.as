/**
 * XVM Entry Point
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm
{
    import com.xvm.JSONx;
    import flash.display.*;
    import flash.net.*;
    import flash.text.TextField;
    import flash.events.Event;
    import flash.utils.setInterval;
    import flash.external.ExternalInterface;
    import flash.utils.describeType;
    import com.xvm.Logger;
    import com.xvm.JSONxLoader;

    [SWF(width="1", height="1", backgroundColor="#000000")]

    public class Xvm extends flash.display.MovieClip
    {

        public function Xvm():void
        {
            JSONxLoader.LoadAndParse("../../../xvm/xvm.xc", this, loaded);

           if (stage) init();
           else addEventListener(Event.ADDED_TO_STAGE, init);
        }

        private function loaded():void
        {
            Logger.addObject(arguments, "loaded", 2);
        }

        private function init(e:Event = null):void
        {
            removeEventListener(Event.ADDED_TO_STAGE, init);
            // entry point

            Logger.add("init()");
            try
            {
                Logger.addObject(stage.focus.root, "app", 1);
            }
            catch (e:*)
            {
                Logger.add(e.message);
            }
        }
    }
}
