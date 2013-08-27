package wot
{
    import flash.display.*;
    import flash.net.*;
    import flash.text.TextField;
    import flash.events.Event;
    import flash.utils.setTimeout;
    import flash.external.ExternalInterface;
    import flash.utils.describeType;
    import com.xvm.Logger;

    [SWF(width="1", height="1", backgroundColor="#000000")]

    /**
     * ...
     * @author 
     */
    public class Xvm extends flash.display.MovieClip 
    {

        public function Xvm():void 
        {
            if (stage) init();
            else addEventListener(Event.ADDED_TO_STAGE, init);
        }
        
        private function init(e:Event = null):void 
        {
            removeEventListener(Event.ADDED_TO_STAGE, init);
            // entry point

            Logger.add("init()");
            Logger.addObject(stage);
        }
    }
}
