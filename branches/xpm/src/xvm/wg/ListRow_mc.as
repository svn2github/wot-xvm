package 
{
    import flash.display.*;
    import flash.text.*;
    
    public dynamic class ListRow_mc extends flash.display.MovieClip
    {
        public function ListRow_mc()
        {
            super();
            addFrameScript(0, this.frame1);
            return;
        }

        internal function frame1():*
        {
            this.currState = 1;
            return;
        }

        public var Background_mc:flash.display.MovieClip;

        public var Event_mc:flash.display.MovieClip;

        public var tf:flash.text.TextField;

        public var currState:int;
    }
}
