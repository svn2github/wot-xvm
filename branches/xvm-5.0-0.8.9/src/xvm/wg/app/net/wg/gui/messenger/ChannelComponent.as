package net.wg.gui.messenger
{
   import net.wg.gui.messenger.meta.impl.ChannelComponentMeta;
   import net.wg.gui.messenger.meta.IChannelComponentMeta;
   import scaleform.clik.interfaces.IUIComponent;
   import net.wg.gui.components.controls.ScrollBar;
   import net.wg.gui.components.advanced.TextAreaSimple;
   import net.wg.gui.components.controls.SoundButtonEx;
   import net.wg.gui.components.controls.TextInput;
   import scaleform.clik.events.ButtonEvent;
   import scaleform.clik.events.InputEvent;
   import net.wg.data.constants.SoundTypes;
   import scaleform.clik.ui.InputDetails;
   import flash.ui.Keyboard;
   import scaleform.clik.constants.InputValue;


   public class ChannelComponent extends ChannelComponentMeta implements IChannelComponentMeta, IUIComponent
   {
          
      public function ChannelComponent() {
         super();
      }

      private static const INVALIDATE_CONTROLS:String = "invalidateControls";

      private static const INVALIDATE_HISTORY:String = "invalidateHistory";

      public var messageAreaScrollBar:ScrollBar = null;

      public var messageArea:TextAreaSimple = null;

      public var sendButton:SoundButtonEx = null;

      public var messageInput:TextInput = null;

      private var _isJoined:Boolean = false;

      override protected function onPopulate() : void {
         super.onPopulate();
         this.messageInput.maxChars = getMessageMaxLengthS();
         this._isJoined = isJoinedS();
         invalidate(INVALIDATE_CONTROLS);
         if(this._isJoined)
         {
            invalidate(INVALIDATE_HISTORY);
         }
      }

      override protected function configUI() : void {
         super.configUI();
         var _loc1_:SmileyMap = new SmileyMap();
         this.sendButton.addEventListener(ButtonEvent.CLICK,this.onSendBtnClick,false,0,true);
         this.messageInput.addEventListener(InputEvent.INPUT,this.handleTextInput);
         this.messageArea.autoScroll = true;
         this.messageArea.htmlText = "";
         this.messageArea.editable = false;
         this.messageArea.selectable = true;
         this.messageArea.textField.selectable = true;
         this.setFocusToInput();
         _loc1_.mapText(this.messageArea.textField);
         this.sendButton.soundType = SoundTypes.NORMAL_BTN;
      }

      public function setFocusToInput() : void {
         if((initialized) && (isJoinedS()))
         {
            this.updateFocus();
         }
      }

      private function updateFocus() : void {
         if((this.messageInput) && (this.messageInput.enabled) && this.messageInput.focused == 0)
         {
            this.messageInput.validateNow();
            App.utils.focusHandler.setFocus(this.messageInput);
         }
      }

      public function as_setJoined(param1:Boolean) : void {
         this._isJoined = param1;
         this.enableControls(this._isJoined);
         if(this._isJoined)
         {
            this.setHistory();
         }
      }

      private function enableControls(param1:Boolean) : void {
         this.messageInput.enabled = param1;
         this.sendButton.enabled = param1;
      }

      public function as_addMessage(param1:String) : void {
         if(param1)
         {
            this.messageArea.appendHtmlResetPosition(param1 + "\n");
            if(this.messageArea.textField.scrollV < this.messageArea.textField.maxScrollV)
            {
               this.messageArea.safePosition = true;
            }
         }
      }

      override protected function onDispose() : void {
         super.onDispose();
         this.sendButton.removeEventListener(ButtonEvent.CLICK,this.onSendBtnClick);
         this.sendButton.dispose();
         this.messageInput.removeEventListener(InputEvent.INPUT,this.handleTextInput);
         this.messageArea.dispose();
         if(this.messageAreaScrollBar)
         {
            this.messageAreaScrollBar.dispose();
         }
      }

      private function onSendBtnClick(param1:ButtonEvent) : void {
         this.doMessage();
         this.setFocusToInput();
      }

      private function doMessage() : void {
         if(this.messageInput.text)
         {
            if(sendMessageS(this.messageInput.text))
            {
               this.messageInput.text = "";
            }
         }
      }

      override protected function draw() : void {
         super.draw();
         if(isInvalid(INVALIDATE_CONTROLS))
         {
            this.enableControls(this._isJoined);
         }
         if((isInvalid(INVALIDATE_HISTORY)) && (this._isJoined))
         {
            this.setHistory();
         }
      }

      private function setHistory() : void {
         if(getHistoryS())
         {
            this.messageArea.htmlText = getHistoryS() + "\n";
         }
         else
         {
            this.messageArea.htmlText = "";
         }
         this.updateFocus();
      }

      private function handleTextInput(param1:InputEvent) : void {
         var _loc2_:InputDetails = param1.details;
         if(param1.details.code == Keyboard.ENTER && _loc2_.value == InputValue.KEY_UP)
         {
            param1.handled = true;
            this.doMessage();
         }
      }
   }

}