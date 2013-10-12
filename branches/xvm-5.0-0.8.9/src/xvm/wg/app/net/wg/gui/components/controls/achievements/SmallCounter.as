package net.wg.gui.components.controls.achievements
{


   public class SmallCounter extends CounterComponent
   {
          
      public function SmallCounter() {
         super();
      }

      override protected function configUI() : void {
         super.configUI();
         minBgWindowWidth = 12;
         tooltip = TOOLTIPS.ACHIEVEMENT_ATTR_SMALL;
      }
   }

}