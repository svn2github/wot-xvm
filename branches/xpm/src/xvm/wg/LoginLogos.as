package 
{
    import net.wg.gui.components.common.*;
    
    public dynamic class LoginLogos extends net.wg.gui.components.common.BaseLogoView
    {
        public function LoginLogos()
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
