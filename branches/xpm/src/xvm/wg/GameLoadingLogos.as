package 
{
    import net.wg.gui.components.common.*;
    
    public dynamic class GameLoadingLogos extends net.wg.gui.components.common.BaseLogoView
    {
        public function GameLoadingLogos()
        {
            super();
            addFrameScript(0, this.frame1);
            return;
        }

        internal function frame1():*
        {
            stop();
            return;
        }
    }
}
