package net.wg.gui.cyberSport.views.unit
{
   import scaleform.clik.core.UIComponent;
   import flash.text.TextField;
   import net.wg.gui.cyberSport.controls.GrayTransparentButton;
   import net.wg.gui.components.controls.SoundButtonEx;
   import net.wg.gui.cyberSport.controls.CSVehicleButton;
   import flash.display.Sprite;
   import net.wg.gui.cyberSport.vo.UnitSlotVO;
   import flash.events.MouseEvent;
   import scaleform.clik.events.ButtonEvent;
   import scaleform.clik.constants.InvalidationType;
   import flash.display.DisplayObject;
   import net.wg.data.constants.Tooltips;
   import net.wg.gui.cyberSport.controls.events.CSComponentEvent;
   import net.wg.gui.cyberSport.vo.UnitCandidateVO;
   import net.wg.gui.cyberSport.helpers.CSPlayerCIGenerator;


   public class SimpleSlotRenderer extends UIComponent
   {
          
      public function SimpleSlotRenderer() {
         super();
      }

      public var slotLabel:TextField;

      public var takePlaceBtn:GrayTransparentButton;

      public var takePlaceFirstTimeBtn:SoundButtonEx;

      public var vehicleBtn:CSVehicleButton;

      public var lockBackground:Sprite;

      public var orderNo:TextField;

      public var contextMenuArea:Sprite;

      protected var _index:int = 0;

      protected var _slotData:UnitSlotVO;

      public function get index() : int {
         return this._index;
      }

      public function set index(param1:int) : void {
         this._index = param1;
      }

      public function get slotData() : UnitSlotVO {
         return this._slotData;
      }

      public function set slotData(param1:UnitSlotVO) : void {
         this._slotData = param1;
         invalidateData();
      }

      override protected function configUI() : void {
         super.configUI();
         if(this.orderNo)
         {
            this.orderNo.text = (this._index + 1).toString();
         }
         if(this.contextMenuArea)
         {
            this.contextMenuArea.buttonMode = this.contextMenuArea.useHandCursor = true;
            this.contextMenuArea.addEventListener(MouseEvent.CLICK,this.onContextMenuAreaClick);
            this.contextMenuArea.visible = false;
         }
         this.vehicleBtn.addEventListener(MouseEvent.ROLL_OVER,this.onMedallionRollOver);
         this.vehicleBtn.addEventListener(MouseEvent.ROLL_OUT,this.onMedallionRollOut);
         this.tooltipSubscribe([this.slotLabel,this.takePlaceBtn,this.takePlaceFirstTimeBtn]);
         this.takePlaceBtn.addEventListener(ButtonEvent.CLICK,this.onTakePlaceClick);
         this.takePlaceFirstTimeBtn.addEventListener(ButtonEvent.CLICK,this.onTakePlaceClick);
      }

      override protected function draw() : void {
         super.draw();
         if(InvalidationType.DATA)
         {
            this.initControlsState();
            if(this.slotData)
            {
               this.slotLabel.htmlText = this.slotData.slotLabel;
               if(!this.slotData.isClosed)
               {
                  this.vehicleBtn.visible = true;
                  this.takePlaceBtn.visible = this.index > 0 && (this.slotData.canBeTaken) && !this.slotData.isClosed && !this.slotData.isFreezed && !this.slotData.isCommanderState;
                  if(this.slotData.selectedVehicleCD != -1)
                  {
                     this.vehicleBtn.setCompDescriptor(this.slotData.selectedVehicleCD);
                  }
                  else
                  {
                     if((this.slotData.isCommanderState) && this.index == 0 || !this.slotData.isCommanderState && !this.slotData.player)
                     {
                        this.vehicleBtn.vehicleCount = this.index == 0?-1:this.slotData.compatibleVehiclesCount;
                     }
                     else
                     {
                        if((this.slotData.isCommanderState) && !(this.index == 0) && (!(this.slotData.restrictions[0] == null) || !(this.slotData.restrictions[1] == null)))
                        {
                           this.vehicleBtn.showCommanderSettings = true;
                        }
                        else
                        {
                           this.vehicleBtn.vehicleCount = -1;
                           this.vehicleBtn.visible = Boolean(this.slotData.player);
                        }
                     }
                  }
                  this.vehicleBtn.selectState(this.slotData.selectedVehicleCD == -1 && (this.slotData.player) && (this.slotData.player.isSelf));
                  this.lockBackground.visible = false;
                  if((this.slotData) && (this.slotData.player))
                  {
                     this.vehicleBtn.enabled = (this.slotData.player.isSelf) && !(this.slotData.playerStatus == 2);
                  }
               }
               else
               {
                  this.takePlaceBtn.visible = false;
                  this.vehicleBtn.visible = false;
                  this.lockBackground.visible = true;
               }
               this.slotLabel.visible = !this.takePlaceBtn.visible;
               if(this.contextMenuArea)
               {
                  this.contextMenuArea.visible = (this.slotData) && (this.slotData.player) && !this.slotData.player.isSelf;
               }
               this.updateTakePlaceButtonView();
            }
         }
      }

      private function tooltipSubscribe(param1:Array, param2:Boolean=true) : void {
         var _loc3_:DisplayObject = null;
         for each (_loc3_ in param1)
         {
            if(param2)
            {
               _loc3_.addEventListener(MouseEvent.ROLL_OVER,this.onControlRollOver);
               _loc3_.addEventListener(MouseEvent.ROLL_OUT,this.onControlRollOut);
            }
            else
            {
               _loc3_.removeEventListener(MouseEvent.ROLL_OVER,this.onControlRollOver);
               _loc3_.removeEventListener(MouseEvent.ROLL_OUT,this.onControlRollOut);
            }
         }
      }

      private function onControlRollOver(param1:MouseEvent) : void {
         switch(param1.currentTarget)
         {
            case this.slotLabel:
               if(this.slotData.isClosed)
               {
                  App.toolTipMgr.showComplex(TOOLTIPS.CYBERSPORT_UNIT_SLOTLABELCLOSED);
               }
               else
               {
                  if(this.slotData.compatibleVehiclesCount == 0)
                  {
                     App.toolTipMgr.showComplex(TOOLTIPS.CYBERSPORT_UNIT_SLOTLABELUNAVAILABLE);
                  }
               }
               break;
            case this.takePlaceBtn:
               App.toolTipMgr.showComplex(TOOLTIPS.CYBERSPORT_UNIT_TAKEPLACEBTN);
               break;
            case this.takePlaceFirstTimeBtn:
               App.toolTipMgr.showComplex(TOOLTIPS.CYBERSPORT_UNIT_TAKEPLACEFIRSTTIMEBTN);
               break;
         }
      }

      private function onControlRollOut(param1:MouseEvent) : void {
         App.toolTipMgr.hide();
      }

      private function updateTakePlaceButtonView() : void {
         var _loc1_:Boolean = this.takePlaceBtn.visible;
         this.takePlaceFirstTimeBtn.visible = (_loc1_) && !this.slotData.isCurrentUserInSlot;
         this.takePlaceBtn.visible = (_loc1_) && (this.slotData.isCurrentUserInSlot);
      }

      override public function dispose() : void {
         this.vehicleBtn.removeEventListener(MouseEvent.ROLL_OVER,this.onMedallionRollOver);
         this.vehicleBtn.removeEventListener(MouseEvent.ROLL_OUT,this.onMedallionRollOut);
         this.takePlaceBtn.removeEventListener(ButtonEvent.CLICK,this.onTakePlaceClick);
         this.takePlaceFirstTimeBtn.addEventListener(ButtonEvent.CLICK,this.onTakePlaceClick);
         this.tooltipSubscribe([this.slotLabel,this.takePlaceBtn,this.takePlaceFirstTimeBtn],false);
         if(this.contextMenuArea)
         {
            this.contextMenuArea.removeEventListener(MouseEvent.CLICK,this.onContextMenuAreaClick);
         }
         this.vehicleBtn.dispose();
         this.takePlaceBtn.dispose();
         super.dispose();
      }

      private function onMedallionRollOver(param1:MouseEvent) : void {
         if(this.vehicleBtn.currentState == CSVehicleButton.CHOOSE_VEHICLE)
         {
            App.toolTipMgr.showComplex(TOOLTIPS.CYBERSPORT_SELECTVEHICLE);
         }
         else
         {
            if(this.vehicleBtn.currentState == CSVehicleButton.DEFAULT_STATE)
            {
               App.toolTipMgr.showComplex(TOOLTIPS.MEDALION_NOVEHICLE);
            }
            else
            {
               if(this.vehicleBtn.currentState == CSVehicleButton.SELECTED_VEHICLE)
               {
                  App.toolTipMgr.showSpecial(Tooltips.CYBER_SPORT_SLOT_SELECTED,null,this.index,this._slotData.unitIdx);
               }
               else
               {
                  App.toolTipMgr.showSpecial(Tooltips.CYBER_SPORT_SLOT,null,this.index,this._slotData.unitIdx);
               }
            }
         }
      }

      private function onMedallionRollOut(param1:MouseEvent) : void {
         App.toolTipMgr.hide();
      }

      protected function initControlsState() : void {
         this.slotLabel.text = "";
         this.takePlaceBtn.visible = false;
         this.takePlaceFirstTimeBtn.visible = false;
         this.vehicleBtn.visible = true;
         this.vehicleBtn.reset();
      }

      private function onTakePlaceClick(param1:ButtonEvent) : void {
         dispatchEvent(new CSComponentEvent(CSComponentEvent.ASSIGN_SLOT_REQUEST,this.index));
      }

      private function onContextMenuAreaClick(param1:MouseEvent) : void {
         var _loc2_:UnitCandidateVO = null;
         var _loc3_:CSPlayerCIGenerator = null;
         if(App.utils.commons.isRightButton(param1))
         {
            _loc2_ = this._slotData?this._slotData.player:null;
            if((_loc2_) && !_loc2_.isSelf)
            {
               _loc3_ = new CSPlayerCIGenerator(false);
               App.contextMenuMgr.showUserContextMenu(this,this._slotData.player,_loc3_);
            }
         }
      }
   }

}