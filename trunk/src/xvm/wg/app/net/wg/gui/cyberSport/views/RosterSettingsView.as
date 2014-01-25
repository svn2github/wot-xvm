package net.wg.gui.cyberSport.views
{
   import scaleform.clik.core.UIComponent;
   import flash.text.TextField;
   import net.wg.gui.components.controls.SoundButtonEx;
   import net.wg.gui.cyberSport.controls.RosterSettingsNumerationBlock;
   import __AS3__.vec.Vector;
   import net.wg.gui.cyberSport.vo.UnitSlotVO;
   import scaleform.clik.motion.Tween;
   import net.wg.gui.cyberSport.controls.events.CSComponentEvent;
   import scaleform.clik.constants.InvalidationType;
   import scaleform.clik.events.ButtonEvent;
   import fl.transitions.easing.Strong;


   public class RosterSettingsView extends UIComponent
   {
          
      public function RosterSettingsView() {
         this.tweens = new Vector.<Tween>();
         super();
         this.slot1.visible = false;
         this.slots = new Vector.<AnimatedRosterSettingsView>();
         this.slots.push(this.slot1);
         this.slots.push(this.slot2);
         this.slots.push(this.slot3);
         this.slots.push(this.slot4);
         this.slots.push(this.slot5);
         this.slots.push(this.slot6);
         this.slots.push(this.slot7);
         this.slotsLength = this.slots.length;
         var _loc1_:* = 0;
         while(_loc1_ < this.slotsLength)
         {
            AnimatedRosterSettingsView(this.slots[_loc1_]).addEventListener(CSComponentEvent.CLICK_SLOT_SETTINGS_BTN,this.clickRosterSettingsBtnHandler);
            _loc1_++;
         }
      }

      public var headerText:TextField;

      public var secondText:TextField;

      public var slot1:AnimatedRosterSettingsView;

      public var slot2:AnimatedRosterSettingsView;

      public var slot3:AnimatedRosterSettingsView;

      public var slot4:AnimatedRosterSettingsView;

      public var slot5:AnimatedRosterSettingsView;

      public var slot6:AnimatedRosterSettingsView;

      public var slot7:AnimatedRosterSettingsView;

      public var submitBtn:SoundButtonEx;

      public var cancelBtn:SoundButtonEx;

      public var numerationBlock:RosterSettingsNumerationBlock;

      private var slots:Vector.<AnimatedRosterSettingsView>;

      private var slotsLength:uint = 0;

      private var _models:Vector.<UnitSlotVO>;

      private var tweens:Vector.<Tween>;

      private var _animationDuration:Number = 1000;

      private var _innerAnmDuration:Number = 1000;

      private var _buttonYOffset:int = 490;

      private var _setSelectedSettings:Array = null;

      private function clickRosterSettingsBtnHandler(param1:CSComponentEvent) : void {
         var _loc2_:Array = [];
         var _loc3_:* = 0;
         while(_loc3_ < this.slotsLength)
         {
            if(param1.target == this.slots[_loc3_])
            {
               _loc2_.push(_loc3_,param1.data[0],param1.data[1]);
            }
            _loc3_++;
         }
         dispatchEvent(new CSComponentEvent(CSComponentEvent.SHOW_SETTINGS_ROSTER_WND,_loc2_));
      }

      public function set buttonYOffset(param1:Number) : void {
         this._buttonYOffset = param1;
      }

      public function get buttonYOffset() : Number {
         return this._buttonYOffset;
      }

      public function set animationDuration(param1:Number) : void {
         this._animationDuration = param1;
      }

      public function get animationDuration() : Number {
         return this._animationDuration;
      }

      public function set innerAnmDuration(param1:Number) : void {
         this._innerAnmDuration = param1;
      }

      public function get innerAnmDuration() : Number {
         return this._innerAnmDuration;
      }

      public function setData(param1:Vector.<UnitSlotVO>) : void {
         if(param1 == null)
         {
            return;
         }
         this._models = param1;
         invalidate(InvalidationType.DATA);
      }

      public function get chooseRoster() : Array {
         return [];
      }

      private function afterSetData() : void {
         var _loc1_:* = 0;
         while(_loc1_ < this._models.length)
         {
            if(this._models[_loc1_].restrictions.length > 0)
            {
               this.slots[_loc1_].setData(this._models[_loc1_].restrictions[0],this._models[_loc1_].restrictions[1]);
            }
            else
            {
               this.slots[_loc1_].setData(null,null);
            }
            _loc1_++;
         }
      }

      public function set setSelectedSettings(param1:Array) : void {
         this._setSelectedSettings = param1;
         var _loc2_:* = 0;
         while(_loc2_ < this.slotsLength)
         {
            if(_loc2_ == this._setSelectedSettings[0])
            {
               this.slots[_loc2_].setSelectedSettings(this._setSelectedSettings[1],this._setSelectedSettings[2]);
            }
            _loc2_++;
         }
      }

      override protected function onDispose() : void {
         super.onDispose();
         this.submitBtn.removeEventListener(ButtonEvent.CLICK,this.submitBtn_buttonClickHandler);
         this.cancelBtn.removeEventListener(ButtonEvent.CLICK,this.cancelBtn_buttonClickHandler);
         this.submitBtn.dispose();
         this.cancelBtn.dispose();
         var _loc1_:* = 0;
         while(_loc1_ < this.slotsLength)
         {
            AnimatedRosterSettingsView(this.slots[_loc1_]).removeEventListener(CSComponentEvent.CLICK_SLOT_SETTINGS_BTN,this.clickRosterSettingsBtnHandler);
            _loc1_++;
         }
         while(this.slots.length > 0)
         {
            this.slots.shift();
         }
      }

      override protected function configUI() : void {
         super.configUI();
         this.submitBtn.y = this.buttonYOffset;
         this.cancelBtn.y = this.buttonYOffset;
         this.headerText.mouseEnabled = false;
         this.headerText.mouseEnabled = false;
         this.headerText.text = CYBERSPORT.WINDOW_UNIT_SLOTHEADERTEXT;
         this.secondText.text = CYBERSPORT.WINDOW_UNIT_SLOTSECONDTEXT;
         this.submitBtn.label = CYBERSPORT.WINDOW_UNIT_APPLYSLOTSSETTINGS;
         this.cancelBtn.label = CYBERSPORT.WINDOW_UNIT_CANCELSLOTSETTINGS;
         this.submitBtn.addEventListener(ButtonEvent.CLICK,this.submitBtn_buttonClickHandler);
         this.cancelBtn.addEventListener(ButtonEvent.CLICK,this.cancelBtn_buttonClickHandler);
      }

      override protected function draw() : void {
         super.draw();
         if((isInvalid(InvalidationType.DATA)) && (this._models))
         {
            this.afterSetData();
         }
      }

      public function animationIn() : void {
         this.setAnimationProperties(true);
         this.setAnimationRules({"alpha":1});
      }

      public function animationOut() : void {
         this.setAnimationProperties(false);
         this.setAnimationRules({"alpha":0});
      }

      private function setAnimationRules(param1:Object) : void {
         if(param1 == null)
         {
            return;
         }
         this.stopPrevioseAnimation();
         this.tweens = Vector.<Tween>([new Tween(this.animationDuration,this,param1,
            {
               "paused":false,
               "ease":Strong.easeOut,
               "onComplete":null
            }
         )]);
      }

      private function stopPrevioseAnimation() : void {
         var _loc1_:Tween = null;
         if(this.tweens)
         {
            for each (_loc1_ in this.tweens)
            {
               _loc1_.paused = true;
               _loc1_ = null;
            }
         }
      }

      private function setAnimationProperties(param1:Boolean=false) : void {
         var _loc2_:* = 0;
         while(_loc2_ < this.slotsLength)
         {
            AnimatedRosterSettingsView(this.slots[_loc2_]).animationDuration = this.innerAnmDuration;
            if(param1)
            {
               AnimatedRosterSettingsView(this.slots[_loc2_]).animationIn();
            }
            else
            {
               AnimatedRosterSettingsView(this.slots[_loc2_]).animationOut();
            }
            _loc2_++;
         }
      }

      private function submitBtn_buttonClickHandler(param1:ButtonEvent) : void {
         dispatchEvent(new CSComponentEvent(CSComponentEvent.APPLY_ROSTER_SETTINGS));
      }

      public function getSettingsResults() : Array {
         var _loc1_:Array = [];
         var _loc2_:* = 0;
         while(_loc2_ < this.slotsLength)
         {
            _loc1_.push(AnimatedRosterSettingsView(this.slots[_loc2_]).getModels());
            _loc2_++;
         }
         return _loc1_;
      }

      private function cancelBtn_buttonClickHandler(param1:ButtonEvent) : void {
         invalidate(InvalidationType.DATA);
         dispatchEvent(new CSComponentEvent(CSComponentEvent.CANCEL_ROSTER_SETTINGS));
      }
   }

}