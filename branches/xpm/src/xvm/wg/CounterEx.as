package 
{
    import net.wg.gui.components.advanced.*;
    
    public dynamic class CounterEx extends net.wg.gui.components.advanced.CounterEx
    {
        public function CounterEx()
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
