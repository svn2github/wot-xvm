package net.wg.infrastructure.events 
{
    import flash.events.*;
    
    public class EnvironmentEvent extends flash.events.Event
    {
        native public function EnvironmentEvent(arg1:String, ... rest);
        native public function getArgs():Array;
        public static const LOGOFF:String="WoTLogoff";
        public static const QIUT:String="WoTQuit";
    }
}
