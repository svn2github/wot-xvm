package net.wg.gui.lobby.sellDialog
{
   import scaleform.clik.core.UIComponent;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import net.wg.gui.components.controls.TextInput;
   import scaleform.clik.events.InputEvent;
   import scaleform.clik.constants.InvalidationType;
   import scaleform.clik.constants.InputValue;
   import flash.ui.Keyboard;
   import flash.events.Event;


   public class ControlQuestionComponent extends UIComponent
   {
          
      public function ControlQuestionComponent() {
         super();
      }

      public static const USER_INPUT_HANDLER:String = "userInputHandler";

      private static const PADDING_FOR_NEXT_ELEMENT:int = 10;

      private static const AUTO_UPDATE_TIMER:int = 5000;

      public var arrowBG:MovieClip;

      public var textHeader:TextField;

      public var controlQuestion:TextField;

      public var userInput:TextInput;

      public var errorMessage:TextField;

      private var _headerText:String = "";

      private var _questionText:String = "";

      private var _errorText:String = "";

      private var _controlText:String = "";

      public function get controlText() : String {
         return this._controlText;
      }

      public function set controlText(param1:String) : void {
         this._controlText = param1;
      }

      public function get headerText() : String {
         return this._headerText;
      }

      public function set headerText(param1:String) : void {
         this._headerText = param1;
      }

      public function get questionText() : String {
         return this._questionText;
      }

      public function set questionText(param1:String) : void {
         this._questionText = param1;
      }

      public function get errorText() : String {
         return this._errorText;
      }

      public function set errorText(param1:String) : void {
         this._errorText = param1;
      }

      public function getNextPosition() : int {
         return this.errorMessage.y + this.errorMessage.height + PADDING_FOR_NEXT_ELEMENT;
      }

      public function getUserText() : String {
         return this.userInput.text;
      }

      override protected function configUI() : void {
         super.configUI();
         this.showErrorState(false);
         this.userInput.addEventListener(InputEvent.INPUT,this.userInputHandler);
      }

      override public function dispose() : void {
         super.dispose();
         this.userInput.removeEventListener(InputEvent.INPUT,this.userInputHandler);
         this.userInput.dispose();
         App.utils.scheduler.cancelTask(this.runtimeValidate);
      }

      override protected function draw() : void {
         super.draw();
         if(isInvalid(InvalidationType.DATA))
         {
            this.textHeader.htmlText = this._headerText;
            this.controlQuestion.htmlText = this._questionText;
            this.errorMessage.htmlText = this._errorText;
         }
      }

      private function userInputHandler(param1:InputEvent) : void {
         if(param1.details.value == InputValue.KEY_UP)
         {
            this.showErrorState(false);
            App.utils.scheduler.cancelTask(this.runtimeValidate);
            if(param1.details.code == Keyboard.ENTER)
            {
               this.showErrorState(!this.isValidControlInput);
            }
            else
            {
               if(!this.isEmptyText)
               {
                  App.utils.scheduler.scheduleTask(this.runtimeValidate,AUTO_UPDATE_TIMER);
               }
            }
            dispatchEvent(new Event(USER_INPUT_HANDLER));
         }
      }

      private function showErrorState(param1:Boolean) : void {
         this.userInput.highlight = param1;
         this.errorMessage.visible = param1;
      }

      private function runtimeValidate() : void {
         this.showErrorState(!this.isValidControlInput);
      }

      private function get isEmptyText() : Boolean {
         return this.userInput.text == "";
      }

      public function get isValidControlInput() : Boolean {
         return this.userInput.text == this.controlText;
      }

      public function cleanField() : void {
         if(this.userInput)
         {
            this.userInput.text = "";
         }
         this.showErrorState(false);
      }
   }

}