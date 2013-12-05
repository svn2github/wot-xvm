package net.wg.gui.lobby.training
{
   import scaleform.clik.controls.ListItemRenderer;
   import net.wg.infrastructure.interfaces.entity.IDropItem;
   import flash.events.MouseEvent;
   import net.wg.gui.components.controls.TextFieldShort;
   import flash.text.TextField;
   import flash.geom.ColorTransform;
   import net.wg.gui.components.controls.UILoaderAlt;
   import net.wg.gui.components.controls.VoiceWave;
   import scaleform.clik.utils.Constraints;
   import net.wg.infrastructure.interfaces.entity.IDisposable;
   import net.wg.data.VO.TrainingRoomRendererVO;
   import net.wg.data.components.BattleResultsCIGenerator;
   import scaleform.clik.constants.InvalidationType;
   import net.wg.gui.prebattle.squad.MessengerUtils;
   import scaleform.clik.data.ListData;


   public class TrainingPlayerItemRenderer extends ListItemRenderer implements IDropItem
   {
          
      public function TrainingPlayerItemRenderer() {
         super();
      }

      private static const GOLD_COLOR:Number = 16761699;

      private static const NAME_COLOR:Number = 13224374;

      private static const VEHICLE_COLOR:Number = 8092009;

      private static function hideToolTip(param1:MouseEvent) : void {
         App.toolTipMgr.hide();
      }

      public var nameField:TextFieldShort;

      public var vehicleField:TextField;

      public var vehicleLevelField:TextField;

      public var stateField:TextField;

      private var defColorTrans:ColorTransform;

      public var iconLoader:UILoaderAlt;

      public var voiceWave:VoiceWave;

      override protected function configUI() : void {
         super.configUI();
         if(!constraintsDisabled)
         {
            constraints.addElement(this.vehicleField.name,this.vehicleField,Constraints.RIGHT);
         }
         this.defColorTrans = this.iconLoader.transform.colorTransform;
         this.voiceWave.visible = App.voiceChatMgr.isVOIPEnabledS();
         selectable = false;
         addEventListener(MouseEvent.MOUSE_DOWN,hideToolTip,false,0,true);
         addEventListener(MouseEvent.ROLL_OUT,hideToolTip,false,0,true);
         addEventListener(MouseEvent.ROLL_OVER,this.showToolTip,false,0,true);
      }

      override public function dispose() : void {
         removeEventListener(MouseEvent.MOUSE_DOWN,hideToolTip,false);
         removeEventListener(MouseEvent.ROLL_OUT,hideToolTip,false);
         removeEventListener(MouseEvent.ROLL_OVER,this.showToolTip,false);
         if(this.nameField)
         {
            this.nameField.dispose();
            this.nameField = null;
         }
         this.vehicleField = null;
         this.vehicleLevelField = null;
         this.stateField = null;
         this.defColorTrans = null;
         if(this.iconLoader)
         {
            this.iconLoader.dispose();
            this.iconLoader = null;
         }
         if(this.voiceWave)
         {
            this.voiceWave.dispose();
            this.voiceWave = null;
         }
         if((_data) && _data  is  IDisposable)
         {
            IDisposable(_data).dispose();
         }
         _data = null;
         super.dispose();
      }

      private function showToolTip(param1:MouseEvent) : void {
         if(data)
         {
            App.toolTipMgr.show(TrainingRoomRendererVO(data).fullName);
         }
      }

      public function speak(param1:Boolean, param2:Boolean) : void {
         if(param1)
         {
            param2 = false;
         }
         if(this.voiceWave)
         {
            this.voiceWave.setSpeaking(param1,param2);
         }
      }

      override public function set selected(param1:Boolean) : void {
         if(_selectable)
         {
            super.selected = param1;
         }
      }

      override protected function handleMouseRelease(param1:MouseEvent) : void {
         if((App.utils.commons.isRightButton(param1)) && (data))
         {
            App.toolTipMgr.hide();
            App.contextMenuMgr.showUserContextMenu(this,data,new BattleResultsCIGenerator(false));
         }
         super.handleMouseRelease(param1);
      }

      override public function setData(param1:Object) : void {
         var _loc2_:TrainingRoomRendererVO = null;
         this.data = param1;
         if(param1)
         {
            _loc2_ = TrainingRoomRendererVO(param1);
            this.iconLoader.visible = !(_loc2_.icon == "");
            if(!(this.iconLoader.source == _loc2_.icon) && (_loc2_.icon))
            {
               this.iconLoader.source = _loc2_.icon;
            }
         }
         invalidate(InvalidationType.DATA);
      }

      override protected function draw() : void {
         var _loc1_:TrainingRoomRendererVO = null;
         var _loc2_:ColorTransform = null;
         super.draw();
         if(_baseDisposed)
         {
            return;
         }
         if(isInvalid(InvalidationType.DATA))
         {
            if(data)
            {
               _loc1_ = TrainingRoomRendererVO(data);
               this.vehicleField.text = _loc1_.vShortName;
               this.stateField.text = _loc1_.stateString;
               this.vehicleLevelField.text = String(_loc1_.vLevel);
               enabled = true;
               if(_loc1_.himself)
               {
                  this.nameField.textColor = GOLD_COLOR;
                  this.vehicleField.textColor = GOLD_COLOR;
                  _loc2_ = new ColorTransform();
                  _loc2_.redOffset = 21;
                  _loc2_.greenOffset = 9;
                  _loc2_.blueMultiplier = 0.51;
                  _loc2_.greenMultiplier = 0.87;
                  this.iconLoader.transform.colorTransform = _loc2_;
               }
               else
               {
                  this.nameField.textColor = NAME_COLOR;
                  this.vehicleField.textColor = VEHICLE_COLOR;
                  this.iconLoader.transform.colorTransform = this.defColorTrans;
               }
               this.speak(_loc1_.isPlayerSpeaking,true);
               if(this.voiceWave)
               {
                  this.voiceWave.setMuted(MessengerUtils.isMuted(data));
               }
               this.nameField.label = _loc1_.fullName;
            }
            else
            {
               if(this.nameField)
               {
                  this.nameField.label = "";
               }
               if(this.vehicleField)
               {
                  this.vehicleField.text = "";
               }
               if(this.vehicleLevelField)
               {
                  this.vehicleLevelField.text = "";
               }
               if(this.stateField)
               {
                  this.stateField.text = "";
               }
               if(this.iconLoader)
               {
                  this.iconLoader.visible = false;
               }
               enabled = false;
               this.speak(false,true);
               if(this.voiceWave)
               {
                  this.voiceWave.setMuted(false);
               }
            }
         }
      }

      override public function setListData(param1:ListData) : void {
         index = param1.index;
         this.selected = param1.selected;
      }
   }

}