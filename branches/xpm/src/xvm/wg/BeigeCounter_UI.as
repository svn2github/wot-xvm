package 
{
    import net.wg.gui.components.controls.achievements.*;
    
    public dynamic class BeigeCounter_UI extends net.wg.gui.components.controls.achievements.BeigeCounter
    {
        public function BeigeCounter_UI()
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
