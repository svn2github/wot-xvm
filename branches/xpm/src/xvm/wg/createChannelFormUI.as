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
    import net.wg.gui.messenger.forms.*;
    
    public dynamic class createChannelFormUI extends net.wg.gui.messenger.forms.ChannelsCreateForm
    {
        public function createChannelFormUI()
        {
            super();
            this.__setProp_channelNameLabel_createChannelFormUI_channelNameLabel_0();
            this.__setProp_channelNameInput_createChannelFormUI_channelNameInput_0();
            this.__setProp_channelPasswordLabel_createChannelFormUI_channelPasswordLabel_0();
            this.__setProp_channelFillPasswordLabel_createChannelFormUI_channelFillPasswordLabel_0();
            this.__setProp_channelRetypePasswordLabel_createChannelFormUI_channelRetypePasswordLabel_0();
            this.__setProp_channelPasswordCheckBox_createChannelFormUI_channelPasswordCheckBox_0();
            this.__setProp_channelPasswordInput_createChannelFormUI_channelPasswordInput_0();
            this.__setProp_channelRetypePasswordInput_createChannelFormUI_channelRetypePasswordInput_0();
            this.__setProp_channelCreateButton_createChannelFormUI_channelCreateButton_0();
            return;
        }

        internal function __setProp_channelNameLabel_createChannelFormUI_channelNameLabel_0():*
        {
            try 
            {
                channelNameLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            channelNameLabel.autoSize = "none";
            channelNameLabel.enabled = true;
            channelNameLabel.enableInitCallback = false;
            channelNameLabel.text = "#messenger:dialogs/createChannel/labels/name";
            channelNameLabel.textAlign = "left";
            channelNameLabel.visible = true;
            try 
            {
                channelNameLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_channelNameInput_createChannelFormUI_channelNameInput_0():*
        {
            try 
            {
                channelNameInput["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            channelNameInput.actAsButton = false;
            channelNameInput.defaultText = "";
            channelNameInput.displayAsPassword = false;
            channelNameInput.editable = true;
            channelNameInput.enabled = true;
            channelNameInput.enableInitCallback = false;
            channelNameInput.focusable = true;
            channelNameInput.maxChars = 32;
            channelNameInput.text = "";
            channelNameInput.visible = true;
            try 
            {
                channelNameInput["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_channelPasswordLabel_createChannelFormUI_channelPasswordLabel_0():*
        {
            try 
            {
                channelPasswordLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            channelPasswordLabel.autoSize = "none";
            channelPasswordLabel.enabled = true;
            channelPasswordLabel.enableInitCallback = false;
            channelPasswordLabel.text = "#messenger:dialogs/createChannel/labels/password";
            channelPasswordLabel.textAlign = "left";
            channelPasswordLabel.visible = true;
            try 
            {
                channelPasswordLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_channelFillPasswordLabel_createChannelFormUI_channelFillPasswordLabel_0():*
        {
            try 
            {
                channelFillPasswordLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            channelFillPasswordLabel.autoSize = "none";
            channelFillPasswordLabel.enabled = true;
            channelFillPasswordLabel.enableInitCallback = false;
            channelFillPasswordLabel.text = "#messenger:dialogs/createChannel/labels/fillPassword";
            channelFillPasswordLabel.textAlign = "left";
            channelFillPasswordLabel.visible = true;
            try 
            {
                channelFillPasswordLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_channelRetypePasswordLabel_createChannelFormUI_channelRetypePasswordLabel_0():*
        {
            try 
            {
                channelRetypePasswordLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            channelRetypePasswordLabel.autoSize = "none";
            channelRetypePasswordLabel.enabled = true;
            channelRetypePasswordLabel.enableInitCallback = false;
            channelRetypePasswordLabel.text = "#messenger:dialogs/createChannel/labels/retypePassword";
            channelRetypePasswordLabel.textAlign = "left";
            channelRetypePasswordLabel.visible = true;
            try 
            {
                channelRetypePasswordLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_channelPasswordCheckBox_createChannelFormUI_channelPasswordCheckBox_0():*
        {
            try 
            {
                channelPasswordCheckBox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            channelPasswordCheckBox.autoSize = "none";
            channelPasswordCheckBox.data = "";
            channelPasswordCheckBox.enabled = true;
            channelPasswordCheckBox.enableInitCallback = false;
            channelPasswordCheckBox.focusable = true;
            channelPasswordCheckBox.label = "#messenger:dialogs/createChannel/labels/usePassword";
            channelPasswordCheckBox.selected = false;
            channelPasswordCheckBox.soundId = "";
            channelPasswordCheckBox.soundType = "";
            channelPasswordCheckBox.textColor = 9868935;
            channelPasswordCheckBox.textFont = "$TextFont";
            channelPasswordCheckBox.textSize = 12;
            channelPasswordCheckBox.visible = true;
            try 
            {
                channelPasswordCheckBox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_channelPasswordInput_createChannelFormUI_channelPasswordInput_0():*
        {
            try 
            {
                channelPasswordInput["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            channelPasswordInput.actAsButton = false;
            channelPasswordInput.defaultText = "";
            channelPasswordInput.displayAsPassword = true;
            channelPasswordInput.editable = true;
            channelPasswordInput.enabled = true;
            channelPasswordInput.enableInitCallback = false;
            channelPasswordInput.focusable = true;
            channelPasswordInput.maxChars = 12;
            channelPasswordInput.text = "";
            channelPasswordInput.visible = true;
            try 
            {
                channelPasswordInput["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_channelRetypePasswordInput_createChannelFormUI_channelRetypePasswordInput_0():*
        {
            try 
            {
                channelRetypePasswordInput["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            channelRetypePasswordInput.actAsButton = false;
            channelRetypePasswordInput.defaultText = "";
            channelRetypePasswordInput.displayAsPassword = true;
            channelRetypePasswordInput.editable = true;
            channelRetypePasswordInput.enabled = true;
            channelRetypePasswordInput.enableInitCallback = false;
            channelRetypePasswordInput.focusable = true;
            channelRetypePasswordInput.maxChars = 12;
            channelRetypePasswordInput.text = "";
            channelRetypePasswordInput.visible = true;
            try 
            {
                channelRetypePasswordInput["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_channelCreateButton_createChannelFormUI_channelCreateButton_0():*
        {
            try 
            {
                channelCreateButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            channelCreateButton.autoRepeat = false;
            channelCreateButton.autoSize = "none";
            channelCreateButton.data = "";
            channelCreateButton.enabled = true;
            channelCreateButton.enableInitCallback = false;
            channelCreateButton.fillPadding = 0;
            channelCreateButton.focusable = true;
            channelCreateButton.label = "#messenger:dialogs/createChannel/buttons/create";
            channelCreateButton.paddingHorizontal = 5;
            channelCreateButton.selected = false;
            channelCreateButton.soundId = "";
            channelCreateButton.soundType = "normal";
            channelCreateButton.toggle = false;
            channelCreateButton.visible = true;
            try 
            {
                channelCreateButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
