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
    import net.wg.gui.messenger.*;
    
    public dynamic class squadChannelComponentUI extends net.wg.gui.messenger.ChannelComponent
    {
        public function squadChannelComponentUI()
        {
            super();
            this.__setProp_messageArea_squadChannelComponentUI_Layer1_0();
            this.__setProp_sendButton_squadChannelComponentUI_Layer1_0();
            return;
        }

        internal function __setProp_messageArea_squadChannelComponentUI_Layer1_0():*
        {
            try 
            {
                messageArea["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            messageArea.actAsButton = false;
            messageArea.autoScroll = true;
            messageArea.defaultText = "";
            messageArea.displayAsPassword = false;
            messageArea.editable = true;
            messageArea.enabled = true;
            messageArea.enableInitCallback = false;
            messageArea.focusable = true;
            messageArea.maxChars = 25000;
            messageArea.minThumbSize = 10;
            messageArea.scrollBar = "ScrollBar";
            messageArea.showBgForm = true;
            messageArea.text = "";
            messageArea.thumbOffset = {"top":0, "bottom":0};
            messageArea.visible = true;
            try 
            {
                messageArea["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_sendButton_squadChannelComponentUI_Layer1_0():*
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
            sendButton.label = "#messenger:lobby/buttons/send";
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
