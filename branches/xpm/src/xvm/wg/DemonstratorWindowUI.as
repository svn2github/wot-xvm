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
    import net.wg.gui.lobby.demonstration.*;
    
    public dynamic class DemonstratorWindowUI extends net.wg.gui.lobby.demonstration.DemonstratorWindow
    {
        public function DemonstratorWindowUI()
        {
            super();
            this.__setProp_listStandard_DemonstratorWindow_lists_0();
            this.__setProp_listAssault_DemonstratorWindow_lists_0();
            this.__setProp_listEncounter_DemonstratorWindow_lists_0();
            return;
        }

        internal function __setProp_listStandard_DemonstratorWindow_lists_0():*
        {
            try 
            {
                listStandard["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            listStandard.columnWidth = 152;
            listStandard.direction = "vertical";
            listStandard.enabled = true;
            listStandard.enableInitCallback = false;
            listStandard.externalColumnCount = 0;
            listStandard.focusable = true;
            listStandard.itemRendererName = "MapItemRendererUI";
            listStandard.itemRendererInstanceName = "";
            listStandard.margin = 0;
            listStandard.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            listStandard.paddingBottom = 2;
            listStandard.paddingRight = 8;
            listStandard.rowHeight = 0;
            listStandard.scrollBar = "scrollStandard";
            listStandard.showEmptyItems = false;
            listStandard.visible = true;
            listStandard.wrapping = "normal";
            try 
            {
                listStandard["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_listAssault_DemonstratorWindow_lists_0():*
        {
            try 
            {
                listAssault["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            listAssault.columnWidth = 152;
            listAssault.direction = "vertical";
            listAssault.enabled = true;
            listAssault.enableInitCallback = false;
            listAssault.externalColumnCount = 0;
            listAssault.focusable = true;
            listAssault.itemRendererName = "MapItemRendererUI";
            listAssault.itemRendererInstanceName = "";
            listAssault.margin = 0;
            listAssault.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            listAssault.paddingBottom = 2;
            listAssault.paddingRight = 8;
            listAssault.rowHeight = 0;
            listAssault.scrollBar = "scrollAssault";
            listAssault.showEmptyItems = false;
            listAssault.visible = true;
            listAssault.wrapping = "normal";
            try 
            {
                listAssault["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_listEncounter_DemonstratorWindow_lists_0():*
        {
            try 
            {
                listEncounter["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            listEncounter.columnWidth = 152;
            listEncounter.direction = "vertical";
            listEncounter.enabled = true;
            listEncounter.enableInitCallback = false;
            listEncounter.externalColumnCount = 0;
            listEncounter.focusable = true;
            listEncounter.itemRendererName = "MapItemRendererUI";
            listEncounter.itemRendererInstanceName = "";
            listEncounter.margin = 0;
            listEncounter.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            listEncounter.paddingBottom = 2;
            listEncounter.paddingRight = 8;
            listEncounter.rowHeight = 0;
            listEncounter.scrollBar = "scrollEncounter";
            listEncounter.showEmptyItems = false;
            listEncounter.visible = true;
            listEncounter.wrapping = "normal";
            try 
            {
                listEncounter["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
