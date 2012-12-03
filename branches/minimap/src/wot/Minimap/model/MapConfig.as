import wot.utils.Config;

class wot.Minimap.model.MapConfig
{
    public static function get iconScale():Number
    {
        return Config.s_config.minimap.iconScale;
    }
    
    public static function get format():String
    {
        return Config.s_config.minimap.format;
    }
    
    public static function get isDeadPermanent():Boolean
    {
        return Config.s_config.minimap.isDeadPermanent;
    }
    
    public static function get enabled():Boolean
    {
        return Config.s_config.minimap.enabled;
    }
}