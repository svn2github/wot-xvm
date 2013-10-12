package net.wg.gui.login.EULA
{
   import net.wg.infrastructure.base.meta.impl.EULAMeta;
   import net.wg.infrastructure.base.meta.IEULAMeta;
   import net.wg.gui.components.controls.SoundButtonEx;
   import net.wg.gui.components.advanced.TextAreaSimple;
   import net.wg.utils.IAssertable;
   import net.wg.data.constants.Errors;
   import scaleform.clik.utils.Constraints;
   import scaleform.clik.constants.ConstrainMode;
   import scaleform.clik.events.ButtonEvent;
   import flash.events.TextEvent;
   import scaleform.clik.events.InputEvent;
   import scaleform.clik.constants.InputValue;
   import flash.ui.Keyboard;


   public class EULADlg extends EULAMeta implements IEULAMeta
   {
          
      public function EULADlg() {
         super();
         isModal = true;
         isCentered = true;
         canDrag = false;
      }

      public var applyButton:SoundButtonEx = null;

      public var textArea:TextAreaSimple = null;

      private var _myHeight:Number = 0;

      private var _myWidth:Number = 0;

      override public final function setViewSize(param1:Number, param2:Number) : void {
         _originalWidth = width;
         _originalHeight = height;
         setActualSize(width,height);
         setActualScale(1,1);
      }

      override public function updateStage(param1:Number, param2:Number) : void {
         if(this.isAutoResize())
         {
            this.updatePosition();
         }
         else
         {
            super.updateStage(param1,param2);
         }
      }

      public function as_setEULAText(param1:String) : void {
         var _loc5_:* = NaN;
         var _loc2_:* = "Incorrect invoking as_setEULAText!" + "Method must be call once time only!";
         var _loc3_:IAssertable = App.utils.asserter;
         _loc3_.assertNotNull(this.textArea,"content.textArea in EULADlg" + Errors.CANT_NULL);
         _loc3_.assert(!(this.textArea.htmlText == param1),_loc2_);
         var _loc4_:Number = height - this.textArea.height;
         this.textArea.htmlText = param1;
         if(this.isAutoResize())
         {
            this.textArea.validateNow();
            if(this.textArea.height - this.textArea.textField.textHeight > 5)
            {
               this.textArea.height = this.textArea.textField.textHeight + 5;
               this.textArea.validateNow();
               _loc5_ = _loc4_ + this.textArea.height;
               this.dynamicUpdateSize(width,_loc5_);
            }
         }
      }

      override protected function preInitialize() : void {
         constraints = new Constraints(this,ConstrainMode.REFLOW);
      }

      override protected function onPopulate() : void {
         super.onPopulate();
         window.useBottomBtns = true;
         this.applyButton.addEventListener(ButtonEvent.CLICK,this.onApplyBtnClickHandler);
         this.textArea.addEventListener(TextEvent.LINK,this.onLinkClickHandler);
         addEventListener(InputEvent.INPUT,this.handleInput);
         constraints.addElement(this.applyButton.name,this.applyButton,Constraints.BOTTOM | Constraints.RIGHT);
         window.title = DIALOGS.EULA_TITLE;
         this.updateStage(App.appWidth,App.appHeight);
         requestEULATextS();
      }

      override protected function onDispose() : void {
         super.onDispose();
         this.applyButton.removeEventListener(ButtonEvent.CLICK,this.onApplyBtnClickHandler);
         this.textArea.removeEventListener(TextEvent.LINK,this.onLinkClickHandler);
         this.textArea.dispose();
         this.textArea = null;
         this.applyButton.dispose();
         this.applyButton = null;
         removeEventListener(InputEvent.INPUT,this.handleInput);
      }

      protected function isAutoResize() : Boolean {
         return true;
      }

      private function dynamicUpdateSize(param1:Number, param2:Number) : void {
         App.utils.scheduler.envokeInNextFrame(this.dynamicUpdateSizePostponed,param1,param2);
         visible = false;
      }

      private function dynamicUpdateSizePostponed(param1:Number, param2:Number) : void {
         this._myWidth = param1;
         this._myHeight = param2;
         window.updateSize(param1,param2,true);
         this.updatePosition();
         visible = true;
      }

      private function updatePosition() : void {
         window.x = App.appWidth - this._myWidth >> 1;
         window.y = App.appHeight - this._myHeight >> 1;
      }

      private function onApplyBtnClickHandler(param1:ButtonEvent) : void {
         onApplyS();
      }

      private function onLinkClickHandler(param1:TextEvent) : void {
         onLinkClickS(param1.text);
      }

      override public function handleInput(param1:InputEvent) : void {
         super.handleInput(param1);
         if(param1.handled)
         {
            return;
         }
         if(param1.details.value == InputValue.KEY_DOWN && param1.details.code == Keyboard.ENTER)
         {
            onApply();
         }
      }
   }

}