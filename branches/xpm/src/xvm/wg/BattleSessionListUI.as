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
    import net.wg.gui.prebattle.battleSession.*;
    
    public dynamic class BattleSessionListUI extends net.wg.gui.prebattle.battleSession.BattleSessionList
    {
        public function BattleSessionListUI()
        {
            super();
            this.__setProp_groupsList_BattleSessionListUI_form_0();
            return;
        }

        internal function __setProp_groupsList_BattleSessionListUI_form_0():*
        {
            try 
            {
                groupsList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            groupsList.enabled = true;
            groupsList.enableInitCallback = false;
            groupsList.focusable = true;
            groupsList.itemRendererName = "BattleSessionListRendererUI";
            groupsList.itemRendererInstanceName = "";
            groupsList.margin = 0;
            groupsList.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            groupsList.rowHeight = 54;
            groupsList.scrollBar = "groupsScrollBar";
            groupsList.useRightButton = false;
            groupsList.useRightButtonForSelect = false;
            groupsList.visible = true;
            groupsList.wrapping = "normal";
            try 
            {
                groupsList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
