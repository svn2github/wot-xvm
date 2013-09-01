package 
{
    import net.wg.gui.lobby.store.*;
    
    public dynamic class ShopModuleRendererCreditsUI extends net.wg.gui.lobby.store.ModuleRendererCredits
    {
        public function ShopModuleRendererCreditsUI()
        {
            super();
            addFrameScript(0, this.frame1, 3, this.frame4);
            return;
        }

        internal function frame1():*
        {
            stop();
            return;
        }

        internal function frame4():*
        {
            stop();
            return;
        }
    }
}
