package net.wg.gui.lobby.sellDialog
{


   public class UserInputControl extends Object
   {
          
      public function UserInputControl() {
         super();
      }

      private static const DELIMITER_CHAR:String = " ";

      private static const NONE_BREAK_SPACE_CODE:uint = 160;

      private static const SPACE_CODE:uint = 32;

      public function cmpFormatUserInputString(param1:String, param2:String, param3:String, param4:String) : Boolean {
         var _loc11_:* = 0;
         if(param1 == param4)
         {
            return true;
         }
         var _loc5_:Array = param1.split("");
         var _loc6_:* = false;
         var _loc7_:* = 0;
         while(_loc7_ < param2.length)
         {
            if(param2.charCodeAt(_loc7_) == NONE_BREAK_SPACE_CODE)
            {
               _loc6_ = true;
               break;
            }
            _loc7_++;
         }
         if(_loc6_)
         {
            _loc11_ = 0;
            while(_loc11_ < _loc5_.length)
            {
               if(_loc5_[_loc11_] == " ")
               {
                  _loc5_[_loc11_] = DELIMITER_CHAR;
               }
               _loc11_++;
            }
         }
         var _loc8_:String = _loc5_.join("");
         trace("result user input : ",_loc8_);
         var _loc9_:* = false;
         var _loc10_:Array = param3.split("");
         trace(">>> last char : ",_loc10_[_loc10_.length-1].charCodeAt(0));
         if(_loc10_[_loc10_.length-1].charCodeAt(0) == SPACE_CODE)
         {
            _loc10_.pop();
            _loc9_ = _loc10_.join("") == _loc8_;
         }
         else
         {
            _loc9_ = param3 == _loc8_;
         }
         return _loc9_;
      }
   }

}