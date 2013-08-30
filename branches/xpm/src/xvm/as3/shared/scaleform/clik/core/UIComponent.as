package scaleform.clik.core
{
    import flash.display.*;
    import flash.events.*;
    import flash.external.*;
    import flash.utils.*;
    import net.wg.infrastructure.interfaces.entity.*;
    import net.wg.utils.*;
    import scaleform.clik.events.*;
    import scaleform.clik.layout.*;

    public class UIComponent extends flash.display.MovieClip implements net.wg.infrastructure.interfaces.entity.IDisposable
    {
        native public function invalidate(... rest):void;
        native public function validateNow(arg1:flash.events.Event=null):void;
        native public function removeSuperEventListener(arg1:String, arg2:Function, arg3:Boolean=false):void;
        native public function addSuperEventListener(arg1:String, arg2:Function, arg3:Boolean=false, arg4:int=0, arg5:Boolean=false):void;
        native public function invalidateSize():void;
        native public function invalidateData():void;
        native public function invalidateState():void;
        native public function dispatchEventAndSound(arg1:flash.events.Event):Boolean;
        native public function dispose():void;
        native public static function generateLabelHash(arg1:flash.display.MovieClip):Object;
        native public function get componentInspectorSetting():Boolean;
        native public function set componentInspectorSetting(arg1:Boolean):void;
        native public function get hasFocus():Boolean;
        native public function get focusable():Boolean;
        native public function set focusable(arg1:Boolean):void;
        native public function get focused():Number;
        native public function set focused(arg1:Number):void;
        native public function get displayFocus():Boolean;
        native public function set displayFocus(arg1:Boolean):void;
        native public function get focusTarget():scaleform.clik.core.UIComponent;
        native public function set focusTarget(arg1:scaleform.clik.core.UIComponent):void;
        native public function get layoutData():scaleform.clik.layout.LayoutData;
        native public function set layoutData(arg1:scaleform.clik.layout.LayoutData):void;
        native public function get enableInitCallback():Boolean;
        native public function set enableInitCallback(arg1:Boolean):void;
        native public final function get actualWidth():Number;
        native public final function get actualHeight():Number;
        native public final function get actualScaleX():Number;
        native public final function get actualScaleY():Number;
        native public function setSize(arg1:Number, arg2:Number):void;
        native public function setActualSize(arg1:Number, arg2:Number):void;
        native public final function setActualScale(arg1:Number, arg2:Number):void;
        native public function handleInput(arg1:scaleform.clik.events.InputEvent):void;
        native public function dispatchEventToGame(arg1:flash.events.Event):void;
    }
}
