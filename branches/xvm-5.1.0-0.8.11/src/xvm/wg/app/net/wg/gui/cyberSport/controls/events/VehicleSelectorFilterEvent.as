package net.wg.gui.cyberSport.controls.events
{
   import flash.events.Event;


   public class VehicleSelectorFilterEvent extends Event
   {
          
      public function VehicleSelectorFilterEvent(param1:String, param2:Boolean=false, param3:Boolean=false) {
         super(param1,param2,param3);
      }

      public static const CHANGE:String = "filtersChanged";

      public var nation:int;

      public var vehicleType:String;

      public var isMain:Boolean;

      public var level:int;
   }

}