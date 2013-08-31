package net.wg.infrastructure.events
{
    import flash.display.*;
    import flash.events.*;

    public class DragDropEvent extends flash.events.Event
    {
        native public function DragDropEvent(arg1:String, arg2:flash.display.InteractiveObject, arg3:flash.display.InteractiveObject, arg4:flash.display.InteractiveObject);
        native public function get draggedItem():flash.display.InteractiveObject;
        native public function get sender():flash.display.InteractiveObject;
        native public function get receiver():flash.display.InteractiveObject;
        public static const BEFORE_DROP:String="onBeforeDrop";
        public static const AFTER_DROP:String="onAfterDrop";
        public static const START_DROP:String="onStartDrop";
        public static const END_DROP:String="onEndDrop";
    }
}
