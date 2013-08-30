package scaleform.clik.ui
{
    public class InputDetails extends Object
    {
        public var type:String;
        public var code:Number;
        public var value:*;
        public var navEquivalent:String;
        public var controllerIndex:uint;
        public var ctrlKey:Boolean;
        public var altKey:Boolean;
        public var shiftKey:Boolean;
        native public function InputDetails(arg1:String, arg2:Number, arg3:*, arg4:String=null, arg5:uint=0, arg6:Boolean=false, arg7:Boolean=false, arg8:Boolean=false);
        native public function toString():String;
    }
}
