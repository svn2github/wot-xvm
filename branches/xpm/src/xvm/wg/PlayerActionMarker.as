package 
{
    import net.wg.gui.components.icons.*;
    
    public dynamic class PlayerActionMarker extends net.wg.gui.components.icons.PlayerActionMarker
    {
        public function PlayerActionMarker()
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
