package net.wg.gui.components.controls.achievements
{
   import flash.display.FrameLabel;


   public class BeigeCounter extends CounterComponent
   {
          
      public function BeigeCounter() {
         super();
      }

      private static const CLASS_INV:String = "classInvalid";

      private var _labels:Array = null;

      private var _classValue:String = "";

      override protected function configUI() : void {
         super.configUI();
         this._labels = this.currentLabels;
         tooltip = TOOLTIPS.ACHIEVEMENT_ATTR_DEGREE;
      }

      override public function receiveBottomPadding() : Number {
         return 0;
      }

      override protected function draw() : void {
         var _loc1_:uint = 0;
         var _loc2_:FrameLabel = null;
         if(isInvalid(CLASS_INV))
         {
            gotoAndStop("empty");
            if(this._labels)
            {
               _loc1_ = 0;
               while(_loc1_ < this._labels.length)
               {
                  _loc2_ = this._labels[_loc1_];
                  if(_loc2_.name == "level" + this._classValue)
                  {
                     gotoAndStop(_loc2_.name);
                     break;
                  }
                  _loc1_++;
               }
            }
         }
      }

      override public function get text() : String {
         return this._classValue;
      }

      override public function set text(param1:String) : void {
         this._classValue = param1;
         invalidate(CLASS_INV);
      }
   }

}