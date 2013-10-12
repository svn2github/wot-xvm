package net.wg.gui.components.controls.achievements
{


   public class GreyRibbonCounter extends CounterComponent
   {
          
      public function GreyRibbonCounter() {
         super();
      }

      override protected function configUI() : void {
         minBgWindowWidth = 13;
         super.configUI();
         tooltip = TOOLTIPS.ACHIEVEMENT_ATTR_VEHICLERECORD;
      }

      override public function receiveBottomPadding() : Number {
         return -5;
      }
   }

}