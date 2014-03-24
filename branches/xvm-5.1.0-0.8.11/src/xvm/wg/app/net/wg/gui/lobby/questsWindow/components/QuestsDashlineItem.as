package net.wg.gui.lobby.questsWindow.components
{
   import net.wg.gui.lobby.profile.components.DashLineTextItem;
   import net.wg.infrastructure.interfaces.IResizableContent;
   import flash.events.MouseEvent;
   import net.wg.gui.components.controls.SoundButton;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import net.wg.gui.lobby.questsWindow.data.QuestDashlineItemVO;
   import scaleform.clik.events.ButtonEvent;
   import __AS3__.vec.Vector;
   import net.wg.gui.events.QuestEvent;
   import flash.text.TextFieldAutoSize;
   import scaleform.clik.constants.InvalidationType;


   public class QuestsDashlineItem extends DashLineTextItem implements IResizableContent
   {
          
      public function QuestsDashlineItem() {
         super();
         dashLine.visible = false;
      }

      private static const INV_NOT_DONE:String = "invNotDone";

      private static const INV_LINK_ID:String = "invLinkID";

      public static const MIN_DASHLINE_WIDTH:int = 20;

      public static const TEXT_PADDING:int = 5;

      private static function hideTooltip(param1:MouseEvent) : void {
         App.toolTipMgr.hide();
      }

      private var _isReadyForLayout:Boolean = false;

      public var linkBtn:SoundButton;

      private var _linkID:String = "";

      private var _isNotDone:Boolean = false;

      public var naMc:MovieClip;

      public var naTF:TextField;

      private var _contentAlign:String = "left";

      private var _isNumerated:Boolean = false;

      public function setData(param1:Object) : void {
         var _loc2_:QuestDashlineItemVO = new QuestDashlineItemVO(param1);
         this.label = _loc2_.label;
         this.linkID = _loc2_.linkID;
         this.isNotDone = _loc2_.isNotDone;
         this.value = _loc2_.value;
      }

      override protected function configUI() : void {
         super.configUI();
         dashLine.visible = false;
         this.linkBtn.visible = false;
         this.linkBtn.focusable = false;
         this.naTF.text = QUESTS.QUESTS_STATUS_NOTDONE;
         this.naMc.visible = false;
         this.naTF.visible = false;
         this.addListeners();
      }

      override protected function onDispose() : void {
         this.removeListeners();
         this.linkBtn.dispose();
         this.linkBtn = null;
         super.onDispose();
      }

      private function addListeners() : void {
         this.linkBtn.addEventListener(ButtonEvent.CLICK,this.linkBtnHandler);
         this.linkBtn.addEventListener(MouseEvent.ROLL_OUT,hideTooltip);
         this.linkBtn.addEventListener(MouseEvent.ROLL_OVER,this.showLinkBtnTooltip);
      }

      private function showLinkBtnTooltip(param1:MouseEvent) : void {
         App.toolTipMgr.show(this.linkBtn.enabled?TOOLTIPS.QUESTS_LINKBTN_TASK:TOOLTIPS.QUESTS_DISABLELINKBTN_TASK);
      }

      public function disableLinkBtns(param1:Vector.<String>) : void {
         this.linkBtn.enabled = !(param1.indexOf(this._linkID) == -1);
         this.linkBtn.mouseEnabled = true;
      }

      private function removeListeners() : void {
         this.linkBtn.removeEventListener(ButtonEvent.CLICK,this.linkBtnHandler);
         this.linkBtn.removeEventListener(MouseEvent.ROLL_OUT,hideTooltip);
         this.linkBtn.removeEventListener(MouseEvent.ROLL_OVER,this.showLinkBtnTooltip);
      }

      private function linkBtnHandler(param1:ButtonEvent) : void {
         App.toolTipMgr.hide();
         dispatchEvent(new QuestEvent(QuestEvent.SELECT_QUEST,this._linkID));
      }

      override protected function draw() : void {
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(isInvalid(VALUE_INV))
         {
            if(_myEnabled)
            {
               gotoAndPlay("up");
               valueTextField.autoSize = TextFieldAutoSize.LEFT;
               valueTextField.htmlText = value;
            }
            else
            {
               gotoAndPlay("disabled");
               valueTextField.autoSize = TextFieldAutoSize.LEFT;
               valueTextField.htmlText = "--";
            }
            if(isInvalid(LABEL_INV))
            {
               labelTextField.autoSize = TextFieldAutoSize.LEFT;
               labelTextField.htmlText = label;
               labelTextField.width = _width - MIN_DASHLINE_WIDTH - valueTextField.width;
               labelTextField.height = labelTextField.textHeight + TEXT_PADDING;
               invalidate(InvalidationType.SIZE);
            }
            if(isInvalid(INV_LINK_ID))
            {
               this.linkBtn.visible = Boolean(this._linkID);
            }
            if(isInvalid(INV_NOT_DONE))
            {
               this.naMc.visible = this.naTF.visible = this._isNotDone;
            }
            invalidate(InvalidationType.SIZE);
         }
         if(isInvalid(InvalidationType.SIZE))
         {
            _loc1_ = Math.round(labelTextField.getLineMetrics(labelTextField.numLines-1).width);
            _loc2_ = Math.round(labelTextField.width);
            _loc3_ = _loc1_;
            _loc4_ = labelTextField.numLines > 1?dashLinePadding:0;
            _loc5_ = Math.round(labelTextField.textHeight + _loc4_);
            if(this._linkID)
            {
               this.linkBtn.x = Math.round(_loc1_ + 5);
               this.linkBtn.y = Math.round(_loc5_ - this.linkBtn.height);
               _loc3_ = Math.round(this.linkBtn.x + this.linkBtn.width);
            }
            if(this._isNotDone)
            {
               if(_loc3_ + this.naMc.width + this.naTF.textWidth < _loc2_)
               {
                  this.naMc.x = Math.round(_loc3_ + (this._linkID?TEXT_PADDING:TEXT_PADDING * 2));
                  this.naMc.y = Math.round(_loc5_ - this.naMc.height - dashLinePadding * 2);
                  this.naTF.x = Math.round(this.naMc.x + this.naMc.width + TEXT_PADDING);
                  this.naTF.y = Math.round(_loc5_ - this.naTF.height + dashLinePadding * 2);
                  _loc3_ = Math.round(this.naTF.x + this.naTF.textWidth);
               }
               else
               {
                  this.naMc.x = 0;
                  this.naMc.y = Math.round(_loc5_ + (this.naTF.textHeight - this.naMc.height));
                  this.naTF.x = Math.round(this.naMc.x + this.naMc.width + TEXT_PADDING);
                  this.naTF.y = _loc5_ + dashLinePadding * 2;
                  _loc3_ = Math.round(this.naTF.x + this.naTF.textWidth);
                  _loc5_ = Math.round(this.naTF.y + this.naTF.textHeight);
               }
            }
            dashLine.width = Math.round(_width - _loc3_ - valueTextField.width - dashLinePadding * 2);
            dashLine.x = Math.round(_loc3_ + dashLinePadding * 2);
            dashLine.y = Math.round(_loc5_ - dashLine.height - dashLinePadding * 2);
            dashLine.validateNow();
            valueTextField.x = Math.round(_width - valueTextField.width);
            valueTextField.y = Math.round(_loc5_ - valueTextField.textHeight);
            valueTextField.visible = dashLine.visible = Boolean(value);
            setSize(this.width,_loc5_ + TEXT_PADDING);
            this._isReadyForLayout = true;
         }
      }

      public function get isReadyForLayout() : Boolean {
         return this._isReadyForLayout;
      }

      public function set isReadyForLayout(param1:Boolean) : void {
         this._isReadyForLayout = param1;
      }

      public function get linkID() : String {
         return this._linkID;
      }

      public function set linkID(param1:String) : void {
         this._linkID = param1;
         invalidate(INV_LINK_ID);
      }

      public function get isNotDone() : Boolean {
         return this._isNotDone;
      }

      public function set isNotDone(param1:Boolean) : void {
         this._isNotDone = param1;
         invalidate(INV_NOT_DONE);
      }

      public function get availableWidth() : Number {
         return this.width;
      }

      public function set availableWidth(param1:Number) : void {
         this.width = param1;
      }

      public function get contentAlign() : String {
         return this._contentAlign;
      }

      public function set contentAlign(param1:String) : void {
         this._contentAlign = param1;
      }

      public function get isNumerated() : Boolean {
         return this._isNumerated;
      }

      public function set isNumerated(param1:Boolean) : void {
         this._isNumerated = param1;
      }
   }

}