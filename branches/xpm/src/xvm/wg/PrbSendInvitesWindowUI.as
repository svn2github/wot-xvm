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
    import net.wg.gui.prebattle.invites.*;
    
    public dynamic class PrbSendInvitesWindowUI extends net.wg.gui.prebattle.invites.PrbSendInvitesWindow
    {
        public function PrbSendInvitesWindowUI()
        {
            super();
            this.__setProp_usersAccordion_PrbSendInvitesWindowUI_AccordionUI_0();
            this.__setProp_receiverList_PrbSendInvitesWindowUI_ScrollingListUI_0();
            this.__setProp_addAllUsersButton_PrbSendInvitesWindowUI_AddAll_0();
            this.__setProp_addUserButton_PrbSendInvitesWindowUI_addUser_0();
            this.__setProp_removeUserButton_PrbSendInvitesWindowUI_removeUser_0();
            this.__setProp_removeAllUsersButton_PrbSendInvitesWindowUI_removeAll_0();
            this.__setProp_onlineCheckBox_PrbSendInvitesWindowUI_checkBoxUI_0();
            this.__setProp_messageTextInput_PrbSendInvitesWindowUI_TextInputUI_0();
            this.__setProp_sendButton_PrbSendInvitesWindowUI_ButtonNormalUI_0();
            return;
        }

        internal function __setProp_usersAccordion_PrbSendInvitesWindowUI_AccordionUI_0():*
        {
            try 
            {
                usersAccordion["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            usersAccordion.backgroundType = "brown";
            usersAccordion.enabled = true;
            usersAccordion.enableHeaderConstraints = true;
            usersAccordion.enableInitCallback = false;
            usersAccordion.focusable = true;
            usersAccordion.itemRendererName = "AccordionHeaderUI";
            usersAccordion.margin = 1;
            usersAccordion.paddingBottom = 1;
            usersAccordion.paddingLeft = 0;
            usersAccordion.paddingTop = 1;
            usersAccordion.rowHeight = 20;
            usersAccordion.showBackground = true;
            usersAccordion.visible = true;
            try 
            {
                usersAccordion["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_receiverList_PrbSendInvitesWindowUI_ScrollingListUI_0():*
        {
            try 
            {
                receiverList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            receiverList.enabled = true;
            receiverList.enableInitCallback = false;
            receiverList.focusable = true;
            receiverList.itemRendererName = "UserRosterItemRendererUI";
            receiverList.itemRendererInstanceName = "";
            receiverList.margin = 0;
            receiverList.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            receiverList.rowHeight = 0;
            receiverList.scrollBar = "ScrollBar";
            receiverList.useRightButton = false;
            receiverList.useRightButtonForSelect = false;
            receiverList.visible = true;
            receiverList.wrapping = "normal";
            try 
            {
                receiverList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_addAllUsersButton_PrbSendInvitesWindowUI_AddAll_0():*
        {
            try 
            {
                addAllUsersButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            addAllUsersButton.autoRepeat = false;
            addAllUsersButton.autoSize = "none";
            addAllUsersButton.data = "";
            addAllUsersButton.enabled = true;
            addAllUsersButton.enableInitCallback = false;
            addAllUsersButton.fillPadding = 0;
            addAllUsersButton.focusable = true;
            addAllUsersButton.helpConnectorLength = 12;
            addAllUsersButton.helpDirection = "T";
            addAllUsersButton.helpText = "";
            addAllUsersButton.label = ">>";
            addAllUsersButton.paddingHorizontal = 5;
            addAllUsersButton.selected = false;
            addAllUsersButton.soundId = "";
            addAllUsersButton.soundType = "arrow";
            addAllUsersButton.toggle = false;
            addAllUsersButton.tooltip = "";
            addAllUsersButton.visible = true;
            try 
            {
                addAllUsersButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_addUserButton_PrbSendInvitesWindowUI_addUser_0():*
        {
            try 
            {
                addUserButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            addUserButton.autoRepeat = false;
            addUserButton.autoSize = "none";
            addUserButton.data = "";
            addUserButton.enabled = true;
            addUserButton.enableInitCallback = false;
            addUserButton.fillPadding = 0;
            addUserButton.focusable = true;
            addUserButton.helpConnectorLength = 12;
            addUserButton.helpDirection = "T";
            addUserButton.helpText = "";
            addUserButton.label = ">";
            addUserButton.paddingHorizontal = 5;
            addUserButton.selected = false;
            addUserButton.soundId = "";
            addUserButton.soundType = "arrow";
            addUserButton.toggle = false;
            addUserButton.tooltip = "";
            addUserButton.visible = true;
            try 
            {
                addUserButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_removeUserButton_PrbSendInvitesWindowUI_removeUser_0():*
        {
            try 
            {
                removeUserButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            removeUserButton.autoRepeat = false;
            removeUserButton.autoSize = "none";
            removeUserButton.data = "";
            removeUserButton.enabled = true;
            removeUserButton.enableInitCallback = false;
            removeUserButton.fillPadding = 0;
            removeUserButton.focusable = true;
            removeUserButton.helpConnectorLength = 12;
            removeUserButton.helpDirection = "T";
            removeUserButton.helpText = "";
            removeUserButton.label = "<";
            removeUserButton.paddingHorizontal = 5;
            removeUserButton.selected = false;
            removeUserButton.soundId = "";
            removeUserButton.soundType = "arrow";
            removeUserButton.toggle = false;
            removeUserButton.tooltip = "";
            removeUserButton.visible = true;
            try 
            {
                removeUserButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_removeAllUsersButton_PrbSendInvitesWindowUI_removeAll_0():*
        {
            try 
            {
                removeAllUsersButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            removeAllUsersButton.autoRepeat = false;
            removeAllUsersButton.autoSize = "none";
            removeAllUsersButton.data = "";
            removeAllUsersButton.enabled = true;
            removeAllUsersButton.enableInitCallback = false;
            removeAllUsersButton.fillPadding = 0;
            removeAllUsersButton.focusable = true;
            removeAllUsersButton.helpConnectorLength = 12;
            removeAllUsersButton.helpDirection = "T";
            removeAllUsersButton.helpText = "";
            removeAllUsersButton.label = "<<";
            removeAllUsersButton.paddingHorizontal = 5;
            removeAllUsersButton.selected = false;
            removeAllUsersButton.soundId = "";
            removeAllUsersButton.soundType = "arrow";
            removeAllUsersButton.toggle = false;
            removeAllUsersButton.tooltip = "";
            removeAllUsersButton.visible = true;
            try 
            {
                removeAllUsersButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_onlineCheckBox_PrbSendInvitesWindowUI_checkBoxUI_0():*
        {
            try 
            {
                onlineCheckBox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            onlineCheckBox.autoSize = "none";
            onlineCheckBox.data = "";
            onlineCheckBox.enabled = true;
            onlineCheckBox.enableInitCallback = false;
            onlineCheckBox.focusable = true;
            onlineCheckBox.label = "#menu:prebattle/invitations/labels/isOnline";
            onlineCheckBox.selected = false;
            onlineCheckBox.soundId = "";
            onlineCheckBox.soundType = "checkBox";
            onlineCheckBox.textColor = 9868935;
            onlineCheckBox.textFont = "$TextFont";
            onlineCheckBox.textSize = 12;
            onlineCheckBox.visible = true;
            try 
            {
                onlineCheckBox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_messageTextInput_PrbSendInvitesWindowUI_TextInputUI_0():*
        {
            try 
            {
                messageTextInput["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            messageTextInput.actAsButton = false;
            messageTextInput.defaultText = "#menu:prebattle/invitations/labels/defaultInviteText";
            messageTextInput.displayAsPassword = false;
            messageTextInput.editable = true;
            messageTextInput.enabled = true;
            messageTextInput.enableInitCallback = false;
            messageTextInput.focusable = true;
            messageTextInput.maxChars = 400;
            messageTextInput.text = "";
            messageTextInput.visible = true;
            try 
            {
                messageTextInput["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_sendButton_PrbSendInvitesWindowUI_ButtonNormalUI_0():*
        {
            try 
            {
                sendButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            sendButton.autoRepeat = false;
            sendButton.autoSize = "none";
            sendButton.data = "";
            sendButton.enabled = true;
            sendButton.enableInitCallback = false;
            sendButton.fillPadding = 0;
            sendButton.focusable = true;
            sendButton.label = "#menu:prebattle/invitations/buttons/send";
            sendButton.paddingHorizontal = 5;
            sendButton.selected = false;
            sendButton.soundId = "";
            sendButton.soundType = "normal";
            sendButton.toggle = false;
            sendButton.visible = true;
            try 
            {
                sendButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
