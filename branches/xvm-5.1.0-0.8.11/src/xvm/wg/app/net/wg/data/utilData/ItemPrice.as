package net.wg.data.utilData
{


   public class ItemPrice extends Object
   {
          
      public function ItemPrice(param1:int=undefined, param2:int=undefined) {
         super();
         this._credits = param1;
         this._gold = param2;
      }

      private var _credits:int;

      private var _gold:int;

      public function get credits() : int {
         return this._credits;
      }

      public function get gold() : int {
         return this._gold;
      }
   }

}