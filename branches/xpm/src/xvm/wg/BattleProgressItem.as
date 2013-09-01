package 
{
    import net.wg.gui.tutorial.controls.*;
    
    public dynamic class BattleProgressItem extends net.wg.gui.tutorial.controls.ProgressItem
    {
        public function BattleProgressItem()
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
