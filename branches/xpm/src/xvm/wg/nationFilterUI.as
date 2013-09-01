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
    import net.wg.gui.lobby.store.*;
    
    public dynamic class nationFilterUI extends net.wg.gui.lobby.store.NationFilter
    {
        public function nationFilterUI()
        {
            super();
            this.__setProp_nation_nationFilter_nation_0();
            return;
        }

        internal function __setProp_nation_nationFilter_nation_0():*
        {
            try 
            {
                nation["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            nation.autoSize = "none";
            nation.dropdown = "DropdownMenu_ScrollingList";
            nation.enabled = true;
            nation.enableInitCallback = false;
            nation.focusable = true;
            nation.itemRenderer = "DropDownListItemRendererSound";
            nation.menuDirection = "down";
            nation.menuMargin = 3;
            nation.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            nation.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            nation.rowCount = 10;
            nation.menuRowsFixed = false;
            nation.menuWidth = -1;
            nation.menuWrapping = "normal";
            nation.scrollBar = "";
            nation.showEmptyItems = true;
            nation.soundId = "";
            nation.soundType = "";
            nation.inspectableThumbOffset = {"top":0, "bottom":0};
            nation.visible = true;
            try 
            {
                nation["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
