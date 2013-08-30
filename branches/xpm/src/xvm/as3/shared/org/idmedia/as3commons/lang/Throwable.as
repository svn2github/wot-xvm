package org.idmedia.as3commons.lang 
{
    import flash.utils.*;
    
    public class Throwable extends Error
    {
        native public function Throwable(arg1:String);
        native public function getMessage():String;
        native public function getName():String;
    }
}
