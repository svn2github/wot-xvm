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
    import net.wg.gui.components.common.video.advanced.*;
    
    public dynamic class SliderPlayerProgressBar_UI extends net.wg.gui.components.common.video.advanced.SliderPlayerProgressBar
    {
        public function SliderPlayerProgressBar_UI()
        {
            super();
            this.__setProp_slider_SliderPlayerProgressBar_UI_Layer1_0();
            return;
        }

        internal function __setProp_slider_SliderPlayerProgressBar_UI_Layer1_0():*
        {
            try 
            {
                slider["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            slider.enableInitCallback = false;
            slider.focusable = true;
            slider.liveDragging = true;
            slider.maximum = 1;
            slider.minimum = 0;
            slider.snapInterval = 0.01;
            slider.snapping = false;
            slider.undefinedDisabled = false;
            slider.value = 0;
            slider.visible = true;
            try 
            {
                slider["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
