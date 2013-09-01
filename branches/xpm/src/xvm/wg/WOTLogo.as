package 
{
    import net.wg.gui.components.common.*;
    
    public dynamic class WOTLogo extends net.wg.gui.components.common.BaseLogoView
    {
        public function WOTLogo()
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
