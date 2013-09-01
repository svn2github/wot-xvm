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
    
    public dynamic class ChannelCarouselUI extends net.wg.gui.lobby.messengerBar.carousel.ChannelCarousel
    {
        public function ChannelCarouselUI()
        {
            super();
            this.__setProp_scrollBar_ChannelCarousel_scrollBar_0();
            this.__setProp_list_ChannelCarousel_list_0();
            return;
        }

        internal function __setProp_scrollBar_ChannelCarousel_scrollBar_0():*
        {
            var loc1:*;
            try 
            {
                scrollBar["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            scrollBar.enabled = true;
            scrollBar.enableInitCallback = false;
            scrollBar.minThumbSize = 10;
            scrollBar.offsetBottom = 20;
            scrollBar.offsetTop = 0;
            scrollBar.scrollTarget = "";
            scrollBar.trackMode = "scrollPage";
            scrollBar.visible = true;
            try 
            {
                scrollBar["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_list_ChannelCarousel_list_0():*
        {
            var loc1:*;
            try 
            {
                list["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            list.columnWidth = 0;
            list.direction = "horizontal";
            list.enabled = true;
            list.enableInitCallback = false;
            list.externalColumnCount = 0;
            list.focusable = true;
            list.itemRendererName = "ChannelRendererUI";
            list.itemRendererInstanceName = "";
            list.margin = 0;
            list.inspectablePadding = {"top":1, "right":0, "bottom":0, "left":0};
            list.paddingBottom = 0;
            list.paddingRight = 0;
            list.rowHeight = 0;
            list.scrollBar = "scrollBar";
            list.showEmptyItems = false;
            list.visible = true;
            list.wrapping = "normal";
            try 
            {
                list["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
