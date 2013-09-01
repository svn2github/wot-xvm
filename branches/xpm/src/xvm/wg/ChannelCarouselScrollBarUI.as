package 
{
    import adobe.utils.*;
    import flash.accessibility.*;
    import flash.desktop.*;
    import flash.display.*;
    import flash.errors.*;
    import flash.events.*;
    import flash.external.*;
    import flash.filters.*;
    import flash.geom.*;
    import flash.globalization.*;
    import flash.media.*;
    import flash.net.*;
    import flash.net.drm.*;
    import flash.printing.*;
    import flash.profiler.*;
    import flash.sampler.*;
    import flash.sensors.*;
    import flash.system.*;
    import flash.text.*;
    import flash.text.engine.*;
    import flash.text.ime.*;
    import flash.ui.*;
    import flash.utils.*;
    import flash.xml.*;
    import net.wg.gui.lobby.messengerBar.carousel.*;
    
    public dynamic class ChannelCarouselScrollBarUI extends net.wg.gui.lobby.messengerBar.carousel.ChannelCarouselScrollBar
    {
        public function ChannelCarouselScrollBarUI()
        {
            super();
            this.__setProp_upArrowWg_ChannelCarouselScrollBar_buttons_0();
            this.__setProp_downArrowWg_ChannelCarouselScrollBar_buttons_0();
            return;
        }

        internal function __setProp_upArrowWg_ChannelCarouselScrollBar_buttons_0():*
        {
            var loc1:*;
            try 
            {
                upArrowWg["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            upArrowWg.autoRepeat = false;
            upArrowWg.autoSize = "none";
            upArrowWg.data = "";
            upArrowWg.enabled = true;
            upArrowWg.enableInitCallback = false;
            upArrowWg.focusable = true;
            upArrowWg.label = "";
            upArrowWg.selected = false;
            upArrowWg.soundId = "carouselArrowLeft";
            upArrowWg.soundType = "carouselArrow";
            upArrowWg.toggle = false;
            upArrowWg.visible = true;
            try 
            {
                upArrowWg["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_downArrowWg_ChannelCarouselScrollBar_buttons_0():*
        {
            var loc1:*;
            try 
            {
                downArrowWg["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            downArrowWg.autoRepeat = false;
            downArrowWg.autoSize = "none";
            downArrowWg.data = "";
            downArrowWg.enabled = true;
            downArrowWg.enableInitCallback = false;
            downArrowWg.focusable = true;
            downArrowWg.label = "";
            downArrowWg.selected = false;
            downArrowWg.soundId = "carouselArrowRight";
            downArrowWg.soundType = "carouselArrow";
            downArrowWg.toggle = false;
            downArrowWg.visible = true;
            try 
            {
                downArrowWg["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
