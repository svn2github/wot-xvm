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
    import net.wg.gui.messenger.windows.*;
    
    public dynamic class ConnectToSecureChannelWindowUI extends net.wg.gui.messenger.windows.ConnectToSecureChannelWindow
    {
        public function ConnectToSecureChannelWindowUI()
        {
            super();
            this.__setProp_passwordInput_ConnectToSecureChannelWindowUI_Layer2_0();
            this.__setProp_connectButton_ConnectToSecureChannelWindowUI_Layer2_0();
            this.__setProp_cancelButton_ConnectToSecureChannelWindowUI_Layer2_0();
            return;
        }

        internal function __setProp_passwordInput_ConnectToSecureChannelWindowUI_Layer2_0():*
        {
            try 
            {
                passwordInput["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            passwordInput.actAsButton = false;
            passwordInput.defaultText = "";
            passwordInput.displayAsPassword = true;
            passwordInput.editable = true;
            passwordInput.enabled = true;
            passwordInput.enableInitCallback = false;
            passwordInput.focusable = true;
            passwordInput.maxChars = 12;
            passwordInput.text = "";
            passwordInput.visible = true;
            try 
            {
                passwordInput["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_connectButton_ConnectToSecureChannelWindowUI_Layer2_0():*
        {
            try 
            {
                connectButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            connectButton.autoRepeat = false;
            connectButton.autoSize = "none";
            connectButton.data = "";
            connectButton.enabled = true;
            connectButton.enableInitCallback = false;
            connectButton.fillPadding = 0;
            connectButton.focusable = true;
            connectButton.label = "#messenger:dialogs/connectingToSecureChannel/buttons/connect";
            connectButton.paddingHorizontal = 5;
            connectButton.selected = false;
            connectButton.soundId = "";
            connectButton.soundType = "normal";
            connectButton.toggle = false;
            connectButton.visible = true;
            try 
            {
                connectButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_cancelButton_ConnectToSecureChannelWindowUI_Layer2_0():*
        {
            try 
            {
                cancelButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            cancelButton.autoRepeat = false;
            cancelButton.autoSize = "none";
            cancelButton.data = "";
            cancelButton.enabled = true;
            cancelButton.enableInitCallback = false;
            cancelButton.fillPadding = 0;
            cancelButton.focusable = true;
            cancelButton.label = "#messenger:dialogs/connectingToSecureChannel/buttons/close";
            cancelButton.paddingHorizontal = 5;
            cancelButton.selected = false;
            cancelButton.soundId = "";
            cancelButton.soundType = "normal";
            cancelButton.toggle = false;
            cancelButton.visible = true;
            try 
            {
                cancelButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
