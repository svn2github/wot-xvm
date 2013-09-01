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
    import net.wg.gui.prebattle.squad.*;
    
    public dynamic class SquadWindowUI extends net.wg.gui.prebattle.squad.SquadWindow
    {
        public function SquadWindowUI()
        {
            super();
            this.__setProp_memberList_SquadWindowUI_Layer2_0();
            return;
        }

        internal function __setProp_memberList_SquadWindowUI_Layer2_0():*
        {
            try 
            {
                memberList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            memberList.enabled = true;
            memberList.enableInitCallback = false;
            memberList.focusable = true;
            memberList.itemRendererName = "squadItemRendererUI";
            memberList.itemRendererInstanceName = "";
            memberList.margin = 0;
            memberList.inspectablePadding = {"top":3, "right":3, "bottom":3, "left":3};
            memberList.rowHeight = 0;
            memberList.scrollBar = "";
            memberList.useRightButton = true;
            memberList.useRightButtonForSelect = false;
            memberList.visible = true;
            memberList.wrapping = "normal";
            try 
            {
                memberList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
