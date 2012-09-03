import wot.VehicleMarkersManager.LevelIconProxy;
import wot.utils.Logger;

class wot.VehicleMarkersManager.LevelIconComponent
{
    var proxy:LevelIconProxy
    
    public function LevelIconComponent(proxy:LevelIconProxy) 
    {
        this.proxy = proxy;
        
        if (proxy.levelIcon != null)
        {
            proxy.levelIcon.gotoAndStop(proxy.level);
            Logger.add("!= null")
        }
    }
     
    public function updateState(cfg:Object)
    {
        var visible = cfg.levelIcon.visible;
        Logger.add("updateState(cfg:Object); visible = " + visible);
        
        if (visible)
            draw(cfg);
            
        proxy.levelIcon._visible = visible;
    }
    
    private function draw(cfg:Object)
    {
        Logger.add("draw(cfg:Object)");
        proxy.levelIcon._x = cfg.levelIcon.x;
        proxy.levelIcon._y = cfg.levelIcon.y;
        
        //TODO: extract XVMFormatDynamicAlpha
        proxy.levelIcon._alpha = proxy.XVMFormatDynamicAlpha(cfg.levelIcon.alpha);
    }
}