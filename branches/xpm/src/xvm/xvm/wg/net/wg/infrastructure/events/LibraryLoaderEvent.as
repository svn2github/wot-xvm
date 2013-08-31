package net.wg.infrastructure.events 
{
    import flash.display.*;
    import flash.events.*;
    
    public class LibraryLoaderEvent extends flash.events.Event
    {
        native public function LibraryLoaderEvent(arg1:String, arg2:flash.display.Loader, arg3:String, arg4:Boolean=false, arg5:Boolean=false);
        native public override function clone():flash.events.Event;
        native public override function toString():String;
        public static const LOADED:String="libLoaded";
        public var loader:flash.display.Loader;
        public var url:String;
    }
}
