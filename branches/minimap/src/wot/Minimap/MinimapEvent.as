/**
 * ...
 * @author 
 */

class wot.Minimap.MinimapEvent
{
    public static var REQUEST_PARTICIPANTS:String = "minimap_requests_battle_participants";
    
    public var type:String;
    
    public function MinimapEvent(type:String) 
    {
        this.type = type;
    }
    
}