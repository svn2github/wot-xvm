package net.wg.gui.lobby.profile.pages.technique
{
   import net.wg.infrastructure.base.meta.impl.ProfileTechniqueMeta;
   import net.wg.infrastructure.base.meta.IProfileTechniqueMeta;
   import net.wg.gui.lobby.profile.data.SectionLayoutManager;
   import flash.events.Event;
   import net.wg.gui.lobby.profile.ProfileConstants;
   import net.wg.data.gui_items.dossier.VehicleDossier;


   public class ProfileTechnique extends ProfileTechniqueMeta implements IProfileTechniqueMeta
   {
          
      public function ProfileTechnique() {
         super();
         this.listComponent.addEventListener(TechniqueListComponent.DATA_CHANGED,this.listDataChangeHandler,false,0,true);
      }

      private static const CURRENT_DIMENSION_INVALID:String = "cdInv";

      public var listComponent:TechniqueListComponent;

      public var stackComponent:TechniqueStackComponent;

      private var lastVehicleID:Number = NaN;

      override protected function initialize() : void {
         super.initialize();
         layoutManager = new SectionLayoutManager(525,740);
         layoutManager.registerComponents(this.listComponent,this.stackComponent);
      }

      override protected function configUI() : void {
         super.configUI();
      }

      override protected function applyData(param1:Object) : Object {
         var _loc4_:TechniqueListVehicleVO = null;
         var _loc5_:Object = null;
         var _loc2_:Array = param1 as Array;
         var _loc3_:Array = [];
         for each (_loc5_ in _loc2_)
         {
            _loc4_ = new TechniqueListVehicleVO(_loc5_);
            _loc3_.push(_loc4_);
         }
         this.listComponent.dataProvider = _loc3_;
         return param1;
      }

      private function listDataChangeHandler(param1:Event) : void {
         var _loc2_:TechniqueListVehicleVO = this.listComponent.selectedItem;
         if(_loc2_)
         {
            this.stackComponent.setData(_loc2_);
            requestDataS({"vehicleId":_loc2_.id});
         }
      }

      override protected function onDispose() : void {
         if(this.listComponent)
         {
            this.listComponent.removeEventListener(TechniqueListComponent.DATA_CHANGED,this.listDataChangeHandler);
            this.listComponent.dispose();
            this.listComponent = null;
         }
         if(this.stackComponent)
         {
            this.stackComponent.dispose();
            this.stackComponent = null;
         }
         super.onDispose();
      }

      override protected function applyResizing() : void {
         if(layoutManager)
         {
            layoutManager.setDimension(currentDimension.x,currentDimension.y);
         }
         this.x = Math.round(currentDimension.x / 2 - centerOffset);
         this.listComponent.setViewSize(currentDimension.x,currentDimension.y - this.listComponent.y);
         this.stackComponent.setViewSize(Math.min(currentDimension.x,ProfileConstants.MIN_APP_WIDTH) - this.stackComponent.x,currentDimension.y - this.stackComponent.y);
      }

      override protected function draw() : void {
         super.draw();
         if((isInvalid(CURRENT_DIMENSION_INVALID)) && (currentDimension))
         {
            this.applyResizing();
         }
      }

      override public function as_update(param1:Object) : void {
         this.stackComponent.updateTankData(new VehicleDossier(param1.vehicleId,param1.databaseID));
         dispatchEvent(new TechniquePageEvent(TechniquePageEvent.DATA_STATUS_CHANGED,false,true));
      }
   }

}