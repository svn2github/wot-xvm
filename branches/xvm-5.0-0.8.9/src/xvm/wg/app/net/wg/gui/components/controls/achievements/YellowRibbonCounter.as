package net.wg.gui.components.controls.achievements
{


   public class YellowRibbonCounter extends CounterComponent
   {
          
      public function YellowRibbonCounter() {
         super();
      }

      override protected function configUI() : void {
         super.configUI();
         minBgWindowWidth = 13;
         tooltip = TOOLTIPS.ACHIEVEMENT_ATTR_RECORD;
      }

      override public function receiveBottomPadding() : Number {
         return -5;
      }
   }

}