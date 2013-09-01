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
    import net.wg.gui.notification.*;
    
    public dynamic class SystemMessageDialog_UI extends net.wg.gui.notification.SystemMessageDialog
    {
        public function SystemMessageDialog_UI()
        {
            super();
            this.__setProp_closeBtn_SystemMessageDialog_UI_Layer3_0();
            return;
        }

        internal function __setProp_closeBtn_SystemMessageDialog_UI_Layer3_0():*
        {
            try 
            {
                closeBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            closeBtn.autoRepeat = false;
            closeBtn.autoSize = "none";
            closeBtn.data = "";
            closeBtn.enabled = true;
            closeBtn.enableInitCallback = false;
            closeBtn.fillPadding = 0;
            closeBtn.focusable = true;
            closeBtn.label = "cancel";
            closeBtn.paddingHorizontal = 5;
            closeBtn.selected = false;
            closeBtn.soundId = "";
            closeBtn.soundType = "cancelButton";
            closeBtn.toggle = false;
            closeBtn.visible = true;
            try 
            {
                closeBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
