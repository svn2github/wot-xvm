package 
{
    import adobe.utils.*;
    import flash.accessibility.*;
    import flash.display.*;
    import flash.errors.*;
    import flash.events.*;
    import flash.external.*;
    import flash.filters.*;
    import flash.geom.*;
    import flash.media.*;
    import flash.net.*;
    import flash.printing.*;
    import flash.profiler.*;
    import flash.sampler.*;
    import flash.system.*;
    import flash.text.*;
    import flash.ui.*;
    import flash.utils.*;
    import flash.xml.*;
    
    public dynamic class BarJp_mc extends flash.display.MovieClip
    {
        public function BarJp_mc()
        {
            super();
            addFrameScript(0, frame1);
            return;
        }

        public function releaseHandler(arg1:flash.events.MouseEvent):*
        {
            trace(parent.parent);
            var loc1:*;
            (loc1 = parent.parent)["CreateList"](parent.parent["NumRows"]);
            return;
        }

        public function rolloverHandler(arg1:flash.events.MouseEvent):*
        {
            Background_mc.gotoAndPlay(2);
            return;
        }

        public function rolloutHandler(arg1:flash.events.MouseEvent):*
        {
            if (Background_mc.currentFrame != 1) 
            {
                Background_mc.gotoAndPlay(1);
            }
            return;
        }

        internal function frame1():*
        {
            addEventListener(flash.events.MouseEvent.MOUSE_OVER, rolloverHandler);
            addEventListener(flash.events.MouseEvent.MOUSE_OUT, rolloutHandler);
            addEventListener(flash.events.MouseEvent.MOUSE_UP, releaseHandler);
            return;
        }

        public var Background_mc:flash.display.MovieClip;

        public var Event_mc:flash.display.MovieClip;

        public var tf:flash.text.TextField;
    }
}
