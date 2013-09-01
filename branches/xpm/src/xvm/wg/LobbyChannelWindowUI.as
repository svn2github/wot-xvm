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
    
    public dynamic class LobbyChannelWindowUI extends net.wg.gui.messenger.windows.LobbyChannelWindow
    {
        public function LobbyChannelWindowUI()
        {
            super();
            this.__setProp_membersList_LobbyChannelWindow_membersList_0();
            return;
        }

        internal function __setProp_membersList_LobbyChannelWindow_membersList_0():*
        {
            try 
            {
                membersList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            membersList.enabled = true;
            membersList.enableInitCallback = false;
            membersList.focusable = true;
            membersList.itemRendererName = "MemberItemRendererUI";
            membersList.itemRendererInstanceName = "";
            membersList.margin = 1;
            membersList.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            membersList.rowHeight = 0;
            membersList.scrollBar = "ScrollBar";
            membersList.useRightButton = true;
            membersList.useRightButtonForSelect = false;
            membersList.visible = true;
            membersList.wrapping = "normal";
            try 
            {
                membersList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
