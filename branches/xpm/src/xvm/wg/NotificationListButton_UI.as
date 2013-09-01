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
    
    public dynamic class NotificationListButton_UI extends net.wg.gui.lobby.messengerBar.NotificationListButton
    {
        public function NotificationListButton_UI()
        {
            super();
            this.__setProp_button_NotificationListButton_UI_Layer1_0();
            return;
        }

        internal function __setProp_button_NotificationListButton_UI_Layer1_0():*
        {
            try 
            {
                button["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            button.autoRepeat = false;
            button.autoSize = "none";
            button.data = "";
            button.enabled = true;
            button.enableInitCallback = false;
            button.fillPadding = 0;
            button.focusable = true;
            button.helpConnectorLength = 12;
            button.helpDirection = "T";
            button.helpText = "#lobby_help:chat/service-channel";
            button.iconOffsetLeft = 19;
            button.iconOffsetTop = 1;
            button.iconSource = "../maps/icons/messenger/service_channel_icon.png";
            button.label = "";
            button.paddingHorizontal = 0;
            button.selected = false;
            button.soundId = "";
            button.soundType = "normal";
            button.toggle = false;
            button.tooltip = "";
            button.visible = true;
            try 
            {
                button["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
