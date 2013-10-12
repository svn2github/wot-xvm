package net.wg.gui.lobby.profile.pages.statistics
{
   import scaleform.clik.core.UIComponent;
   import net.wg.gui.lobby.profile.components.DashLineTextItem;


   public class CommonStatistics extends UIComponent
   {
          
      public function CommonStatistics() {
         super();
      }

      private static const TF_BLOCK2_WIDTH:int = 544;

      private static const TF_BLOCK1_WIDTH:int = 338;

      private static const SIDES_PADDING:int = 30;

      private static const CENTER_PADDING:int = 50;

      private static function applyLabelsText(param1:String, param2:Object, param3:DashLineTextItem) : void {
         param3.label = param2[param1];
      }

      public var ltKilled:DashLineTextItem;

      public var ltDestroyed:DashLineTextItem;

      public var ltDestructionCoefficient:DashLineTextItem;

      public var ltDealOutDamage:DashLineTextItem;

      public var ltReceivedDamage:DashLineTextItem;

      public var ltDamageCoefficient:DashLineTextItem;

      public var ltAvgDestroyedVehicles:DashLineTextItem;

      public var ltMaxDestroyedVehicles:DashLineTextItem;

      public var ltAvgDamage:DashLineTextItem;

      public var ltAvgReceivedDamage:DashLineTextItem;

      public var ltAvgDetectedEnemies:DashLineTextItem;

      override protected function configUI() : void {
         super.configUI();
         this.ltKilled.width = this.ltDestroyed.width = this.ltDestructionCoefficient.width = this.ltDealOutDamage.width = this.ltReceivedDamage.width = this.ltDamageCoefficient.width = TF_BLOCK1_WIDTH;
         this.ltAvgDestroyedVehicles.width = this.ltMaxDestroyedVehicles.width = this.ltAvgDamage.width = this.ltAvgReceivedDamage.width = this.ltAvgDetectedEnemies.width = TF_BLOCK2_WIDTH;
         this.ltDestructionCoefficient.tooltip = PROFILE.PROFILE_PARAMS_TOOLTIP_DESTROYCOEFF;
         this.ltDamageCoefficient.tooltip = PROFILE.PROFILE_PARAMS_TOOLTIP_DAMAGECOEFF;
      }

      public function setLabels(param1:Object) : void {
         applyLabelsText("killed",param1,this.ltKilled);
         applyLabelsText("destroyed",param1,this.ltDestroyed);
         applyLabelsText("destructionCoefficient",param1,this.ltDestructionCoefficient);
         applyLabelsText("dealOutDamage",param1,this.ltDealOutDamage);
         applyLabelsText("receivedDamage",param1,this.ltReceivedDamage);
         applyLabelsText("damageCoefficient",param1,this.ltDamageCoefficient);
         applyLabelsText("avgDestroyedVehicles",param1,this.ltAvgDestroyedVehicles);
         applyLabelsText("maxDestroyedVehicles",param1,this.ltMaxDestroyedVehicles);
         applyLabelsText("avgDamage",param1,this.ltAvgDamage);
         applyLabelsText("avgReceivedDamage",param1,this.ltAvgReceivedDamage);
         applyLabelsText("avgDetectedEnemies",param1,this.ltAvgDetectedEnemies);
      }

      public function setDossierData(param1:Object) : void {
         var _loc2_:ProfileStatisticsDetailVO = new ProfileStatisticsDetailVO(param1);
         this.ltKilled.value = _loc2_.getFragsCountStr();
         this.ltDestroyed.value = _loc2_.getDeathsCountStr();
         this.ltDestructionCoefficient.value = "<font color=\'#cbad78\'>" + _loc2_.getFragsEfficiencyStr() + "</font>";
         this.ltDealOutDamage.value = _loc2_.getDamageDealtStr();
         this.ltReceivedDamage.value = _loc2_.getDamageReceivedStr();
         this.ltDamageCoefficient.value = "<font color=\'#cbad78\'>" + _loc2_.getDamageEfficiencyStr() + "</font>";
         this.ltAvgDestroyedVehicles.value = _loc2_.getAvgFragsStr();
         this.ltMaxDestroyedVehicles.value = _loc2_.getMaxFragsStr();
         this.ltAvgDamage.value = _loc2_.getAvgDamageDealtStr();
         this.ltAvgReceivedDamage.value = _loc2_.getAvgDamageReceivedStr();
         this.ltAvgDetectedEnemies.value = _loc2_.getAvgEnemiesSpottedStr();
      }

      public function setViewSize(param1:Number, param2:Number) : void {
         this.ltKilled.x = this.ltDestroyed.x = this.ltDestructionCoefficient.x = this.ltDealOutDamage.x = this.ltReceivedDamage.x = this.ltDamageCoefficient.x = SIDES_PADDING;
         this.ltAvgDestroyedVehicles.x = this.ltMaxDestroyedVehicles.x = this.ltAvgDamage.x = this.ltAvgReceivedDamage.x = this.ltAvgDetectedEnemies.x = param1 - TF_BLOCK2_WIDTH - SIDES_PADDING;
      }
   }

}