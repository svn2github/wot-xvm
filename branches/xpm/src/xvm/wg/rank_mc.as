package 
{
    import net.wg.gui.lobby.tankman.*;
    
    public dynamic class rank_mc extends net.wg.gui.lobby.tankman.RankElement
    {
        public function rank_mc()
        {
            super();
            addFrameScript(4, this.frame5, 9, this.frame10);
            return;
        }

        internal function frame5():*
        {
            stop();
            return;
        }

        internal function frame10():*
        {
            stop();
            return;
        }
    }
}
