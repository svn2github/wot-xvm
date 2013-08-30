package net.wg.data.daapi.base 
{
    import flash.events.*;
    import net.wg.infrastructure.interfaces.*;
    import scaleform.clik.interfaces.*;
    
    public class DAAPIDataProvider extends flash.events.EventDispatcher implements scaleform.clik.interfaces.IDataProvider, net.wg.infrastructure.interfaces.IDAAPIModule
    {
        public var lengthHandler:Function;
        public var requestItemAtHandler:Function;
        public var requestItemRangeHandler:Function;

        native public function DAAPIDataProvider();
        native public function get disposed():Boolean;
        native public function get length():uint;
        native public function requestItemAt(arg1:uint, arg2:Function=null):Object;
        native public function requestItemRange(arg1:int, arg2:int, arg3:Function=null):Array;
        native public function indexOf(arg1:Object, arg2:Function=null):int;
        native public function cleanUp():void;
        native public function triggerInvalidation():void;
        native public function invalidate(arg1:uint=0):void;
        native public function as_populate():void;
        native public function as_dispose():void;
    }
}
