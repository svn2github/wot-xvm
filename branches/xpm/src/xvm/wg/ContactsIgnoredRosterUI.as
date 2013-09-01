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
    
    public dynamic class ContactsIgnoredRosterUI extends net.wg.gui.prebattle.invites.UserRosterView
    {
        public function ContactsIgnoredRosterUI()
        {
            super();
            this.__setProp_rosterList_ContactsIgnoredRoster_Layer1_0();
            return;
        }

        internal function __setProp_rosterList_ContactsIgnoredRoster_Layer1_0():*
        {
            var loc1:*;
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
            rosterList.inspectablePadding = {"top":1, "right":0, "bottom":1, "left":0};
            rosterList.rowHeight = 0;
            rosterList.scrollBar = "ScrollBar";
            rosterList.useRightButton = true;
            rosterList.useRightButtonForSelect = true;
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
