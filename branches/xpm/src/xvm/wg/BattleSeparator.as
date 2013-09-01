package 
{
    import net.wg.gui.tutorial.controls.*;
    
    public dynamic class BattleSeparator extends net.wg.gui.tutorial.controls.ProgressSeparator
    {
        public function BattleSeparator()
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
