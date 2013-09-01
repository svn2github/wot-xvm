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
    import net.wg.gui.lobby.messengerBar.*;
    
    public dynamic class NotificationInviteButton_UI extends net.wg.gui.lobby.messengerBar.NotificationInvitesButton
    {
        public function NotificationInviteButton_UI()
        {
            super();
            this.__setProp_notificationButton_NotificationInviteButton_UI_Layer1_0();
            return;
        }

        internal function __setProp_notificationButton_NotificationInviteButton_UI_Layer1_0():*
        {
            try 
            {
                notificationButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            notificationButton.autoRepeat = false;
            notificationButton.autoSize = "none";
            notificationButton.data = "";
            notificationButton.enabled = true;
            notificationButton.enableInitCallback = false;
            notificationButton.fillPadding = 0;
            notificationButton.focusable = true;
            notificationButton.helpConnectorLength = 12;
            notificationButton.helpDirection = "T";
            notificationButton.helpText = "#lobby_help:chat/invites";
            notificationButton.iconOffsetLeft = 20;
            notificationButton.iconOffsetTop = 1;
            notificationButton.iconSource = "../maps/icons/messenger/invites_icon.png";
            notificationButton.label = "";
            notificationButton.paddingHorizontal = 0;
            notificationButton.selected = false;
            notificationButton.soundId = "invitesButton";
            notificationButton.soundType = "messengerButton";
            notificationButton.toggle = false;
            notificationButton.tooltip = "";
            notificationButton.visible = true;
            try 
            {
                notificationButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
