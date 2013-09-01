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
    
    public dynamic class MessengerBar_UI extends net.wg.gui.lobby.messengerBar.MessengerBar
    {
        public function MessengerBar_UI()
        {
            super();
            this.__setProp_channelButton_MessengerBar_UI_channelButton_0();
            this.__setProp_contactButton_MessengerBar_UI_channelButton_0();
            return;
        }

        internal function __setProp_channelButton_MessengerBar_UI_channelButton_0():*
        {
            try 
            {
                channelButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            channelButton.autoRepeat = false;
            channelButton.autoSize = "none";
            channelButton.data = "";
            channelButton.enabled = true;
            channelButton.enableInitCallback = false;
            channelButton.fillPadding = 2;
            channelButton.focusable = true;
            channelButton.helpConnectorLength = 12;
            channelButton.helpDirection = "T";
            channelButton.helpText = "";
            channelButton.label = "#messenger:lobby/buttons/channels";
            channelButton.paddingHorizontal = 5;
            channelButton.selected = false;
            channelButton.soundId = "channelButton";
            channelButton.soundType = "messengerButton";
            channelButton.toggle = false;
            channelButton.tooltip = "";
            channelButton.visible = true;
            try 
            {
                channelButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_contactButton_MessengerBar_UI_channelButton_0():*
        {
            try 
            {
                contactButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            contactButton.autoRepeat = false;
            contactButton.autoSize = "none";
            contactButton.data = "";
            contactButton.enabled = true;
            contactButton.enableInitCallback = false;
            contactButton.fillPadding = 2;
            contactButton.focusable = true;
            contactButton.helpConnectorLength = 12;
            contactButton.helpDirection = "T";
            contactButton.helpText = "";
            contactButton.label = "#messenger:lobby/buttons/contacts";
            contactButton.paddingHorizontal = 5;
            contactButton.selected = false;
            contactButton.soundId = "channelButton";
            contactButton.soundType = "messengerButton";
            contactButton.toggle = false;
            contactButton.tooltip = "";
            contactButton.visible = true;
            try 
            {
                contactButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
