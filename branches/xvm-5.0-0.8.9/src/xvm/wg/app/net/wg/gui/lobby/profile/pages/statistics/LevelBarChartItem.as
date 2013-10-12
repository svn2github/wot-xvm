package net.wg.gui.lobby.profile.pages.statistics
{
   import net.wg.data.managers.IToolTipParams;


   public class LevelBarChartItem extends StatisticBarChartItem
   {
          
      public function LevelBarChartItem() {
         super();
      }

      override protected function configUI() : void {
         super.configUI();
         tooltip = PROFILE.SECTION_STATISTICS_CHART_LEVEL_TOOLTIP;
      }

      override protected function showToolTip(param1:IToolTipParams) : void {
         if(tooltip)
         {
            StatisticsChartsUtils.showLevelTooltip(_data,tooltip);
         }
      }
   }

}