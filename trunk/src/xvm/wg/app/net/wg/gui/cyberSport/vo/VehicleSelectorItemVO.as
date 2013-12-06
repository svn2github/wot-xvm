package net.wg.gui.cyberSport.vo
{
   import net.wg.infrastructure.interfaces.entity.IDisposable;
   import net.wg.gui.cyberSport.CSConstants;


   public class VehicleSelectorItemVO extends Object implements IDisposable
   {
          
      public function VehicleSelectorItemVO(param1:Object, param2:Boolean=false, param3:Boolean=false) {
         super();
         this._useCache = param2;
         this._vehicle = param1?new VehicleVO(param1):null;
         this._selected = param3;
         if(this._useCache)
         {
            this.cache =
               {
                  "shortUserName":this._vehicle.shortUserName,
                  "type":this._vehicle.type,
                  "level":this._vehicle.level,
                  "nationID":this._vehicle.nationID,
                  "smallIconPath":this._vehicle.smallIconPath,
                  "isReadyToFight":this._vehicle.isReadyToFight
               }
            ;
         }
      }

      private var _useCache:Boolean = false;

      private var _vehicle:VehicleVO;

      private var _selected:Boolean;

      private var cache:Object;

      public function dispose() : void {
         this.cache = null;
         this._vehicle = null;
      }

      private function getDataSource() : Object {
         return this._useCache?this.cache:this._vehicle;
      }

      public function get compactDescriptor() : int {
         return this._vehicle?this._vehicle.intCD:-1;
      }

      public function get selected() : Boolean {
         return this._selected;
      }

      public function set selected(param1:Boolean) : void {
         this._selected = param1;
      }

      public function get enabled() : Boolean {
         return this.level <= CSConstants.MAX_VEHICLE_LEVEL;
      }

      public function get shortUserName() : String {
         return this.getDataSource().shortUserName;
      }

      public function get type() : String {
         return this.getDataSource().type;
      }

      public function get level() : uint {
         return this.getDataSource().level;
      }

      public function get nationID() : int {
         return this.getDataSource().nationID;
      }

      public function get smallIconPath() : String {
         return this.getDataSource().smallIconPath;
      }

      public function get isReadyToFight() : Boolean {
         return this.getDataSource().isReadyToFight;
      }

      public function get vehicle() : VehicleVO {
         return this._vehicle;
      }
   }

}