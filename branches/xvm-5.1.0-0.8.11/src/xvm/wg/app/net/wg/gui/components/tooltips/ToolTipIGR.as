package net.wg.gui.components.tooltips
{
   import flash.text.TextField;
   import flash.display.Sprite;
   import net.wg.data.managers.ITooltipProps;
   import net.wg.gui.components.tooltips.VO.IgrVO;
   import net.wg.utils.ILocale;
   import net.wg.gui.components.tooltips.VO.ToolTipBlockResultVO;
   import flash.text.TextFieldAutoSize;
   import net.wg.gui.components.tooltips.helpers.Utils;


   public class ToolTipIGR extends ToolTipSpecial
   {
          
      public function ToolTipIGR() {
         super();
         this.headerTF = content.headerTF;
         this.discrTF = content.discrTF;
         this.whiteBg = content.whiteBg;
      }

      public var headerTF:TextField = null;

      public var discrTF:TextField = null;

      public var whiteBg:Sprite = null;

      private var progressBlock:IgrQuestProgressBlock = null;

      override public function build(param1:Object, param2:ITooltipProps) : void {
         super.build(param1,param2);
      }

      override protected function onDispose() : void {
         if(this.progressBlock)
         {
            content.removeChild(this.progressBlock);
            this.progressBlock = null;
         }
         super.onDispose();
      }

      override public function toString() : String {
         return "[WG ToolTipIGR " + name + "]";
      }

      override protected function configUI() : void {
         super.configUI();
      }

      override protected function redraw() : void {
         var _loc4_:* = NaN;
         var _loc5_:IgrVO = null;
         var _loc9_:IgrQuestBlock = null;
         var _loc1_:ILocale = App.utils.locale;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         _loc4_ = 300;
         _loc5_ = new IgrVO(_data);
         var _loc6_:Separator = null;
         separators = new Vector.<Separator>();
         contentMargin.bottom = 2;
         var _loc7_:ToolTipBlockResultVO = null;
         blockResults = new Vector.<ToolTipBlockResultVO>();
         this.whiteBg.width = 10;
         topPosition = bgShadowMargin.top + contentMargin.top;
         this.headerTF.autoSize = TextFieldAutoSize.LEFT;
         this.headerTF.htmlText = Utils.instance.htmlWrapper(_loc5_.title,Utils.instance.COLOR_HEADER,18,"$TitleFont");
         this.headerTF.width = this.headerTF.textWidth + 5;
         this.headerTF.x = bgShadowMargin.left + contentMargin.left;
         this.headerTF.y = topPosition;
         topPosition = topPosition + (this.headerTF.textHeight + Utils.instance.MARGIN_AFTER_BLOCK);
         _loc4_ = Math.max(_loc4_,this.headerTF.width + bgShadowMargin.horizontal + contentMargin.horizontal);
         _loc6_ = Utils.instance.createSeparate(content);
         _loc6_.y = topPosition | 0;
         separators.push(_loc6_);
         topPosition = topPosition + Utils.instance.MARGIN_AFTER_SEPARATE;
         if(_loc5_.description)
         {
            this.whiteBg.y = topPosition - Utils.instance.MARGIN_AFTER_SEPARATE;
            this.discrTF.autoSize = TextFieldAutoSize.LEFT;
            this.discrTF.htmlText = Utils.instance.htmlWrapper(_loc5_.description,Utils.instance.COLOR_NORMAL,12,"$FieldFont");
            this.discrTF.width = _loc4_ != 0?_loc4_ - bgShadowMargin.left - contentMargin.left:this.discrTF.textWidth + 5;
            this.discrTF.x = bgShadowMargin.left + contentMargin.left;
            this.discrTF.y = topPosition;
            topPosition = topPosition + (this.discrTF.textHeight + Utils.instance.MARGIN_AFTER_BLOCK | 0);
            this.whiteBg.height = topPosition - this.whiteBg.y;
         }
         else
         {
            this.discrTF.x = 0;
            this.discrTF.y = 0;
            this.discrTF.width = 10;
            this.discrTF.visible = false;
         }
         var _loc8_:int = _loc5_.quests.length;
         var _loc10_:Class = App.utils.classFactory.getClass("igrQuestBlockUI");
         if((_loc5_.quests) && _loc5_.quests.length > 0)
         {
            _loc8_ = _loc5_.quests.length;
            _loc2_ = 0;
            while(_loc2_ < _loc8_)
            {
               _loc9_ = new _loc10_();
               content.addChild(_loc9_);
               _loc9_.questText.width = _loc4_ != 0?_loc4_ - bgShadowMargin.left - contentMargin.left:_loc9_.questText.textWidth + 5;
               _loc9_.setText(_loc5_.quests[_loc2_]);
               _loc9_.x = bgShadowMargin.left + contentMargin.left;
               _loc9_.y = topPosition;
               topPosition = topPosition + _loc9_.height;
               _loc2_++;
            }
            topPosition = topPosition + Utils.instance.MARGIN_AFTER_BLOCK;
            this.whiteBg.height = topPosition - this.whiteBg.y;
         }
         if((_loc5_.progress) && _loc5_.progress.length > 0)
         {
            _loc6_ = Utils.instance.createSeparate(content);
            _loc6_.y = topPosition | 0;
            topPosition = topPosition + Utils.instance.MARGIN_AFTER_SEPARATE;
            this.progressBlock = App.utils.classFactory.getComponent("igrQuestProgressUI",IgrQuestProgressBlock);
            content.addChild(this.progressBlock);
            this.progressBlock.setData(_loc5_.progressHeader,_loc5_.progress);
            this.progressBlock.width = _loc4_ != 0?_loc4_ - bgShadowMargin.left - contentMargin.left:this.progressBlock.width;
            this.progressBlock.x = bgShadowMargin.left + contentMargin.left;
            this.progressBlock.y = topPosition;
            topPosition = topPosition + (this.progressBlock.height + Utils.instance.MARGIN_AFTER_BLOCK);
            contentMargin.bottom = contentMargin.bottom + Utils.instance.MARGIN_AFTER_BLOCK;
         }
         _loc5_ = null;
         updatePositions();
         super.redraw();
      }

      override protected function updateSize() : void {
         super.updateSize();
         this.whiteBg.width = content.width + bgShadowMargin.horizontal;
      }
   }

}