package 
{
    import flash.display.*;
    
    public dynamic class crosshair_panel_arcade extends flash.display.MovieClip
    {
        public function crosshair_panel_arcade()
        {
            super();
            addFrameScript(0, this.frame1, 1, this.frame2, 2, this.frame3, 3, this.frame4);
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

        internal function frame4():*
        {
            stop();
            return;
        }

        public var universalBarMC:flash.display.MovieClip;

        public var cassette:flash.display.MovieClip;

        public var ammoCountMC:flash.display.MovieClip;

        public var targetMC:flash.display.MovieClip;

        public var reloadingBarMC:flash.display.MovieClip;

        public var center:flash.display.MovieClip;

        public var grid1:flash.display.MovieClip;
    }
}
