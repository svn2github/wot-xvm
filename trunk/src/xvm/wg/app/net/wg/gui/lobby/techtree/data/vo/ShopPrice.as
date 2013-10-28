package net.wg.gui.lobby.techtree.data.vo
{
   import net.wg.gui.lobby.techtree.interfaces.IValueObject;
   import net.wg.utils.ILocale;


   public class ShopPrice extends Object implements IValueObject
   {
          
      public function ShopPrice(param1:Number=undefined, param2:Number=undefined) {
         super();
         this._credits = param1;
         if(this._credits > 0)
         {
            this._creditsLabel = App.utils.locale.integer(this._credits);
         }
         else
         {
            this._creditsLabel = "0";
         }
         this._gold = param2;
         if(this._gold > 0)
         {
            this._goldLabel = App.utils.locale.integer(this._gold);
         }
         else
         {
            this._goldLabel = "0";
         }
      }

      private var _credits:Number;

      private var _gold:Number;

      private var _creditsLabel:String;

      private var _goldLabel:String;

      public function get credits() : Number {
         return this._credits;
      }

      public function get creditsLabel() : String {
         return this._creditsLabel;
      }

      public function get gold() : Number {
         return this._gold;
      }

      public function get goldLabel() : String {
         return this._goldLabel;
      }

      public function fromArray(param1:Array, param2:ILocale) : void {
         if(param1.length > 1)
         {
            this._credits = isNaN(param1[0])?0:param1[0];
            this._creditsLabel = param2.integer(this._credits);
            this._gold = isNaN(param1[1])?0:param1[1];
            this._goldLabel = param2.gold(this._gold);
         }
      }

      public function fromObject(param1:Object, param2:ILocale) : void {
         if(param1 == null)
         {
            return;
         }
         if(param1.credits != null)
         {
            this._credits = param1.credits;
            this._creditsLabel = param2.integer(this._credits);
         }
         if(param1.gold != null)
         {
            this._gold = param1.gold;
            this._goldLabel = param2.gold(this._gold);
         }
      }

      public function toString() : String {
         return "[ShopPrice: credits = " + this._credits + ", gold = " + this._gold + "]";
      }
   }

}