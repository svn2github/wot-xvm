package net.wg.gui.lobby.profile.pages.technique
{
   import net.wg.gui.lobby.profile.components.ResizableContent;
   import net.wg.utils.ILocale;
   import flash.text.TextField;
   import net.wg.gui.lobby.profile.components.DashLineTextItem;
   import __AS3__.vec.Vector;
   import net.wg.data.gui_items.dossier.VehicleDossier;


   public class TechniqueStatisticTab extends ResizableContent
   {
          
      public function TechniqueStatisticTab() {
         super();
         this.firstAlignedGroup = Vector.<DashLineTextItem>([this.battlesDL,this.maxExpDL,this.maxKillDL,this.totalKillDL,this.totalDeadDL,this.killRatioDL,this.dealtDmgDL,this.receivedDmgDL,this.dmgRatioDL]);
         this.secontAlignedGroup = Vector.<DashLineTextItem>([this.winsDL,this.defeatsDL,this.surviveDL,this.accuracyDL]);
         this.thirdAlignedGroup = Vector.<DashLineTextItem>([this.avgExpDL,this.avgKillsDL,this.avgDetectedDL,this.avgDmgDealtDL,this.avgDmgReceivedDL,this.avgScoutingDmgDL]);
      }

      private static function convertPercentValue(param1:Number) : String {
         var _loc2_:ILocale = App.utils.locale;
         var _loc3_:String = _loc2_.numberWithoutZeros(param1 * 100);
         return makeHtmlText(_loc3_) + makeHtmlText(" %",6513507);
      }

      private static function makeHtmlText(param1:String, param2:uint=16643278) : String {
         return "<font color=\'#" + param2.toString(16) + "\'>" + param1 + "</font>";
      }

      public static function roundDecimal(param1:Number, param2:int) : Number {
         var _loc3_:Number = Math.pow(10,param2);
         return Math.round(_loc3_ * param1) / _loc3_;
      }

      public var efficiencyTF:TextField;

      public var avgResultsTF:TextField;

      public var battlesDL:DashLineTextItem;

      public var winsDL:DashLineTextItem;

      public var defeatsDL:DashLineTextItem;

      public var surviveDL:DashLineTextItem;

      public var accuracyDL:DashLineTextItem;

      public var maxExpDL:DashLineTextItem;

      public var maxKillDL:DashLineTextItem;

      public var totalKillDL:DashLineTextItem;

      public var totalDeadDL:DashLineTextItem;

      public var killRatioDL:DashLineTextItem;

      public var dealtDmgDL:DashLineTextItem;

      public var receivedDmgDL:DashLineTextItem;

      public var dmgRatioDL:DashLineTextItem;

      public var avgExpDL:DashLineTextItem;

      public var avgKillsDL:DashLineTextItem;

      public var avgDetectedDL:DashLineTextItem;

      public var avgDmgDealtDL:DashLineTextItem;

      public var avgDmgReceivedDL:DashLineTextItem;

      public var avgScoutingDmgDL:DashLineTextItem;

      private var firstAlignedGroup:Vector.<DashLineTextItem> = null;

      private var secontAlignedGroup:Vector.<DashLineTextItem> = null;

      private var thirdAlignedGroup:Vector.<DashLineTextItem> = null;

      private var _data:VehicleDossier;

      override protected function configUI() : void {
         var _loc1_:DashLineTextItem = null;
         var _loc2_:DashLineTextItem = null;
         var _loc3_:DashLineTextItem = null;
         super.configUI();
         for each (_loc1_ in this.firstAlignedGroup)
         {
            _loc1_.width = 350;
         }
         for each (_loc2_ in this.secontAlignedGroup)
         {
            _loc2_.width = 365;
         }
         for each (_loc3_ in this.thirdAlignedGroup)
         {
            _loc3_.width = 350;
         }
         this.setupLabels();
         this.winsDL.value = convertPercentValue(0);
         this.defeatsDL.value = convertPercentValue(0);
         this.surviveDL.value = convertPercentValue(0);
         this.accuracyDL.value = convertPercentValue(0);
         this.avgScoutingDmgDL.visible = false;
      }

      private function setupLabels() : void {
         this.efficiencyTF.text = PROFILE.SECTION_TECHNIQUE_STATISTICS_EFFENCY;
         this.avgResultsTF.text = PROFILE.SECTION_TECHNIQUE_STATISTICS_AVGSTATS;
         this.battlesDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_TOTALBATTLES;
         this.winsDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_TOTALWINS;
         this.defeatsDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_TOTALDEFEATS;
         this.surviveDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_SURVIVAL;
         this.accuracyDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_ACCURACY;
         this.maxExpDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_MAXEXPERIENCE;
         this.maxKillDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_MAXDESTROYEDVEHICLES;
         this.totalKillDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_KILLED;
         this.totalDeadDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_DESTROYED;
         this.killRatioDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_DESTRUCTIONCOEFFICIENT;
         this.dealtDmgDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_DEALOUTDAMAGE;
         this.receivedDmgDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_RECEIVEDDAMAGE;
         this.dmgRatioDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_DAMAGECOEFFICIENT;
         this.avgExpDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_AVGEXPERIENCE;
         this.avgKillsDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_AVGDESTROYEDVEHICLES;
         this.avgDetectedDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_AVGDETECTEDENEMIES;
         this.avgDmgDealtDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_AVGDAMAGE;
         this.avgDmgReceivedDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_AVGRECEIVEDDAMAGE;
         this.avgScoutingDmgDL.label = PROFILE.SECTION_TECHNIQUE_STATISTICS_AVGSCOUTINGDAMAGE;
      }

      override public function update(param1:Object) : void {
         var _loc2_:VehicleDossier = VehicleDossier(param1);
         if(this._data != _loc2_)
         {
            this._data = _loc2_;
            if(_loc2_)
            {
               this.battlesDL.value = makeHtmlText(_loc2_.getBattlesCountStr());
               this.winsDL.value = convertPercentValue(_loc2_.getWinsEfficiency());
               this.defeatsDL.value = convertPercentValue(_loc2_.getLossesEfficiency());
               this.surviveDL.value = convertPercentValue(_loc2_.getSurvivalEfficiency());
               this.accuracyDL.value = convertPercentValue(_loc2_.getHitsEfficiency());
               this.maxExpDL.value = makeHtmlText(_loc2_.getMaxVehicleXPStr());
               this.maxKillDL.value = makeHtmlText(_loc2_.getMaxVehicleFragsStr());
               this.totalKillDL.value = makeHtmlText(_loc2_.getFragsCountStr());
               this.totalDeadDL.value = makeHtmlText(_loc2_.getDeathsCountStr());
               this.killRatioDL.value = makeHtmlText(_loc2_.getFragsEfficiencyStr(),13348216);
               this.dealtDmgDL.value = makeHtmlText(_loc2_.getDamageDealtStr());
               this.receivedDmgDL.value = makeHtmlText(_loc2_.getDamageReceivedStr());
               this.dmgRatioDL.value = makeHtmlText(_loc2_.getDamageEfficiencyStr(),13348216);
               this.avgExpDL.value = makeHtmlText(_loc2_.getAvgXPStr());
               this.avgKillsDL.value = makeHtmlText(_loc2_.getAvgFragsStr());
               this.avgDetectedDL.value = makeHtmlText(_loc2_.getAvgEnemiesSpottedStr());
               this.avgDmgDealtDL.value = makeHtmlText(_loc2_.getAvgDamageDealtStr());
               this.avgDmgReceivedDL.value = makeHtmlText(_loc2_.getAvgDamageReceivedStr());
               this.avgScoutingDmgDL.value = "Will be implemented...";
            }
         }
      }

      override public function dispose() : void {
         this._data = null;
         if(this.firstAlignedGroup)
         {
            this.firstAlignedGroup.splice(0,this.firstAlignedGroup.length);
            this.firstAlignedGroup = null;
         }
         if(this.secontAlignedGroup)
         {
            this.secontAlignedGroup.splice(0,this.secontAlignedGroup.length);
            this.secontAlignedGroup = null;
         }
         if(this.thirdAlignedGroup)
         {
            this.thirdAlignedGroup.splice(0,this.thirdAlignedGroup.length);
            this.thirdAlignedGroup = null;
         }
         this.efficiencyTF = null;
         this.avgResultsTF = null;
         this.battlesDL.dispose();
         this.winsDL.dispose();
         this.defeatsDL.dispose();
         this.surviveDL.dispose();
         this.accuracyDL.dispose();
         this.maxExpDL.dispose();
         this.maxKillDL.dispose();
         this.totalKillDL.dispose();
         this.totalDeadDL.dispose();
         this.killRatioDL.dispose();
         this.dealtDmgDL.dispose();
         this.receivedDmgDL.dispose();
         this.dmgRatioDL.dispose();
         this.avgExpDL.dispose();
         this.avgKillsDL.dispose();
         this.avgDetectedDL.dispose();
         this.avgDmgDealtDL.dispose();
         this.avgDmgReceivedDL.dispose();
         this.avgScoutingDmgDL.dispose();
         super.dispose();
      }
   }

}