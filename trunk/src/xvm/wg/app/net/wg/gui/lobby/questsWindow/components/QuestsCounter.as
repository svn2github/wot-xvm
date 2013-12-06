package net.wg.gui.lobby.questsWindow.components
{
   import scaleform.clik.core.UIComponent;
   import flash.events.MouseEvent;
   import flash.text.TextField;


   public class QuestsCounter extends UIComponent
   {
          
      public function QuestsCounter() {
         super();
      }

      private static function showCounterTooltip(param1:MouseEvent) : void {
         App.toolTipMgr.show(TOOLTIPS.QUESTS_COUNTER_LABEL);
      }

      private static function hideTooltip(param1:MouseEvent) : void {
         App.toolTipMgr.hide();
      }

      public var textField:TextField;

      override protected function configUI() : void {
         super.configUI();
         addEventListener(MouseEvent.CLICK,hideTooltip);
         addEventListener(MouseEvent.ROLL_OUT,hideTooltip);
         addEventListener(MouseEvent.ROLL_OVER,showCounterTooltip);
      }

      override public function dispose() : void {
         removeEventListener(MouseEvent.CLICK,hideTooltip);
         removeEventListener(MouseEvent.ROLL_OUT,hideTooltip);
         removeEventListener(MouseEvent.ROLL_OVER,showCounterTooltip);
         this.textField = null;
         super.dispose();
      }
   }

}