package net.wg.gui.lobby.profile.pages.statistics
{
   import net.wg.gui.lobby.profile.data.ProfileCommonInfoVO;
   import net.wg.data.gui_items.ItemsUtils;


   public class ProfileStatisticsVO extends ProfileCommonInfoVO
   {
          
      public function ProfileStatisticsVO(param1:Object) {
         super(param1);
      }

      public var survivalEfficiency:Number;

      public function getSurvivalEfficiencyStr() : String {
         return ItemsUtils.floatToPercent(this.survivalEfficiency);
      }
   }

}