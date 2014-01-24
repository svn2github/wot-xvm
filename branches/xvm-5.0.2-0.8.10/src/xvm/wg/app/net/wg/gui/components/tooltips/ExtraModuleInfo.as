package net.wg.gui.components.tooltips
{
   import net.wg.gui.lobby.profile.components.SimpleLoader;
   import flash.text.TextField;
   import flash.display.DisplayObject;
   import flash.text.TextFormat;
   import flash.text.StyleSheet;
   import flash.text.TextFieldAutoSize;


   public class ExtraModuleInfo extends SimpleLoader
   {
          
      public function ExtraModuleInfo(param1:TextFormat, param2:StyleSheet=null) {
         super();
         this._textField = new TextField();
         this._textField.autoSize = TextFieldAutoSize.LEFT;
         this._textField.setTextFormat(param1);
         if(param2)
         {
            this._textField.styleSheet = param2;
         }
         addChild(this._textField);
      }

      private var _textField:TextField;

      public function setData(param1:String, param2:String) : void {
         disposeLoader();
         this._textField.htmlText = param2;
         this.startLoading(param1);
      }

      override protected function startLoading(param1:String) : void {
         super.startLoading(param1);
         if(loader)
         {
            loader.parent.setChildIndex(loader,0);
         }
      }

      override protected function onLoadingComplete() : void {
         super.onLoadingComplete();
         this.layoutComponents();
      }

      private function layoutComponents() : void {
         var _loc1_:uint = 0;
         var _loc4_:DisplayObject = null;
         _loc1_ = 0;
         var _loc2_:uint = 5;
         var _loc3_:* = 0;
         while(_loc3_ < numChildren)
         {
            _loc4_ = getChildAt(_loc3_);
            _loc4_.y = Math.round((height - _loc4_.height) / 2);
            _loc4_.x = _loc1_;
            _loc1_ = _loc1_ + Math.round(_loc2_ + _loc4_.width);
            _loc3_++;
         }
      }
   }

}