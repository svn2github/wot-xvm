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
    
    public dynamic class FriendsListFromUI extends net.wg.gui.prebattle.invites.UserRosterView
    {
        public function FriendsListFromUI()
        {
            super();
            this.__setProp_rosterList_FriendsListFromUI_Layer1_0();
            return;
        }

        internal function __setProp_rosterList_FriendsListFromUI_Layer1_0():*
        {
            try 
            {
                rosterList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            rosterList.enabled = true;
            rosterList.enableInitCallback = false;
            rosterList.focusable = true;
            rosterList.itemRendererName = "UserRosterItemRendererUI";
            rosterList.itemRendererInstanceName = "";
            rosterList.margin = 0;
            rosterList.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":1};
            rosterList.rowHeight = 0;
            rosterList.scrollBar = "ScrollBar";
            rosterList.useRightButton = false;
            rosterList.useRightButtonForSelect = false;
            rosterList.visible = true;
            rosterList.wrapping = "normal";
            try 
            {
                rosterList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
