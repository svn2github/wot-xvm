package net.wg.gui.lobby.profile.pages.technique
{
   import flash.events.Event;


   public class TechniquePageEvent extends Event
   {
          
      public function TechniquePageEvent(param1:String, param2:Boolean, param3:Boolean=false, param4:Boolean=false) {
         this.dataUnderUpdating = param2;
         super(param1,param3,param4);
      }

      public static const DATA_STATUS_CHANGED:String = "dataStatusChanged";

      public var dataUnderUpdating:Boolean;

      override public function clone() : Event {
         return new TechniquePageEvent(type,this.dataUnderUpdating,bubbles,cancelable);
      }

      override public function toString() : String {
         return formatToString("TechniquePageEvent","type","bubbles","cancelable","eventPhase");
      }
   }

}