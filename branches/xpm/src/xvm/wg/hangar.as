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
    import net.wg.gui.lobby.hangar.*;
    
    public dynamic class hangar extends net.wg.gui.lobby.hangar.Hangar
    {
        public function hangar()
        {
            super();
            this.__setProp_carousel_hangar_carousel_0();
            return;
        }

        internal function __setProp_carousel_hangar_carousel_0():*
        {
            try 
            {
                carousel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            carousel.dragEnabled = true;
            carousel.enabled = true;
            carousel.enableInitCallback = false;
            carousel.focusable = false;
            carousel.itemRendererName = "TankCarouselItemRendererUI";
            carousel.itemRendererInstanceName = "";
            carousel.margin = 5;
            carousel.inspectablePadding = {"top":0, "right":5, "bottom":0, "left":5};
            carousel.slotImageHeight = 102;
            carousel.slotImageWidth = 162;
            carousel.useRightButton = true;
            carousel.useRightButtonForSelect = false;
            carousel.visible = true;
            try 
            {
                carousel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
