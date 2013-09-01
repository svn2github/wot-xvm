package 
{
    import net.wg.gui.components.common.crosshair.*;
    
    public dynamic class HeavyClipQuantityBar extends net.wg.gui.components.common.crosshair.ClipQuantityBar
    {
        public function HeavyClipQuantityBar()
        {
            super();
            addFrameScript(0, this.frame1, 1, this.frame2, 2, this.frame3, 11, this.frame12);
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

        internal function frame3():*
        {
            stop();
            return;
        }

        internal function frame12():*
        {
            stop();
            return;
        }
    }
}
