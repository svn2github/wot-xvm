package scaleform.clik.events
{
    import flash.events.*;
    import scaleform.clik.ui.*;

    public class InputEvent extends flash.events.Event
    {
        public function InputEvent(arg1:String, arg2:scaleform.clik.ui.InputDetails)
        {
            super(arg1, true, true);
            this.details = arg2;
            return;
        }

        public static const INPUT:String="input";
        public var details:scaleform.clik.ui.InputDetails;
        native public function get handled():Boolean;
        native public function set handled(arg1:Boolean):void;
    }
}
