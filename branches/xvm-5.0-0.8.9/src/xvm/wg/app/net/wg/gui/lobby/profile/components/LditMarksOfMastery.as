package net.wg.gui.lobby.profile.components
{


   public class LditMarksOfMastery extends LineDescrIconText
   {
          
      public function LditMarksOfMastery() {
         super();
      }

      private var _totalCount:uint = 0;

      public function set totalCount(param1:uint) : void {
         this._totalCount = param1;
         isTextChanged = true;
         invalidate();
      }

      override protected function applyText() : void {
         textComponent.text = _text + "<font size=\'14\' color=\'#939188\'>" + "/" + this._totalCount + "</font>";
      }
   }

}