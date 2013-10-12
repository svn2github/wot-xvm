package net.wg.gui.lobby.profile.pages.statistics
{
   import net.wg.gui.lobby.profile.components.chart.AxisChart;
   import scaleform.clik.interfaces.IDataProvider;


   public class StatisticsBarChart extends AxisChart
   {
          
      public function StatisticsBarChart() {
         super();
         var _loc1_:StatisticBarChartLayout = new StatisticBarChartLayout();
         _loc1_.paddingRight = 26;
         _loc1_.paddingLeft = 27;
         _loc1_.gap = 18;
         currentLayout = _loc1_;
         horizontalAxis = this.mainHorizontalAxis;
      }

      private static const percent100:uint = 100;

      public var mainHorizontalAxis:StatisticsBarChartAxis;

      override public function set dataProvider(param1:IDataProvider) : void {
         var _loc3_:StatisticChartInfo = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = 0;
         var _loc4_:uint = param1.length;
         var _loc5_:* = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param1[_loc5_];
            if(_loc2_ < _loc3_.yField)
            {
               _loc2_ = Number(_loc3_.yField);
            }
            this.adjustProviderItem(_loc3_,_loc5_);
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param1[_loc5_];
            _loc3_.percentValue = Math.round(Number(_loc3_.yField) / _loc2_ * percent100);
            _loc5_++;
         }
         super.dataProvider = param1;
      }

      protected function adjustProviderItem(param1:StatisticChartInfo, param2:int) : void {
          
      }
   }

}