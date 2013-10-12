package net.wg.gui.lobby.profile.components
{
   import scaleform.clik.core.UIComponent;
   import net.wg.gui.components.controls.UILoaderAlt;


   public class LineIconText extends UIComponent
   {
          
      public function LineIconText() {
         super();
      }

      public var textComponent:UnderlinedText;

      public var icon:UILoaderAlt;

      protected var _text:String = "";

      protected var isTextChanged:Boolean;

      private var isPaddingChanged:Boolean;

      private var _iconSource:String;

      private var isIconSourceChanged:Boolean;

      public function set text(param1:String) : void {
         this._text = param1;
         this.isTextChanged = true;
         invalidate();
      }

      public function get text() : String {
         return this._text;
      }

      override protected function draw() : void {
         super.draw();
         if(this.isTextChanged)
         {
            this.isTextChanged = false;
            this.applyText();
         }
         if(this.isPaddingChanged)
         {
            this.isPaddingChanged = false;
         }
         if(this.isIconSourceChanged)
         {
            this.icon.source = this._iconSource;
         }
      }

      protected function applyText() : void {
         this.textComponent.text = this._text;
      }

      public function get iconSource() : String {
         return this._iconSource;
      }

      public function set iconSource(param1:String) : void {
         this._iconSource = param1;
         this.isIconSourceChanged = true;
         invalidate();
      }
   }

}