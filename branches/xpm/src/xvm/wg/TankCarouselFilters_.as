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
    import net.wg.gui.lobby.hangar.tcarousel.*;
    
    public dynamic class TankCarouselFilters_ extends net.wg.gui.lobby.hangar.tcarousel.TankCarouselFilters
    {
        public function TankCarouselFilters_()
        {
            super();
            this.__setProp_checkBoxToMain_vehicleFilters_checkBoxToMain_0();
            this.__setProp_nationFilter_vehicleFilters_nationFilter_0();
            this.__setProp_tankFilter_vehicleFilters_tankFilter_0();
            return;
        }

        internal function __setProp_checkBoxToMain_vehicleFilters_checkBoxToMain_0():*
        {
            try 
            {
                checkBoxToMain["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            checkBoxToMain.autoSize = "none";
            checkBoxToMain.data = "";
            checkBoxToMain.enabled = true;
            checkBoxToMain.enableInitCallback = false;
            checkBoxToMain.focusable = true;
            checkBoxToMain.label = "";
            checkBoxToMain.selected = false;
            checkBoxToMain.soundId = "";
            checkBoxToMain.soundType = "checkBox";
            checkBoxToMain.visible = true;
            try 
            {
                checkBoxToMain["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_nationFilter_vehicleFilters_nationFilter_0():*
        {
            try 
            {
                nationFilter["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            nationFilter.autoSize = "none";
            nationFilter.dropdown = "DropdownMenu_ScrollingList";
            nationFilter.enabled = true;
            nationFilter.enableInitCallback = false;
            nationFilter.focusable = true;
            nationFilter.itemRenderer = "ListItemRedererImageText";
            nationFilter.menuDirection = "up";
            nationFilter.menuMargin = 2;
            nationFilter.inspectableMenuOffset = {"top":0, "right":0, "bottom":4, "left":3};
            nationFilter.inspectableMenuPadding = {"top":0, "right":0, "bottom":-1, "left":0};
            nationFilter.menuRowCount = 7;
            nationFilter.menuRowsFixed = false;
            nationFilter.menuWidth = 151;
            nationFilter.menuWrapping = "normal";
            nationFilter.scrollBar = "";
            nationFilter.showEmptyItems = false;
            nationFilter.soundId = "";
            nationFilter.soundType = "";
            nationFilter.inspectableThumbOffset = {"top":0, "bottom":0};
            nationFilter.visible = true;
            try 
            {
                nationFilter["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_tankFilter_vehicleFilters_tankFilter_0():*
        {
            try 
            {
                tankFilter["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tankFilter.autoSize = "none";
            tankFilter.dropdown = "DropdownMenu_ScrollingList";
            tankFilter.enabled = true;
            tankFilter.enableInitCallback = false;
            tankFilter.focusable = true;
            tankFilter.itemRenderer = "ListItemRedererImageText";
            tankFilter.menuDirection = "up";
            tankFilter.menuMargin = 2;
            tankFilter.inspectableMenuOffset = {"top":0, "right":0, "bottom":4, "left":3};
            tankFilter.inspectableMenuPadding = {"top":0, "right":0, "bottom":-1, "left":0};
            tankFilter.menuRowCount = 7;
            tankFilter.menuRowsFixed = false;
            tankFilter.menuWidth = 151;
            tankFilter.menuWrapping = "normal";
            tankFilter.scrollBar = "";
            tankFilter.showEmptyItems = true;
            tankFilter.soundId = "";
            tankFilter.soundType = "";
            tankFilter.inspectableThumbOffset = {"top":0, "bottom":0};
            tankFilter.visible = true;
            try 
            {
                tankFilter["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
