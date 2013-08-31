package org.idmedia.as3commons.util 
{
    import org.idmedia.as3commons.lang.*;
    
    public class AbstractCollection extends Object implements org.idmedia.as3commons.util.Collection
    {
        native public function AbstractCollection();
        native public function add(arg1:*):Boolean;
        native public function addAll(arg1:org.idmedia.as3commons.util.Collection):Boolean;
        native public function clear():void;
        native public function contains(arg1:*):Boolean;
        native public function containsAll(arg1:org.idmedia.as3commons.util.Collection):Boolean;
        native public function isEmpty():Boolean;
        native public function iterator():org.idmedia.as3commons.util.Iterator;
        native public function remove(arg1:*=null):Boolean;
        native public function size():int;
        native public function toArray():Array;
        native public function equals(arg1:*):Boolean;
    }
}
