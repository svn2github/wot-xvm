package net.wg.infrastructure.events
{
    import flash.events.*;

    public class ColorSchemeEvent extends flash.events.Event
    {
        native public function ColorSchemeEvent(arg1:String);
        public static const SCHEMAS_UPDATED:String="schemas";
    }
}
