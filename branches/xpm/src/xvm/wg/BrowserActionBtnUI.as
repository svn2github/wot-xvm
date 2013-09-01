package 
{
    import net.wg.gui.lobby.browser.*;
    
    public dynamic class BrowserActionBtnUI extends net.wg.gui.lobby.browser.BrowserActionBtn
    {
        public function BrowserActionBtnUI()
        {
            super();
            addFrameScript(0, this.frame1, 1, this.frame2);
            return;
        }

        internal function frame1():*
        {
            stop();
            return;
        }

        internal function frame2():*
        {
            stop();
            return;
        }
    }
}
