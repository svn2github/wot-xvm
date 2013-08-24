package 
{
    import flash.display.Sprite;
    import flash.text.TextField;
    import flash.events.Event;
    import flash.utils.setTimeout;
    import flash.external.ExternalInterface;

    [SWF(width="1024", height="768", backgroundColor="#000000")]
    
    /**
     * ...
     * @author 
     */
    public class Main extends Sprite 
    {
        public function Main():void 
        {
            if (stage) init();
            else addEventListener(Event.ADDED_TO_STAGE, init);
        }
        
        private function init(e:Event = null):void 
        {
            removeEventListener(Event.ADDED_TO_STAGE, init);
            // entry point
            flash.utils.setInterval(function():void {
                flash.external.ExternalInterface.call("log", String(stage), String(root), String(this), String(parent));
            }, 1000);
        }
    }
}