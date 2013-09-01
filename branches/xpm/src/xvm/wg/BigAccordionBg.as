package 
{
    import flash.display.*;
    
    public dynamic class BigAccordionBg extends flash.display.MovieClip
    {
        public function BigAccordionBg()
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
