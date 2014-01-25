package net.wg.gui.notification
{
   import net.wg.infrastructure.base.meta.impl.SystemMessageDialogMeta;
   import net.wg.infrastructure.base.meta.ISystemMessageDialogMeta;
   import net.wg.gui.components.controls.UILoaderAlt;
   import flash.text.TextField;
   import flash.display.Sprite;
   import net.wg.gui.components.controls.SoundButtonEx;
   import net.wg.infrastructure.interfaces.IWindow;
   import flash.text.TextFieldAutoSize;
   import net.wg.gui.events.UILoaderEvent;
   import scaleform.clik.events.ButtonEvent;
   import scaleform.clik.core.UIComponent;
   import net.wg.gui.components.windows.Window;


   public class SystemMessageDialog extends SystemMessageDialogMeta implements ISystemMessageDialogMeta
   {
          
      public function SystemMessageDialog() {
         super();
         canResize = false;
         isModal = true;
         isCentered = true;
         showWindowBg = false;
         this.visible = false;
      }

      private static const DATA_INVALID:String = "dataInv";

      private static const DIMENSIONS_INVALID:String = "dimInv";

      private static const ICON_POSITION_INV:String = "iconPosInv";

      private static const INIT_DATA_INVALID:String = "initDataInv";

      public var icon:UILoaderAlt;

      public var textField:TextField;

      public var bgMc:Sprite;

      public var closeBtn:SoundButtonEx;

      private var messageData:NotificationInfoVO;

      private var initInfo:NotificationDialogInitInfoVO;

      private var dimensionsInitialized:Boolean;

      override public function setWindow(param1:IWindow) : void {
         super.setWindow(param1);
         if(param1)
         {
            invalidate(DIMENSIONS_INVALID);
            invalidate(INIT_DATA_INVALID);
         }
      }

      public function as_setMessageData(param1:Object) : void {
         this.messageData = new NotificationInfoVO(param1);
         invalidate(DATA_INVALID);
      }

      public function as_setInitData(param1:Object) : void {
         this.initInfo = new NotificationDialogInitInfoVO(param1);
         invalidate(INIT_DATA_INVALID);
      }

      override public function set visible(param1:Boolean) : void {
         super.visible = this.dimensionsInitialized;
      }

      override protected function configUI() : void {
         super.configUI();
         this.textField.autoSize = TextFieldAutoSize.LEFT;
         this.textField.multiline = true;
         this.textField.wordWrap = true;
         this.icon.addEventListener(UILoaderEvent.COMPLETE,this.iconLoadingCompleteHandler,false,0,true);
         this.icon.addEventListener(UILoaderEvent.IOERROR,this.iconLoadingErrorHandler,false,0,true);
         this.closeBtn.addEventListener(ButtonEvent.CLICK,this.closeButtonClickHandler,false,0,true);
      }

      override protected function draw() : void {
         var _loc1_:Array = null;
         var _loc2_:MessageInfoVO = null;
         super.draw();
         if(isInvalid(DATA_INVALID))
         {
            if(this.messageData)
            {
               _loc1_ = this.messageData.auxData;
               if((_loc1_) && _loc1_.length > 1)
               {
                  App.utils.scheduler.scheduleTask(onWindowCloseS,_loc1_[1]);
               }
               _loc2_ = this.messageData.messageVO;
               if(_loc2_.icon)
               {
                  this.icon.source = _loc2_.icon;
               }
               this.textField.htmlText = _loc2_.message;
               invalidate(DIMENSIONS_INVALID);
               invalidate(ICON_POSITION_INV);
            }
         }
         if((isInvalid(DIMENSIONS_INVALID)) && (window))
         {
            this.bgMc.height = Math.round(this.textField.height + this.textField.y * 2);
            this.closeBtn.y = this.bgMc.height + 3;
            this.height = this.closeBtn.y + this.closeBtn.height;
            App.utils.scheduler.envokeInNextFrame(this.refreshWindowSize);
         }
         if(isInvalid(ICON_POSITION_INV))
         {
            if(this.textField.textHeight < this.icon.height)
            {
               this.icon.y = Math.round(this.textField.y + (-this.icon.height + this.textField.height) / 2) + 2;
            }
         }
         if((isInvalid(INIT_DATA_INVALID)) && (window))
         {
            window.title = this.initInfo.title;
            this.closeBtn.label = this.initInfo.closeBtnTitle;
         }
      }

      override protected function onDispose() : void {
         App.utils.scheduler.cancelTask(onWindowCloseS);
         this.icon.removeEventListener(UILoaderEvent.COMPLETE,this.iconLoadingCompleteHandler);
         this.icon.removeEventListener(UILoaderEvent.IOERROR,this.iconLoadingErrorHandler);
         this.closeBtn.removeEventListener(ButtonEvent.CLICK,this.closeButtonClickHandler);
         super.onDispose();
      }

      private function refreshWindowSize() : void {
         UIComponent(window).invalidate(Window.INVALID_SRC_VIEW);
         this.dimensionsInitialized = true;
         this.visible = this.dimensionsInitialized;
         window.validateNow();
      }

      private function closeButtonClickHandler(param1:ButtonEvent) : void {
         onWindowCloseS();
      }

      private function iconLoadingErrorHandler(param1:UILoaderEvent) : void {
         this.icon.alpha = 0;
      }

      private function iconLoadingCompleteHandler(param1:UILoaderEvent) : void {
         var _loc2_:* = 3;
         this.icon.x = _loc2_ + Math.round((this.textField.x - _loc2_ - this.icon.width) / 2);
         invalidate(ICON_POSITION_INV);
      }
   }

}