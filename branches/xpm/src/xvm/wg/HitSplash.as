package 
{
    import net.wg.gui.components.common.markers.*;
    import net.wg.gui.events.*;
    
    public dynamic class HitSplash extends net.wg.gui.components.common.markers.HealthBarAnimatedPart
    {
        public function HitSplash()
        {
            super();
            addFrameScript(9, this.frame10, 54, this.frame55);
            return;
        }

        internal function frame10():*
        {
            stop();
            dispatchEvent(new net.wg.gui.events.TimelineEvent(net.wg.gui.events.TimelineEvent.TWEEN_COMPLETE, true));
            return;
        }

        internal function frame55():*
        {
            stop();
            dispatchEvent(new net.wg.gui.events.TimelineEvent(net.wg.gui.events.TimelineEvent.TWEEN_COMPLETE, false));
            return;
        }
    }
}
