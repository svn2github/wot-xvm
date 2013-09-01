package 
{
    import net.wg.gui.tutorial.controls.*;
    
    public dynamic class FinalProgressItem extends net.wg.gui.tutorial.controls.ProgressItem
    {
        public function FinalProgressItem()
        {
            super();
            addFrameScript(49, this.frame50);
            return;
        }

        internal function frame50():*
        {
            stop();
            return;
        }
    }
}
