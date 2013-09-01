package 
{
    import scaleform.clik.controls.*;
    
    public dynamic class ProgressBarBack extends scaleform.clik.controls.StatusIndicator
    {
        public function ProgressBarBack()
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
