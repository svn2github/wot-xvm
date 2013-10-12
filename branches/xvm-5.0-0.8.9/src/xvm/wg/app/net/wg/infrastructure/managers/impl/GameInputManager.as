package net.wg.infrastructure.managers.impl
{
   import net.wg.infrastructure.base.meta.impl.GameInputManagerMeta;
   import net.wg.utils.IGameInputManager;
   import flash.events.IEventDispatcher;
   import scaleform.clik.events.InputEvent;
   import flash.utils.Dictionary;
   import scaleform.clik.ui.InputDetails;
   import scaleform.clik.constants.InputValue;
   import flash.text.TextField;
   import scaleform.clik.controls.TextInput;
   import flash.text.TextFieldType;
   import flash.display.InteractiveObject;
   import scaleform.gfx.Extensions;
   import scaleform.gfx.FocusManager;


   public class GameInputManager extends GameInputManagerMeta implements IGameInputManager
   {
          
      public function GameInputManager() {
         super();
         this._inputHandlers = new Dictionary();
      }

      public function initStage(param1:IEventDispatcher) : void {
         this._dispatcher = param1;
         this._dispatcher.addEventListener(InputEvent.INPUT,this.onInputHandler,false,0,true);
      }

      public function as_addKeyHandler(param1:Number, param2:String, param3:Boolean) : void {
         this.setKeyHandler(param1,param2,this.pyInputHandler,param3);
      }

      public function as_clearKeyHandler(param1:Number, param2:String) : void {
         this.clearKeyHandler(param1,param2);
      }

      private var _dispatcher:IEventDispatcher = null;

      private var _inputHandlers:Dictionary = null;

      private var _ignoredKeyCode:Number = -1;

      public function setKeyHandler(param1:Number, param2:String, param3:Function, param4:Boolean) : void {
         this.assertEventType(param2);
         if(this._inputHandlers[param1] == undefined)
         {
            this._inputHandlers[param1] = new Dictionary();
         }
         if(this._inputHandlers[param1][param2] != undefined)
         {
            DebugUtils.LOG_WARNING("GameInputHandler.setKeyHandler. Existing handler for keyCode = " + param1 + " and event = " + param2 + " is to be reset!");
         }
         this._inputHandlers[param1][param2] = new GameInputCallback(param3,param4);
      }

      public function clearKeyHandler(param1:Number, param2:String) : void {
         this.assertEventType(param2);
         if(this._inputHandlers[param1])
         {
            this._inputHandlers[param1][param2].dispose();
            delete this._inputHandlers[param1][[param2]];
            if(this.getDictLength(this._inputHandlers[param1]) == 0)
            {
               delete this._inputHandlers[[param1]];
            }
         }
      }

      public function setIgnoredKeyCode(param1:Number) : void {
         this._ignoredKeyCode = param1;
      }

      public function clearKeyHandlers() : void {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         var _loc3_:Dictionary = null;
         var _loc4_:GameInputCallback = null;
         for (_loc1_ in this._inputHandlers)
         {
            _loc3_ = this._inputHandlers[_loc1_];
            for (_loc2_ in _loc3_)
            {
               _loc4_ = _loc3_[_loc2_];
               _loc4_.dispose();
               delete _loc3_[[_loc2_]];
            }
            delete this._inputHandlers[[_loc1_]];
         }
      }

      public function dispose() : void {
         this.clearKeyHandlers();
         this._inputHandlers = null;
         this._dispatcher.removeEventListener(InputEvent.INPUT,this.onInputHandler);
         this._dispatcher = null;
      }

      private function pyInputHandler(param1:InputEvent) : void {
         var _loc2_:InputDetails = param1.details;
         handleGlobalKeyEventS(_loc2_.code,_loc2_.value);
      }

      private function assertEventType(param1:String) : void {
         App.utils.asserter.assert(param1 == InputValue.KEY_UP || param1 == InputValue.KEY_DOWN,"Event must be \'keyUp\' or \'keyDown\'");
      }

      private function getDictLength(param1:Dictionary) : int {
         var _loc3_:Object = null;
         var _loc2_:* = 0;
         for (_loc3_ in param1)
         {
            _loc2_++;
         }
         return _loc2_;
      }

      private function onInputHandler(param1:InputEvent) : void {
         var details:InputDetails = null;
         var callback:GameInputCallback = null;
         var focused:TextField = null;
         var focusedParent:TextInput = null;
         var event:InputEvent = param1;
         try
         {
            details = event.details;
            if((event.handled) || this._ignoredKeyCode == details.code)
            {
               return;
            }
            callback = null;
            if(this._inputHandlers[details.code] == undefined)
            {
               return;
            }
            callback = this._inputHandlers[details.code][details.value] as GameInputCallback;
            if(!callback)
            {
               return;
            }
            focused = this.getSystemFocus(0) as TextField;
            if((callback.isIgnoreText) && !(focused == null))
            {
               focusedParent = focused.parent as TextInput;
               if(focused.type == TextFieldType.INPUT || ((focusedParent) && (focusedParent.enabled)) && (focusedParent.editable))
               {
                  return;
               }
            }
            callback.envoke(event);
         }
         catch(e:Error)
         {
            DebugUtils.LOG_DEBUG(e.message);
            DebugUtils.LOG_DEBUG(e.getStackTrace());
         }
         return;
         if((event.handled) || this._ignoredKeyCode == details.code)
         {
            return;
         }
         callback = null;
         if(this._inputHandlers[details.code] == undefined)
         {
            return;
         }
         callback = this._inputHandlers[details.code][details.value] as GameInputCallback;
         if(!callback)
         {
            return;
         }
         focused = this.getSystemFocus(0) as TextField;
         if((callback.isIgnoreText) && !(focused == null))
         {
            focusedParent = focused.parent as TextInput;
            if(focused.type == TextFieldType.INPUT || ((focusedParent) && (focusedParent.enabled)) && (focusedParent.editable))
            {
               return;
            }
         }
         callback.envoke(event);
      }

      private function getSystemFocus(param1:uint) : InteractiveObject {
         if(Extensions.isScaleform)
         {
            return FocusManager.getFocus(param1);
         }
         return App.stage.focus;
      }
   }

}   import net.wg.infrastructure.interfaces.entity.IDisposable;
   import scaleform.clik.events.InputEvent;
   import net.wg.data.constants.Errors;


   class GameInputCallback extends Object implements IDisposable
   {
          
      function GameInputCallback(param1:Function, param2:Boolean) {
         super();
         App.utils.asserter.assertNotNull(param1,"handler" + Errors.CANT_NULL);
         this._handler = param1;
         this._ignoreText = param2;
      }

      private var _handler:Function = null;

      private var _ignoreText:Boolean = false;

      public function envoke(param1:InputEvent) : void {
         this._handler(param1);
      }

      public function get isIgnoreText() : Boolean {
         return this._ignoreText;
      }

      public function dispose() : void {
         this._handler = null;
      }
   }
