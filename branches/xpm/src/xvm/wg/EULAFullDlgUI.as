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
    import net.wg.gui.login.EULA.*;
    
    public dynamic class EULAFullDlgUI extends net.wg.gui.login.EULA.EULAFullDlg
    {
        public function EULAFullDlgUI()
        {
            super();
            this.__setProp_applyButton_content_Layer1_0();
            this.__setProp_agreeCheckBox_content_Layer1_0();
            this.__setProp_textArea_content_Layer3_0();
            return;
        }

        internal function __setProp_applyButton_content_Layer1_0():*
        {
            try 
            {
                applyButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            applyButton.autoRepeat = false;
            applyButton.autoSize = "none";
            applyButton.data = "";
            applyButton.enabled = true;
            applyButton.enableInitCallback = false;
            applyButton.fillPadding = 0;
            applyButton.focusable = true;
            applyButton.label = "#dialogs:EULA/buttons/apply";
            applyButton.paddingHorizontal = 5;
            applyButton.selected = false;
            applyButton.soundId = "";
            applyButton.soundType = "buttonCaps";
            applyButton.toggle = false;
            applyButton.visible = true;
            try 
            {
                applyButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_agreeCheckBox_content_Layer1_0():*
        {
            try 
            {
                agreeCheckBox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            agreeCheckBox.autoSize = "none";
            agreeCheckBox.data = "";
            agreeCheckBox.enabled = true;
            agreeCheckBox.enableInitCallback = false;
            agreeCheckBox.focusable = true;
            agreeCheckBox.label = "#dialogs:EULA/labels/agree";
            agreeCheckBox.selected = false;
            agreeCheckBox.soundId = "";
            agreeCheckBox.soundType = "";
            agreeCheckBox.textColor = 9868935;
            agreeCheckBox.textFont = "$TextFont";
            agreeCheckBox.textSize = 12;
            agreeCheckBox.visible = true;
            try 
            {
                agreeCheckBox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_textArea_content_Layer3_0():*
        {
            try 
            {
                textArea["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            textArea.actAsButton = false;
            textArea.autoScroll = false;
            textArea.defaultText = "";
            textArea.displayAsPassword = false;
            textArea.editable = false;
            textArea.enabled = true;
            textArea.enableInitCallback = false;
            textArea.focusable = false;
            textArea.maxChars = 0;
            textArea.minThumbSize = 1;
            textArea.scrollBar = "ScrollBar";
            textArea.showBgForm = false;
            textArea.text = "";
            textArea.thumbOffset = {"top":0, "bottom":0};
            textArea.visible = true;
            try 
            {
                textArea["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
