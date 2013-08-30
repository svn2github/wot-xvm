package org.idmedia.as3commons.util 
{
    import org.idmedia.as3commons.lang.*;
    
    public class AbstractMap extends Object implements org.idmedia.as3commons.util.Map
    {
        native public function AbstractMap();
        native public function put(arg1:*, arg2:*):*;
        native public function get(arg1:*):*;
        native public function containsKey(arg1:*):Boolean;
        native public function containsValue(arg1:*):Boolean;
        native public function remove(arg1:*):*;
        native public function clear():void;
        native public function size():int;
        native public function values():org.idmedia.as3commons.util.Collection;
        native public function keySet():org.idmedia.as3commons.util.Set;
        native public function entrySet():org.idmedia.as3commons.util.Set;
        native public function isEmpty():Boolean;
        native public function putAll(arg1:org.idmedia.as3commons.util.Map):void;
        native public function equals(arg1:*):Boolean;
    }
}


class AbstractEntrySet extends org.idmedia.as3commons.util.AbstractSet
{
    native public function AbstractEntrySet(arg1:org.idmedia.as3commons.util.Map);
}

final class CollectionImpl extends org.idmedia.as3commons.util.AbstractCollection
{
    native public function CollectionImpl(arg1:org.idmedia.as3commons.util.Map);
}

class KeyIterator extends Object implements org.idmedia.as3commons.util.Iterator
{
    native public function KeyIterator(arg1:org.idmedia.as3commons.util.Iterator);
    native public function hasNext():Boolean;
    native public function next():*;
    native public function remove():void;
}

final class ValueIterator extends KeyIterator
{
    native public function ValueIterator(arg1:org.idmedia.as3commons.util.Iterator);
}
