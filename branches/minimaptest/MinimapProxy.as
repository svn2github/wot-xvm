import net.wargaming.ingame.Minimap;

class wot.Minimap.MinimapProxy
{
    public static function get base():Minimap
    {
        return _root.minimap.base;
    }
    
    public static function get wrapper():Minimap
    {
        return _root.minimap.wrapper;
    }
}
