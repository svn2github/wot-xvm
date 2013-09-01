package 
{
    import scaleform.clik.controls.*;
    
    public dynamic class ProgressBarFront extends scaleform.clik.controls.StatusIndicator
    {
        public function ProgressBarFront()
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
