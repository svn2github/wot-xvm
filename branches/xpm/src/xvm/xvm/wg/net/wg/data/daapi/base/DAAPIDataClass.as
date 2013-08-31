package net.wg.data.daapi.base
{
    import avmplus.*;
    import flash.events.*;
    import net.wg.data.constants.*;
    import net.wg.infrastructure.interfaces.*;
    import net.wg.utils.*;

    public class DAAPIDataClass extends flash.events.EventDispatcher implements net.wg.infrastructure.interfaces.IDAAPIDataClass
    {
        //native public function DAAPIDataClass(arg1:Object);
        native public function fromHash(arg1:Object):void;
        native public function dispose():void;
        native public function toHash():Object;
    }
}
