package 
{
    import net.wg.gui.lobby.training.*;
    
    public dynamic class TeamDragList extends net.wg.gui.lobby.training.DropList
    {
        public function TeamDragList()
        {
            super();
            addFrameScript(9, this.frame10, 19, this.frame20, 29, this.frame30);
            return;
        }

        internal function frame10():*
        {
            stop();
            return;
        }

        internal function frame20():*
        {
            stop();
            return;
        }

        internal function frame30():*
        {
            stop();
            return;
        }
    }
}
