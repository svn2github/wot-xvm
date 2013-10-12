package net.wg.gui.lobby.settings.evnts
{
   import flash.events.Event;


   public class SettingsSubVewEvent extends Event
   {
          
      public function SettingsSubVewEvent(param1:String, param2:String, param3:String=undefined, param4:*=null, param5:String=undefined, param6:Boolean=false, param7:Boolean=false) {
         super(param1,param6,param7);
         this.subViewId = param2;
         this.controlId = param3;
         this.alternative = param5;
         this.controlValue = param4;
      }

      public static var ON_CONTROL_CHANGE:String = "on_control_changed";

      public var subViewId:String;

      public var controlId:String;

      public var alternative:String;

      public var controlValue;

      override public function clone() : Event {
         return new SettingsSubVewEvent(type,this.subViewId,this.controlId,this.controlValue,this.alternative,bubbles,cancelable);
      }

      override public function toString() : String {
         return formatToString("SettingsSubVewEvent","type","subViewId","controlId","controlValue","alternative","bubbles","cancelable","eventPhase");
      }
   }

}