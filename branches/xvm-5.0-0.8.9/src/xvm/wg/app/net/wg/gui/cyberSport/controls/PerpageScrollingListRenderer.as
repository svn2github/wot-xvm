package net.wg.gui.cyberSport.controls
{
   import net.wg.gui.components.controls.SoundListItemRenderer;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import net.wg.gui.cyberSport.controls.events.CSComponentEvent;
   import net.wg.gui.cyberSport.vo.CSCommandVO;
   import scaleform.clik.constants.InvalidationType;


   public class PerpageScrollingListRenderer extends SoundListItemRenderer
   {
          
      public function PerpageScrollingListRenderer() {
         super();
         preventAutosizing = true;
      }

      public var requestButton:GrayButtonText;

      public var commander:TextField = null;

      public var commandSize:TextField = null;

      public var commandMaxSize:TextField = null;

      public var effency:TextField = null;

      public var serverTF:TextField;

      public var freezeIcon:MovieClip;

      public var restrictionIcon:MovieClip;

      public var inBattleMC:MovieClip;

      override public function setData(param1:Object) : void {
         this.data = param1;
         App.toolTipMgr.hide();
         invalidateData();
      }

      override protected function configUI() : void {
         super.configUI();
         this.commander.mouseEnabled = false;
         this.commandSize.mouseEnabled = false;
         this.commandMaxSize.mouseEnabled = false;
         this.effency.mouseEnabled = false;
         this.inBattleMC.mouseEnabled = false;
         this.serverTF.mouseEnabled = false;
         this.freezeIcon.useHandCursor = this.freezeIcon.buttonMode = true;
         this.restrictionIcon.useHandCursor = this.restrictionIcon.buttonMode = true;
         this.requestButton.addEventListener(MouseEvent.CLICK,this.onRequestButtonClickHandler);
         this.freezeIcon.addEventListener(MouseEvent.ROLL_OVER,this.onControlRollOver);
         this.freezeIcon.addEventListener(MouseEvent.ROLL_OUT,this.onControlRollOut);
         this.restrictionIcon.addEventListener(MouseEvent.ROLL_OVER,this.onControlRollOver);
         this.restrictionIcon.addEventListener(MouseEvent.ROLL_OUT,this.onControlRollOut);
      }

      override public function dispose() : void {
         this.requestButton.removeEventListener(MouseEvent.CLICK,this.onRequestButtonClickHandler);
         this.freezeIcon.removeEventListener(MouseEvent.ROLL_OVER,this.onControlRollOver);
         this.freezeIcon.removeEventListener(MouseEvent.ROLL_OUT,this.onControlRollOut);
         this.restrictionIcon.removeEventListener(MouseEvent.ROLL_OVER,this.onControlRollOver);
         this.restrictionIcon.removeEventListener(MouseEvent.ROLL_OUT,this.onControlRollOut);
         this.requestButton.dispose();
         this.requestButton = null;
         this.commander = null;
         this.commandSize = null;
         this.commandMaxSize = null;
         this.effency = null;
         super.dispose();
      }

      private function onControlRollOver(param1:MouseEvent) : void {
         App.toolTipMgr.showComplex(param1.currentTarget == this.freezeIcon?TOOLTIPS.SETTINGSICON_FREEZED:TOOLTIPS.SETTINGSICON_CONDITIONS);
      }

      private function onControlRollOut(param1:MouseEvent=null) : void {
         App.toolTipMgr.hide();
         dispatchEvent(new MouseEvent(MouseEvent.ROLL_OVER));
      }

      private function onRequestButtonClickHandler(param1:MouseEvent) : void {
         param1.stopImmediatePropagation();
         dispatchEvent(new CSComponentEvent(CSComponentEvent.NEW_PAGE_REQUEST,data));
      }

      override public function set enabled(param1:Boolean) : void {
         super.enabled = param1;
         mouseEnabled = true;
         mouseChildren = true;
      }

      override protected function draw() : void {
         var _loc1_:CSCommandVO = null;
         mouseEnabled = true;
         mouseChildren = true;
         super.draw();
         if(isInvalid(InvalidationType.DATA))
         {
            _loc1_ = CSCommandVO(data);
            if(_loc1_)
            {
               this.visible = true;
               if(_loc1_.isLoadMoreState)
               {
                  gotoAndStop("last");
                  this.requestButton.visible = true;
                  this.setControlsVisible(false);
               }
               else
               {
                  this.setControlsVisible(true);
                  this.requestButton.visible = false;
                  this.commander.text = _loc1_.creator;
                  this.effency.text = App.utils.locale.integer(_loc1_.rating);
                  this.commandSize.text = String(_loc1_.playersCount);
                  this.commandMaxSize.text = "/" + String(_loc1_.commandSize);
                  this.inBattleMC.visible = false;
                  this.freezeIcon.visible = _loc1_.isFreezed;
                  this.restrictionIcon.visible = _loc1_.isRestricted;
                  if(_loc1_.server)
                  {
                     this.serverTF.text = _loc1_.server;
                     this.serverTF.visible = true;
                  }
                  else
                  {
                     this.serverTF.visible = false;
                  }
               }
            }
            else
            {
               this.visible = false;
            }
         }
      }

      private function setControlsVisible(param1:Boolean) : void {
         this.commander.visible = param1;
         this.effency.visible = param1;
         this.commandSize.visible = param1;
         this.commandMaxSize.visible = param1;
         this.inBattleMC.visible = param1;
         this.freezeIcon.visible = param1;
         this.restrictionIcon.visible = param1;
         this.serverTF.visible = param1;
      }
   }

}