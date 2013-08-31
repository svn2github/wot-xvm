package net.wg.infrastructure.events 
{
    import flash.events.*;
    
    public class VoiceChatEvent extends flash.events.Event
    {
        native public function VoiceChatEvent(arg1:String, arg2:uint, arg3:Boolean);
        native public function getAccountDBID():uint;
        native public function isHimself():Boolean;
        public static const START_SPEAKING:String="startSpeaking";
        public static const STOP_SPEAKING:String="stopSpeaking";
    }
}
