package net.wg.data.daapi
{
    import net.wg.data.daapi.base.*;

    public class PlayerInfo extends net.wg.data.daapi.base.DAAPIDataClass
    {
        //native public function PlayerInfo(arg1:Object);
        native public function get displayName():String;
        native public function set displayName(arg1:String):void;
        native public function get isMuted():Boolean;
        native public function set isMuted(arg1:Boolean):void;
        native public function get isIgnored():Boolean;
        native public function set isIgnored(arg1:Boolean):void;
        native public function get isFriend():Boolean;
        native public function set isFriend(arg1:Boolean):void;
    }
}
