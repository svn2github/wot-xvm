package net.wg.gui.components.tooltips.VO
{
   import net.wg.utils.ILocale;
   import net.wg.gui.components.tooltips.helpers.Utils;


   public class VehicleVO extends VehicleBaseVO
   {
          
      public function VehicleVO(param1:Object) {
         super();
         this.parsHash(param1);
      }

      public var isPremium:Boolean = false;

      public var isFavorite:Boolean = false;

      public var isElite:Boolean = false;

      private const LOCK_ROAMING:String = "ROAMING";

      private const LOCK_CLAN:String = "CLAN";

      private const LOCK_TOURNAMENT:String = "TOURNAMENT";

      private const LOCK_MSG_COLOR:String = "#ff1515";

      public var clanLockHeader:String = "";

      public var status:Boolean = false;

      public var statusHeader:String = null;

      public var statusLevel:String = null;

      public var statusText:String = null;

      public var stats:Array = null;

      public var characteristics:Array = null;

      public var equipments:Array = null;

      private function parsHash(param1:Object) : void {
         var _loc3_:ILocale = null;
         var _loc4_:String = null;
         var _loc5_:* = NaN;
         var _loc6_:String = null;
         vName = (param1.hasOwnProperty("name")) && !(param1["name"] == undefined)?param1["name"]:"";
         vLevel = (param1.hasOwnProperty("level")) && !(param1["level"] == undefined)?param1["level"]:1;
         vType = (param1.hasOwnProperty("type")) && !(param1["type"] == undefined)?param1["type"]:"";
         this.isPremium = (param1.hasOwnProperty("isPremium")) && !(param1["isPremium"] == undefined)?param1["isPremium"]:false;
         this.isFavorite = (param1.hasOwnProperty("isFavorite")) && !(param1["isFavorite"] == undefined)?param1["isFavorite"]:false;
         this.isElite = (param1.hasOwnProperty("isElite")) && !(param1["isElite"] == undefined)?param1["isElite"]:false;
         if((param1.hasOwnProperty("locks")) && !(param1["locks"] == undefined))
         {
            _loc3_ = App.utils.locale;
            _loc4_ = this.getLockPriority(param1["locks"]);
            switch(_loc4_)
            {
               case this.LOCK_ROAMING:
                  this.clanLockHeader = Utils.instance.htmlWrapper(_loc3_.makeString(TOOLTIPS.TANKCARUSEL_LOCK_HEADER).toUpperCase(),"#ffffff",14,"$TitleFont") + "<br/><font face=\"$TextFont\" size=\"3\">&nbsp;</font><br/>";
                  this.clanLockHeader = this.clanLockHeader + Utils.instance.htmlWrapper(_loc3_.makeString(TOOLTIPS.tankcarusel_lock(_loc4_)),this.LOCK_MSG_COLOR,11,"$TextFont");
                  break;
               case this.LOCK_CLAN:
               case this.LOCK_TOURNAMENT:
                  _loc5_ = param1["locks"][_loc4_];
                  _loc6_ = _loc3_.shortDate(_loc5_) + " " + _loc3_.shortTime(_loc5_);
                  this.clanLockHeader = Utils.instance.htmlWrapper(_loc3_.makeString(TOOLTIPS.TANKCARUSEL_LOCK_HEADER).toUpperCase(),"#ffffff",14,"$TitleFont") + "<br/>";
                  this.clanLockHeader = this.clanLockHeader + (Utils.instance.htmlWrapper(_loc3_.makeString(TOOLTIPS.TANKCARUSEL_LOCK_TO).toLowerCase() + " " + _loc6_,"#c2c2c2",13,"$FieldFont") + "<font face=\"$FieldFont\" size=\"12\">&nbsp;</font><br/><font face=\"$TextFont\" size=\"5\">&nbsp;</font><br/>");
                  this.clanLockHeader = this.clanLockHeader + Utils.instance.htmlWrapper(_loc3_.makeString(TOOLTIPS.tankcarusel_lock(_loc4_)),this.LOCK_MSG_COLOR,11,"$TextFont");
                  break;
               case "":
                  break;
            }
         }
         this.stats = (param1.hasOwnProperty("stats")) && !(param1["stats"] == undefined)?param1["stats"]:null;
         var _loc2_:Array = (param1.hasOwnProperty("params")) && !(param1["params"] == undefined)?param1["params"]:null;
         if(_loc2_)
         {
            if(_loc2_[0])
            {
               this.characteristics = _loc2_[0];
            }
            if(_loc2_[1])
            {
               this.equipments = _loc2_[1];
            }
         }
         if((param1.hasOwnProperty("status")) && !(param1["status"] == undefined))
         {
            this.status = true;
            this.statusHeader = (param1["status"].hasOwnProperty("header")) && !(param1["status"]["header"] == undefined)?param1["status"]["header"]:"";
            this.statusLevel = (param1["status"].hasOwnProperty("level")) && !(param1["status"]["level"] == undefined)?param1["status"]["level"]:"";
            this.statusText = (param1["status"].hasOwnProperty("text")) && !(param1["status"]["text"] == undefined)?param1["status"]["text"]:"";
         }
         else
         {
            this.statusHeader = null;
            this.statusLevel = null;
            this.statusText = null;
         }
         if((this.statusHeader) || (this.statusText))
         {
            this.status = true;
         }
      }

      private function getLockPriority(param1:Object) : String {
         if((param1.hasOwnProperty(this.LOCK_ROAMING)) && (param1[this.LOCK_ROAMING]))
         {
            return this.LOCK_ROAMING;
         }
         if((param1.hasOwnProperty(this.LOCK_CLAN)) && !(param1[this.LOCK_CLAN] == undefined))
         {
            return this.LOCK_CLAN;
         }
         if((param1.hasOwnProperty(this.LOCK_TOURNAMENT)) && !(param1[this.LOCK_TOURNAMENT] == undefined))
         {
            return this.LOCK_TOURNAMENT;
         }
         return "";
      }
   }

}