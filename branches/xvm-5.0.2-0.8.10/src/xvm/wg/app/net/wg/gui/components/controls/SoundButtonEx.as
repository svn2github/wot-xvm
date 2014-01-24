package net.wg.gui.components.controls
{
   import net.wg.infrastructure.interfaces.IHelpLayoutComponent;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import scaleform.clik.utils.Constraints;
   import flash.events.MouseEvent;
   import net.wg.gui.events.StateManagerEvent;
   import scaleform.clik.events.ComponentEvent;
   import scaleform.clik.utils.ConstrainedElement;
   import scaleform.clik.constants.InvalidationType;
   import flash.text.TextFieldAutoSize;


   public class SoundButtonEx extends SoundButton implements IHelpLayoutComponent
   {
          
      public function SoundButtonEx() {
         super();
      }

      protected var _tooltip:String = null;

      public var helpText:String = "";

      public var helpDirection:String = "T";

      public var helpConnectorLength:Number = 12;

      public var _fillPadding:Number = 0;

      protected var _paddingHorizontal:Number = 5;

      private var _helpLayout:DisplayObject = null;

      public var blurTextField:TextField;

      public var disableMc:BitmapFill;

      public var bgMc:MovieClip;

      public var textField1:TextField;

      public var filtersMC:MovieClip;

      public var _textColor:Number;

      override protected function configUI() : void {
         super.configUI();
         if(!constraintsDisabled)
         {
            if(this.textField1 != null)
            {
               constraints.addElement("textField1",this.textField1,Constraints.ALL);
            }
         }
         addEventListener(MouseEvent.ROLL_OVER,this.showTooltip);
         addEventListener(MouseEvent.ROLL_OUT,this.hideTooltip);
         addEventListener(MouseEvent.MOUSE_DOWN,this.handleMouseDown);
         if(!(focusIndicator == null) && !_focused && focusIndicator.totalFrames == 1)
         {
            focusIndicator.visible = false;
         }
      }

      override public function dispose() : void {
         removeEventListener(MouseEvent.ROLL_OVER,this.showTooltip);
         removeEventListener(MouseEvent.ROLL_OUT,this.hideTooltip);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.handleMouseDown);
         this._helpLayout = null;
         this.blurTextField = null;
         this.textField1 = null;
         if(this.disableMc)
         {
            this.disableMc.dispose();
            this.disableMc = null;
         }
         this.bgMc = null;
         this.filtersMC = null;
         super.dispose();
      }

      public function showTooltip(param1:MouseEvent) : void {
         if((this._tooltip) && (App.toolTipMgr))
         {
            App.toolTipMgr.showComplex(this._tooltip);
         }
      }

      public function hideTooltip(param1:MouseEvent) : void {
         if(App.toolTipMgr)
         {
            App.toolTipMgr.hide();
         }
      }

      public function handleMouseDown(param1:MouseEvent) : void {
         this.hideTooltip(param1);
      }

      public function get fillPadding() : Number {
         return this._fillPadding;
      }

      public function set fillPadding(param1:Number) : void {
         if(param1 == this._fillPadding)
         {
            return;
         }
         this._fillPadding = param1;
      }

      override protected function updateText() : void {
         super.updateText();
         if(_label != null)
         {
            if(this.textField1 != null)
            {
               this.textField1.text = _label;
            }
         }
      }

      public function get textColor() : Number {
         return this._textColor;
      }

      public function set textColor(param1:Number) : void {
         if(this._textColor == param1)
         {
            return;
         }
         this._textColor = param1;
         invalidate();
      }

      public function get tooltip() : String {
         return this._tooltip;
      }

      public function set tooltip(param1:String) : void {
         if(this._tooltip == param1)
         {
            return;
         }
         this._tooltip = param1;
         invalidate();
      }

      public function showHelpLayout() : void {
         var _loc1_:Object = null;
         if(this.helpText.length > 0)
         {
            _loc1_ =
               {
                  "borderWidth":width,
                  "borderHeight":height,
                  "direction":this.helpDirection,
                  "text":this.helpText,
                  "x":0,
                  "y":0,
                  "connectorLength":this.helpConnectorLength
               }
            ;
            this.setHelpLayout(App.utils.helpLayout.create(this.root,_loc1_,this));
         }
      }

      public function closeHelpLayout() : void {
         if(this.getHelpLayout() != null)
         {
            App.utils.helpLayout.destroy(this.getHelpLayout());
         }
      }

      protected function getHelpLayout() : DisplayObject {
         return this._helpLayout;
      }

      protected function setHelpLayout(param1:DisplayObject) : void {
         this._helpLayout = param1;
      }

      override protected function updateAfterStateChange() : void {
         if(!initialized)
         {
            return;
         }
         if(!(constraints == null) && !constraintsDisabled)
         {
            if(textField != null)
            {
               constraints.updateElement("textField",textField);
            }
            if(this.textField1 != null)
            {
               constraints.updateElement("textField1",this.textField1);
            }
         }
         dispatchEvent(new StateManagerEvent(ComponentEvent.STATE_CHANGE,state));
      }

      private function updateDisable() : void {
         if(this.disableMc != null)
         {
            this.disableMc.visible = !enabled;
            this.disableMc.x = this.disableMc.y = this._fillPadding;
            this.disableMc.scaleX = 1 / this.scaleX;
            this.disableMc.scaleY = 1 / this.scaleY;
            this.disableMc.widthFill = Math.round(this.bgMc.width * this.scaleX) - this._fillPadding * 2;
            this.disableMc.heightFill = Math.round(this.bgMc.height * this.scaleY) - this._fillPadding * 2;
         }
      }

      public function get paddingHorizontal() : Number {
         return this._paddingHorizontal;
      }

      public function set paddingHorizontal(param1:Number) : void {
         this._paddingHorizontal = param1;
         if(!(autoSize == "none") && !(textField == null) && (initialized))
         {
            _width = width = this.calculateWidth();
         }
         this.updateAfterStateChange();
      }

      override protected function calculateWidth() : Number {
         var _loc2_:* = NaN;
         var _loc3_:ConstrainedElement = null;
         var _loc1_:Number = actualWidth;
         if(!constraintsDisabled)
         {
            _loc2_ = 0;
            if(autoSize != "none")
            {
               _loc2_ = this._paddingHorizontal;
            }
            _loc3_ = constraints.getElement("textField");
            _loc1_ = Math.ceil(textField.textWidth + _loc3_.left + _loc3_.right + 5 + _loc2_ * 2);
         }
         return _loc1_;
      }

      override public function toString() : String {
         return "[WG SoundButtonEx " + name + "]";
      }

      override protected function draw() : void {
         if(isInvalid(InvalidationType.STATE))
         {
            if(_newFrame)
            {
               gotoAndPlay(_newFrame);
               _newFrame = null;
            }
            if((focusIndicator) && (_newFocusIndicatorFrame))
            {
               focusIndicator.gotoAndPlay(_newFocusIndicatorFrame);
               _newFocusIndicatorFrame = null;
            }
            this.updateAfterStateChange();
            dispatchEvent(new ComponentEvent(ComponentEvent.STATE_CHANGE));
            invalidate(InvalidationType.DATA,InvalidationType.SIZE);
         }
         if(isInvalid(InvalidationType.DATA))
         {
            this.updateText();
            if(autoSize != TextFieldAutoSize.NONE)
            {
               invalidateSize();
            }
         }
         if(isInvalid(InvalidationType.SIZE))
         {
            if(!preventAutosizing)
            {
               alignForAutoSize();
               setActualSize(_width,_height);
            }
            if(!constraintsDisabled)
            {
               constraints.update(_width,_height);
            }
         }
         this.updateDisable();
      }
   }

}