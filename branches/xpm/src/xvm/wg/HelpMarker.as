package 
{
    import flash.display.*;
    
    public dynamic class HelpMarker extends flash.display.MovieClip
    {
        public function HelpMarker()
        {
            super();
            addFrameScript(0, this.frame1, 189, this.frame190);
            return;
        }

        internal function frame1():*
        {
            play();
            return;
        }

        internal function frame190():*
        {
            stop();
            return;
        }
    }
}
