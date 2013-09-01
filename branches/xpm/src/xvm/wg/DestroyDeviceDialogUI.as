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
    
    public dynamic class DestroyDeviceDialogUI extends net.wg.gui.lobby.dialogs.DestroyDeviceDialog
    {
        public function DestroyDeviceDialogUI()
        {
            super();
            this.__setProp_firstBtn_DestroyDeviceDialogUI_btns_0();
            this.__setProp_thirdBtn_DestroyDeviceDialogUI_btns_0();
            this.__setProp_dynamicWhiteButton_DestroyDeviceDialogUI_btns_0();
            return;
        }

        internal function __setProp_firstBtn_DestroyDeviceDialogUI_btns_0():*
        {
            try 
            {
                firstBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            firstBtn.autoRepeat = false;
            firstBtn.autoSize = "none";
            firstBtn.data = "";
            firstBtn.enabled = true;
            firstBtn.enableInitCallback = false;
            firstBtn.fillPadding = 0;
            firstBtn.focusable = true;
            firstBtn.label = "";
            firstBtn.paddingHorizontal = 5;
            firstBtn.selected = false;
            firstBtn.soundId = "";
            firstBtn.soundType = "okButton";
            firstBtn.toggle = false;
            firstBtn.visible = true;
            try 
            {
                firstBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_thirdBtn_DestroyDeviceDialogUI_btns_0():*
        {
            try 
            {
                thirdBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            thirdBtn.autoRepeat = false;
            thirdBtn.autoSize = "none";
            thirdBtn.data = "";
            thirdBtn.enabled = true;
            thirdBtn.enableInitCallback = false;
            thirdBtn.fillPadding = 0;
            thirdBtn.focusable = true;
            thirdBtn.label = "";
            thirdBtn.paddingHorizontal = 5;
            thirdBtn.selected = false;
            thirdBtn.soundId = "";
            thirdBtn.soundType = "rendererNormal";
            thirdBtn.toggle = false;
            thirdBtn.visible = true;
            try 
            {
                thirdBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_dynamicWhiteButton_DestroyDeviceDialogUI_btns_0():*
        {
            try 
            {
                dynamicWhiteButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            dynamicWhiteButton.autoRepeat = false;
            dynamicWhiteButton.autoSize = "none";
            dynamicWhiteButton.data = "";
            dynamicWhiteButton.enabled = true;
            dynamicWhiteButton.enableInitCallback = false;
            dynamicWhiteButton.fillPadding = 0;
            dynamicWhiteButton.focusable = true;
            dynamicWhiteButton.label = "";
            dynamicWhiteButton.paddingHorizontal = 5;
            dynamicWhiteButton.selected = false;
            dynamicWhiteButton.soundId = "";
            dynamicWhiteButton.soundType = "cancelButton";
            dynamicWhiteButton.toggle = false;
            dynamicWhiteButton.visible = false;
            try 
            {
                dynamicWhiteButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
