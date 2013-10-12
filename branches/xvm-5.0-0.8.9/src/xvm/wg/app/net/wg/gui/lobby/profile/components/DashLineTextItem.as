package net.wg.gui.lobby.profile.components
{
   import scaleform.clik.core.UIComponent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import net.wg.data.managers.IToolTipParams;
   import scaleform.clik.constants.InvalidationType;


   public class DashLineTextItem extends UIComponent
   {
          
      public function DashLineTextItem() {
         super();
      }

      private static const LABEL_INV:String = "lblInv";

      private static const HTML_VALUE_INV:String = "htmlValInv";

      private static const VALUE_INV:String = "valInv";

      private static const dashLinePadding:uint = 1;

      private static function hideToolTip() : void {
         App.toolTipMgr.hide();
      }

      public var labelTextField:TextField;

      public var valueTextField:TextField;

      public var dashLine:DashLine;

      private var _label:String = "";

      private var _value:String = "0";

      private var _tooltip:String;

      override protected function configUI() : void {
         super.configUI();
         this.labelTextField.autoSize = TextFieldAutoSize.LEFT;
         this.valueTextField.autoSize = TextFieldAutoSize.LEFT;
      }

      protected function mouseRollOutHandler(param1:MouseEvent) : void {
         hideToolTip();
      }

      protected function mouseRollOverHandler(param1:MouseEvent) : void {
         this.showToolTip(null);
      }

      protected function showToolTip(param1:IToolTipParams) : void {
         if(this._tooltip)
         {
            App.toolTipMgr.showComplex(this._tooltip);
         }
      }

      override protected function draw() : void {
         super.draw();
         if(isInvalid(LABEL_INV))
         {
            this.labelTextField.text = this._label;
            invalidate(InvalidationType.SIZE);
         }
         if(isInvalid(VALUE_INV))
         {
            this.valueTextField.htmlText = this._value;
            invalidate(InvalidationType.SIZE);
         }
         if(isInvalid(InvalidationType.SIZE))
         {
            this.dashLine.width = Math.round(_width - this.labelTextField.width - this.valueTextField.width - dashLinePadding * 2);
            this.dashLine.x = Math.round(this.labelTextField.width + dashLinePadding);
            this.valueTextField.x = Math.round(_width - this.valueTextField.width);
         }
      }

      public function get label() : String {
         return this._label;
      }

      public function set label(param1:String) : void {
         this._label = param1;
         invalidate(LABEL_INV);
      }

      public function get value() : String {
         return this._value;
      }

      public function set value(param1:String) : void {
         this._value = param1;
         invalidate(VALUE_INV);
      }

      public function get tooltip() : String {
         return this._tooltip;
      }

      public function set tooltip(param1:String) : void {
         this._tooltip = param1;
         this.disposeListeners();
         if(this._tooltip)
         {
            addEventListener(MouseEvent.ROLL_OVER,this.mouseRollOverHandler,false,0,true);
            addEventListener(MouseEvent.ROLL_OUT,this.mouseRollOutHandler,false,0,true);
         }
      }

      private function disposeListeners() : void {
         removeEventListener(MouseEvent.ROLL_OVER,this.mouseRollOverHandler);
         removeEventListener(MouseEvent.ROLL_OUT,this.mouseRollOutHandler);
      }

      override public function dispose() : void {
         this.disposeListeners();
         super.dispose();
      }
   }

}