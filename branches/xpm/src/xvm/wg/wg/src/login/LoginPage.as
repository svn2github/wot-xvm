package wg.src.login 
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
    
    public dynamic class LoginPage extends flash.display.MovieClip
    {
        public function LoginPage()
        {
            super();
            this.__setProp___id0__Scene1_tanksCarousel_0();
            return;
        }

        function __setProp___id0__Scene1_tanksCarousel_0():*
        {
            try 
            {
                this.__id0_["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            this.__id0_.carouselType = "horizontal";
            this.__id0_.dragEnabled = true;
            this.__id0_.enabled = true;
            this.__id0_.enableInitCallback = false;
            this.__id0_.focusable = false;
            this.__id0_.itemRendererName = "TankCarouselItemRenderer";
            this.__id0_.itemRendererInstanceName = "";
            this.__id0_.margin = 5;
            this.__id0_.inspectablePadding = {"top":0, "right":5, "bottom":0, "left":5};
            this.__id0_.slotImageHeight = 102;
            this.__id0_.slotImageWidth = 162;
            this.__id0_.useRightButton = true;
            this.__id0_.useRightButtonForSelect = false;
            this.__id0_.visible = true;
            try 
            {
                this.__id0_["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        public var __id0_:TankCarouselUI;
    }
}
