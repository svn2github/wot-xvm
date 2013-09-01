package 
{
    public dynamic class inputMode_mc extends CStatusWindowCh
    {
        public function inputMode_mc()
        {
            super();
            addFrameScript(0, frame1, 1, frame2, 2, frame3, 3, frame4);
            return;
        }

        internal function frame3():*
        {
            ChangeBackgroundColor(currentFrame);
            stop();
            return;
        }

        internal function frame2():*
        {
            ChangeBackgroundColor(currentFrame);
            stop();
            return;
        }

        internal function frame4():*
        {
            ChangeBackgroundColor(currentFrame);
            stop();
            return;
        }

        internal function frame1():*
        {
            ChangeBackgroundColor(currentFrame);
            stop();
            return;
        }
    }
}
