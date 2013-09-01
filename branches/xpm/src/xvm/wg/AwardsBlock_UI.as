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
    import net.wg.gui.lobby.profile.pages.awards.*;
    
    public dynamic class AwardsBlock_UI extends net.wg.gui.lobby.profile.pages.awards.AwardsBlock
    {
        public function AwardsBlock_UI()
        {
            super();
            this.__setProp_tileList_AwardsBlock_UI_Layer2_0();
            return;
        }

        internal function __setProp_tileList_AwardsBlock_UI_Layer2_0():*
        {
            try 
            {
                tileList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tileList.columnWidth = 0;
            tileList.direction = "horizontal";
            tileList.enabled = true;
            tileList.enableInitCallback = false;
            tileList.externalColumnCount = 0;
            tileList.focusable = true;
            tileList.itemRendererName = "AchievementCommon_UI";
            tileList.itemRendererInstanceName = "";
            tileList.margin = 0;
            tileList.inspectablePadding = {"top":0, "right":10, "bottom":0, "left":15};
            tileList.paddingBottom = 0;
            tileList.paddingRight = 0;
            tileList.rowHeight = 0;
            tileList.scrollBar = "";
            tileList.showEmptyItems = false;
            tileList.visible = true;
            tileList.wrapping = "normal";
            try 
            {
                tileList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
