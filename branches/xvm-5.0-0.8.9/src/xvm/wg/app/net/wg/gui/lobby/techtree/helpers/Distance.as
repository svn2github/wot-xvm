package net.wg.gui.lobby.techtree.helpers
{


   public class Distance extends Object
   {
          
      public function Distance(param1:Number=undefined, param2:Number=undefined) {
         super();
         this.start = param1;
         this.end = param2;
      }

      public var start:Number;

      public var end:Number;

      public function toString() : String {
         return "[Distance: start = " + this.start + ", end = " + this.end + "]";
      }
   }

}