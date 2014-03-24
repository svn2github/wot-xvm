package net.wg.gui.lobby.settings
{
   import scaleform.clik.core.UIComponent;
   import net.wg.gui.lobby.settings.components.SettingsScrollPane;


   public class AdvancedGraphicSettingsForm extends UIComponent
   {
          
      public function AdvancedGraphicSettingsForm() {
         super();
      }

      private static const PANE_WIDTH:Number = 800;

      private static const PANE_HEIGHT:Number = 415;

      public var scrollPane:SettingsScrollPane;

      public var content:AdvancedGraphicContentForm;

      protected var _data:Object = null;

      override protected function configUI() : void {
         super.configUI();
         this.scrollPane.setSize(PANE_WIDTH,PANE_HEIGHT);
         this.content = this.scrollPane.target as AdvancedGraphicContentForm;
      }

      override protected function onDispose() : void {
         this.content = null;
         this.scrollPane.dispose();
         this.scrollPane = null;
         super.onDispose();
      }
   }

}