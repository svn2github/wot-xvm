package net.wg.gui.messenger.evnts
{
   import flash.events.Event;


   public class ContactsFormEvent extends Event
   {
          
      public function ContactsFormEvent(param1:String, param2:Boolean=false, param3:Boolean=false, param4:String=null, param5:Number=undefined, param6:String=null) {
         super(param1,param2,param3);
         this.searchValue = param4;
         this.name = param6;
      }

      public static const SEARCH:String = "search";

      public static const ADD_TO_FRIENDS:String = "addToFriends";

      public static const ADD_TO_IGNORED:String = "addToIgnored";

      public var searchValue:String;

      public var uid:Number = -1;

      public var name:String;

      override public function clone() : Event {
         return new ContactsFormEvent(type,bubbles,cancelable,this.searchValue,this.uid,this.name);
      }

      override public function toString() : String {
         return formatToString("ContactsFormEvent","type","cancelable","eventPhase","searchValue","uid","name");
      }
   }

}