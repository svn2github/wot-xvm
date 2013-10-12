package net.wg.gui.lobby.profile.components
{
   import flash.text.TextField;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import net.wg.data.managers.IToolTipParams;


   public class LineDescrIconText extends LineIconText
   {
          
      public function LineDescrIconText() {
         super();
         buttonMode = true;
      }

      private static function hideToolTip() : void {
         App.toolTipMgr.hide();
      }

      private var _description:String = "";

      private var isDescrInvalid:Boolean;

      public var descriptionTextField:TextField;

      private var _tooltip:String = null;

      private var _fontSize:uint;

      private var isFontSizeInv:Boolean;

      override protected function configUI() : void {
         super.configUI();
         this.descriptionTextField.multiline = true;
      }

      public function get description() : String {
         return this._description;
      }

      public function set description(param1:String) : void {
         this._description = param1;
         this.isDescrInvalid = true;
         invalidate();
      }

      override public function get width() : Number {
         return Math.max(textComponent.x,this.descriptionTextField.width);
      }

      override protected function draw() : void {
         super.draw();
         if(this.isDescrInvalid)
         {
            this.isDescrInvalid = false;
            this.descriptionTextField.text = this._description;
            dispatchEvent(new Event(Event.RESIZE,true));
            this.descriptionTextField.autoSize = TextFieldAutoSize.LEFT;
         }
         if(this.isFontSizeInv)
         {
            this.isFontSizeInv = false;
            textComponent.fontSize = this._fontSize;
         }
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

      override public function dispose() : void {
         this.disposeHandlers();
         super.dispose();
      }

      private function disposeHandlers() : void {
         removeEventListener(MouseEvent.ROLL_OVER,this.mouseRollOverHandler);
         removeEventListener(MouseEvent.ROLL_OUT,this.mouseRollOutHandler);
      }

      public function get tooltip() : String {
         return this._tooltip;
      }

      public function set tooltip(param1:String) : void {
         this._tooltip = param1;
         this.disposeHandlers();
         if(this._tooltip)
         {
            addEventListener(MouseEvent.ROLL_OVER,this.mouseRollOverHandler,false,0,true);
            addEventListener(MouseEvent.ROLL_OUT,this.mouseRollOutHandler,false,0,true);
         }
      }

      public function set fontSize(param1:uint) : void {
         this._fontSize = param1;
         this.isFontSizeInv = true;
         invalidate();
      }
   }

}