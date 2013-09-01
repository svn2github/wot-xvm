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
    
    public dynamic class ReceivedInviteComponentUI extends net.wg.gui.prebattle.invites.ReceivedInviteWindow
    {
        public function ReceivedInviteComponentUI()
        {
            super();
            addFrameScript(0, this.frame1, 1, this.frame2);
            this.__setProp_acceptButton_ReceivedInviteComponentUI_buttons_0();
            this.__setProp_declineButton_ReceivedInviteComponentUI_buttons_0();
            this.__setProp_cancelButton_ReceivedInviteComponentUI_buttons_0();
            this.__setProp_messageTextArea_ReceivedInviteComponentUI_comment_0();
            this.__setProp_inviteTextArea_ReceivedInviteComponentUI_text_0();
            return;
        }

        internal function __setProp_acceptButton_ReceivedInviteComponentUI_buttons_0():*
        {
            try 
            {
                acceptButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            acceptButton.autoRepeat = false;
            acceptButton.autoSize = "none";
            acceptButton.data = "";
            acceptButton.enabled = true;
            acceptButton.enableInitCallback = false;
            acceptButton.fillPadding = 0;
            acceptButton.focusable = true;
            acceptButton.label = "#invites:gui/buttons/accept";
            acceptButton.paddingHorizontal = 5;
            acceptButton.selected = false;
            acceptButton.soundId = "";
            acceptButton.soundType = "normal";
            acceptButton.toggle = false;
            acceptButton.visible = true;
            try 
            {
                acceptButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_declineButton_ReceivedInviteComponentUI_buttons_0():*
        {
            try 
            {
                declineButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            declineButton.autoRepeat = false;
            declineButton.autoSize = "none";
            declineButton.data = "";
            declineButton.enabled = true;
            declineButton.enableInitCallback = false;
            declineButton.fillPadding = 0;
            declineButton.focusable = true;
            declineButton.label = "#invites:gui/buttons/reject";
            declineButton.paddingHorizontal = 5;
            declineButton.selected = false;
            declineButton.soundId = "";
            declineButton.soundType = "normal";
            declineButton.toggle = false;
            declineButton.visible = true;
            try 
            {
                declineButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_cancelButton_ReceivedInviteComponentUI_buttons_0():*
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
            cancelButton.label = "#invites:gui/buttons/cancel";
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

        internal function __setProp_messageTextArea_ReceivedInviteComponentUI_comment_0():*
        {
            try 
            {
                messageTextArea["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            messageTextArea.actAsButton = false;
            messageTextArea.autoScroll = false;
            messageTextArea.defaultText = "";
            messageTextArea.displayAsPassword = false;
            messageTextArea.editable = false;
            messageTextArea.enabled = true;
            messageTextArea.enableInitCallback = false;
            messageTextArea.focusable = true;
            messageTextArea.maxChars = 400;
            messageTextArea.minThumbSize = 1;
            messageTextArea.scrollBar = "ScrollBar";
            messageTextArea.showBgForm = true;
            messageTextArea.text = "";
            messageTextArea.thumbOffset = {"top":0, "bottom":0};
            messageTextArea.visible = true;
            try 
            {
                messageTextArea["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_inviteTextArea_ReceivedInviteComponentUI_text_0():*
        {
            try 
            {
                inviteTextArea["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            inviteTextArea.actAsButton = false;
            inviteTextArea.autoScroll = false;
            inviteTextArea.defaultText = "";
            inviteTextArea.displayAsPassword = false;
            inviteTextArea.editable = false;
            inviteTextArea.enabled = true;
            inviteTextArea.enableInitCallback = false;
            inviteTextArea.focusable = true;
            inviteTextArea.maxChars = 400;
            inviteTextArea.minThumbSize = 1;
            inviteTextArea.scrollBar = "ScrollBar";
            inviteTextArea.showBgForm = true;
            inviteTextArea.text = "";
            inviteTextArea.thumbOffset = {"top":0, "bottom":0};
            inviteTextArea.visible = true;
            try 
            {
                inviteTextArea["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function frame1():*
        {
            stop();
            return;
        }

        internal function frame2():*
        {
            stop();
            return;
        }
    }
}
