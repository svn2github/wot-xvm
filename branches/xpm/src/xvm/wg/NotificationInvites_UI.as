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
    
    public dynamic class NotificationInvites_UI extends net.wg.gui.prebattle.invites.NotificationInvitesWindow
    {
        public function NotificationInvites_UI()
        {
            super();
            this.__setProp_messageArea_NotificationInvites_UI_Layer2_0();
            return;
        }

        internal function __setProp_messageArea_NotificationInvites_UI_Layer2_0():*
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
            messageArea.editable = false;
            messageArea.enabled = true;
            messageArea.enableInitCallback = false;
            messageArea.focusable = true;
            messageArea.maxChars = 0;
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
    }
}
