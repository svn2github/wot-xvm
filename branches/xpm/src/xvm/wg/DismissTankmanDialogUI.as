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
    import net.wg.gui.lobby.dialogs.*;
    
    public dynamic class DismissTankmanDialogUI extends net.wg.gui.lobby.dialogs.DismissTankmanDialog
    {
        public function DismissTankmanDialogUI()
        {
            super();
            this.__setProp_controlText_DismissTankmanDialogUI_Layer4_0();
            return;
        }

        internal function __setProp_controlText_DismissTankmanDialogUI_Layer4_0():*
        {
            try 
            {
                controlText["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            controlText.actAsButton = false;
            controlText.defaultText = "";
            controlText.displayAsPassword = false;
            controlText.editable = true;
            controlText.enabled = true;
            controlText.enableInitCallback = false;
            controlText.focusable = true;
            controlText.maxChars = 12;
            controlText.text = "";
            controlText.visible = true;
            try 
            {
                controlText["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
