package 
{
    import net.wg.gui.tutorial.controls.*;
    
    public dynamic class BattleBonusItem extends net.wg.gui.tutorial.controls.BattleBonusItem
    {
        public function BattleBonusItem()
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
