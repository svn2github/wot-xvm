package 
{
    import net.wg.gui.components.common.markers.*;
    import net.wg.gui.events.*;
    
    public dynamic class HealthBarAnimatedLabel extends net.wg.gui.components.common.markers.HealthBarAnimatedLabel
    {
        public function HealthBarAnimatedLabel()
        {
            super();
            addFrameScript(16, this.frame17, 51, this.frame52, 95, this.frame96, 97, this.frame98);
            return;
        }

        internal function frame17():*
        {
            stop();
            dispatchEvent(new net.wg.gui.events.TimelineEvent(net.wg.gui.events.TimelineEvent.TWEEN_COMPLETE, true));
            return;
        }

        internal function frame52():*
        {
            stop();
            dispatchEvent(new net.wg.gui.events.TimelineEvent(net.wg.gui.events.TimelineEvent.TWEEN_COMPLETE, false));
            return;
        }

        internal function frame96():*
        {
            stop();
            return;
        }

        internal function frame98():*
        {
            stop();
            return;
        }
    }
}
