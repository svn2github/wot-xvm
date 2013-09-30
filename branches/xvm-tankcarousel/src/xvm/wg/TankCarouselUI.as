﻿package 
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
    import net.wg.gui.lobby.hangar.tcarousel.TankCarousel;

    dynamic public class TankCarouselUI extends net.wg.gui.lobby.hangar.tcarousel.TankCarousel
    {

        public function TankCarouselUI()
        {
            addFrameScript(9, this.frame10, 19, this.frame20, 29, this.frame30);
            this.__setProp_leftArrow1_TanksCarouselUI_buttons_0();
            this.__setProp_rightArrow1_TanksCarouselUI_buttons_0();
            return;
        }

        internal function __setProp_leftArrow1_TanksCarouselUI_buttons_0():*
        {
            try
            {
                leftArrow1["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            leftArrow1.autoRepeat = true;
            leftArrow1.autoSize = "none";
            leftArrow1.data = "";
            leftArrow1.enabled = true;
            leftArrow1.enableInitCallback = false;
            leftArrow1.focusable = true;
            leftArrow1.label = "";
            leftArrow1.selected = false;
            leftArrow1.soundId = "carouselArrowLeft";
            leftArrow1.soundType = "carouselArrow";
            leftArrow1.toggle = false;
            leftArrow1.visible = true;
            try
            {
                leftArrow1["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }

        internal function __setProp_rightArrow1_TanksCarouselUI_buttons_0():*
        {
            try
            {
                rightArrow1["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            }
            rightArrow1.autoRepeat = true;
            rightArrow1.autoSize = "none";
            rightArrow1.data = "";
            rightArrow1.enabled = true;
            rightArrow1.enableInitCallback = false;
            rightArrow1.focusable = true;
            rightArrow1.label = "";
            rightArrow1.selected = false;
            rightArrow1.soundId = "carouselArrowRight";
            rightArrow1.soundType = "carouselArrow";
            rightArrow1.toggle = false;
            rightArrow1.visible = true;
            try
            {
                rightArrow1["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            }
            return;
        }

        internal function frame10():*
        {
            stop();
            return;
        }

        internal function frame20():*
        {
            stop();
            return;
        }

        internal function frame30():*
        {
            stop();
            return;
        }

    }
}