package org.idmedia.as3commons.util 
{
    public class HashMap extends org.idmedia.as3commons.util.AbstractMap implements org.idmedia.as3commons.util.Map
    {
        native public function HashMap();
        native public function forEach(arg1:Function):void;
    }
}


class EntryImpl extends Object implements org.idmedia.as3commons.util.Entry
{
    native public function EntryImpl(arg1:*, arg2:*);
    native public function getKey():*;
    native public function getValue():*;
    native public function setValue(arg1:*):*;
    native public function equals(arg1:*):Boolean;
}