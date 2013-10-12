package net.wg.gui.lobby.profile.data
{
   import net.wg.data.daapi.base.DAAPIDataClass;
   import net.wg.data.gui_items.ItemsUtils;


   public class ProfileCommonInfoVO extends DAAPIDataClass
   {
          
      public function ProfileCommonInfoVO(param1:Object) {
         super(param1);
      }

      public var battlesCount:uint;

      public var winsCount:uint;

      public var hitsEfficiency:Number;

      public var maxXP:Number;

      public var maxXPByVehicle:String = "";

      public var avgXP:Number;

      public var marksOfMastery:uint;

      public var totalUserVehiclesCount:uint;

      public function getBattlesCountStr() : String {
         return ItemsUtils.formatIntegerStr(this.battlesCount);
      }

      public function getWinsEfficiencyStr() : String {
         var _loc1_:Number = this.winsCount / this.battlesCount;
         _loc1_ = !isNaN(_loc1_)?_loc1_:0;
         return ItemsUtils.floatToPercent(_loc1_);
      }

      public function getMarksOfMasteryCountStr() : String {
         return ItemsUtils.formatIntegerStr(this.marksOfMastery);
      }

      public function getHitsEfficiencyStr() : String {
         return ItemsUtils.floatToPercent(this.hitsEfficiency);
      }

      public function getMaxExperienceStr() : String {
         return ItemsUtils.formatIntegerStr(this.maxXP);
      }

      public function getAvgExperienceStr() : String {
         return ItemsUtils.formatIntegerStr(this.avgXP);
      }
   }

}