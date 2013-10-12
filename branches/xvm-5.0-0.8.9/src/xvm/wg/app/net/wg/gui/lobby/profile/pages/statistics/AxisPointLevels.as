package net.wg.gui.lobby.profile.pages.statistics
{


   public class AxisPointLevels extends StatisticBarChartAxisPoint
   {
          
      public function AxisPointLevels() {
         super();
         tooltip = PROFILE.SECTION_STATISTICS_CHART_LEVEL_TOOLTIP;
      }

      override protected function showToolTip() : void {
         if(tooltip)
         {
            StatisticsChartsUtils.showLevelTooltip(_data,tooltip);
         }
      }
   }

}