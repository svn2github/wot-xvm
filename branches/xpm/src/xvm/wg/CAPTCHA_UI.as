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
    
    public dynamic class CAPTCHA_UI extends net.wg.gui.notification.CAPTCHA
    {
        public function CAPTCHA_UI()
        {
            super();
            this.__setProp_inputField_CAPTCHA_Layer2_0();
            this.__setProp_reloadButton_CAPTCHA_Layer3_0();
            this.__setProp_submitButton_CAPTCHA_Layer3_0();
            this.__setProp_closeButton_CAPTCHA_Layer3_0();
            this.__setProp_captuteIcon_CAPTCHA_Layer6_0();
            return;
        }

        internal function __setProp_inputField_CAPTCHA_Layer2_0():*
        {
            try 
            {
                inputField["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            inputField.actAsButton = false;
            inputField.defaultText = "";
            inputField.displayAsPassword = false;
            inputField.editable = true;
            inputField.enabled = true;
            inputField.enableInitCallback = false;
            inputField.focusable = true;
            inputField.maxChars = 255;
            inputField.text = "";
            inputField.visible = true;
            try 
            {
                inputField["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_reloadButton_CAPTCHA_Layer3_0():*
        {
            try 
            {
                reloadButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            reloadButton.autoRepeat = false;
            reloadButton.autoSize = "none";
            reloadButton.data = "";
            reloadButton.enabled = true;
            reloadButton.enableInitCallback = false;
            reloadButton.fillPadding = 0;
            reloadButton.focusable = true;
            reloadButton.label = "#captcha:gui/buttons/reload";
            reloadButton.paddingHorizontal = 5;
            reloadButton.selected = false;
            reloadButton.soundId = "";
            reloadButton.soundType = "normal";
            reloadButton.toggle = false;
            reloadButton.visible = true;
            try 
            {
                reloadButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_submitButton_CAPTCHA_Layer3_0():*
        {
            try 
            {
                submitButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            submitButton.autoRepeat = false;
            submitButton.autoSize = "none";
            submitButton.data = "";
            submitButton.enabled = true;
            submitButton.enableInitCallback = false;
            submitButton.fillPadding = 0;
            submitButton.focusable = true;
            submitButton.label = "#captcha:gui/buttons/submit";
            submitButton.paddingHorizontal = 5;
            submitButton.selected = false;
            submitButton.soundId = "";
            submitButton.soundType = "normal";
            submitButton.toggle = false;
            submitButton.visible = true;
            try 
            {
                submitButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_closeButton_CAPTCHA_Layer3_0():*
        {
            try 
            {
                closeButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            closeButton.autoRepeat = false;
            closeButton.autoSize = "none";
            closeButton.data = "";
            closeButton.enabled = true;
            closeButton.enableInitCallback = false;
            closeButton.fillPadding = 0;
            closeButton.focusable = true;
            closeButton.label = "#captcha:gui/buttons/close";
            closeButton.paddingHorizontal = 5;
            closeButton.selected = false;
            closeButton.soundId = "";
            closeButton.soundType = "normal";
            closeButton.toggle = false;
            closeButton.visible = true;
            try 
            {
                closeButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_captuteIcon_CAPTCHA_Layer6_0():*
        {
            try 
            {
                captuteIcon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            captuteIcon.autoSize = true;
            captuteIcon.enableInitCallback = false;
            captuteIcon.maintainAspectRatio = false;
            captuteIcon.source = "";
            captuteIcon.sourceAlt = "";
            captuteIcon.visible = true;
            try 
            {
                captuteIcon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
