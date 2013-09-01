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
    import net.wg.gui.components.advanced.*;
    
    public dynamic class AccordionUI extends net.wg.gui.components.advanced.Accordion
    {
        public function AccordionUI()
        {
            super();
            this.__setProp_texture_Accordion_texture_0();
            return;
        }

        internal function __setProp_texture_Accordion_texture_0():*
        {
            var loc1:*;
            try 
            {
                texture["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            texture.enabled = true;
            texture.enableInitCallback = false;
            texture.heightFill = 100;
            texture.repeat = "all";
            texture.source = "big_accordion_texture";
            texture.startPos = "TL";
            texture.visible = true;
            texture.widthFill = 100;
            try 
            {
                texture["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
