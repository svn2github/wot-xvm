package net.wg.data.VO
{
   import net.wg.data.daapi.base.DAAPIDataClass;


   public class ProgressElementVO extends DAAPIDataClass
   {
          
      public function ProgressElementVO(param1:Object) {
         super(param1);
      }

      private var _progrTooltip:Object = null;

      private var _progrBarType:String = "";

      private var _maxProgrVal:Number = 0;

      private var _currentProgrVal:Number = 0;

      private var _description:String = "";

      private var _progressDiff:String = "";

      public function get progrTooltip() : Object {
         return this._progrTooltip;
      }

      public function set progrTooltip(param1:Object) : void {
         this._progrTooltip = param1;
      }

      public function get progrBarType() : String {
         return this._progrBarType;
      }

      public function set progrBarType(param1:String) : void {
         this._progrBarType = param1;
      }

      public function get maxProgrVal() : Number {
         return this._maxProgrVal;
      }

      public function set maxProgrVal(param1:Number) : void {
         this._maxProgrVal = param1;
      }

      public function get currentProgrVal() : Number {
         return this._currentProgrVal;
      }

      public function set currentProgrVal(param1:Number) : void {
         this._currentProgrVal = param1;
      }

      public function get description() : String {
         return this._description;
      }

      public function set description(param1:String) : void {
         this._description = param1;
      }

      public function get progressDiff() : String {
         return this._progressDiff;
      }

      public function set progressDiff(param1:String) : void {
         this._progressDiff = param1;
      }
   }

}