package 
{
    import net.wg.gui.lobby.hangar.*;
    
    public dynamic class TankParam extends net.wg.gui.lobby.hangar.TankParam
    {
        public function TankParam()
        {
            super();
            addFrameScript(9, this.frame10, 19, this.frame20);
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
    }
}
