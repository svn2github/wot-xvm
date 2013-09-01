package 
{
    import scaleform.clik.controls.*;
    
    public dynamic class LoadingBar extends scaleform.clik.controls.StatusIndicator
    {
        public function LoadingBar()
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
