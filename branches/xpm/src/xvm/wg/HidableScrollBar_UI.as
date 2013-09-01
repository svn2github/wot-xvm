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
    import net.wg.gui.lobby.profile.components.*;
    
    public dynamic class HidableScrollBar_UI extends net.wg.gui.lobby.profile.components.HidableScrollBar
    {
        public function HidableScrollBar_UI()
        {
            super();
            this.__setProp_upArrowWg_HidableScrollBar_UI_btns_0();
            return;
        }

        internal function __setProp_upArrowWg_HidableScrollBar_UI_btns_0():*
        {
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
            upArrowWg.soundId = "juio";
            upArrowWg.soundType = "normal";
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
    }
}
