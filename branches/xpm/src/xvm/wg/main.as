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
    import net.wg.gui.lobby.barracks.*;
    
    public dynamic class main extends net.wg.gui.lobby.barracks.Barracks
    {
        public function main()
        {
            super();
            this.__setProp_tankmenTileList_main_tileList_0();
            this.__setProp_roleButtonBar_main_roleFilter_0();
            this.__setProp_tankTypeButtonBar_main_tankType_0();
            this.__setProp_locationButtonBar_main_location_0();
            this.__setProp_tank_main_location_0();
            this.__setProp_nationDDM_main_nations_0();
            this.__setProp_titleBtn_main_title_0();
            return;
        }

        internal function __setProp_tankmenTileList_main_tileList_0():*
        {
            try 
            {
                tankmenTileList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tankmenTileList.columnWidth = 395;
            tankmenTileList.direction = "vertical";
            tankmenTileList.enabled = true;
            tankmenTileList.enableInitCallback = false;
            tankmenTileList.externalColumnCount = 2;
            tankmenTileList.focusable = true;
            tankmenTileList.itemRendererName = "barracksItemRenderer";
            tankmenTileList.itemRendererInstanceName = "";
            tankmenTileList.margin = 0;
            tankmenTileList.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            tankmenTileList.paddingBottom = 2;
            tankmenTileList.paddingRight = 2;
            tankmenTileList.rowHeight = 62;
            tankmenTileList.scrollBar = "scrollBar";
            tankmenTileList.showEmptyItems = false;
            tankmenTileList.visible = true;
            tankmenTileList.wrapping = "normal";
            try 
            {
                tankmenTileList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_roleButtonBar_main_roleFilter_0():*
        {
            try 
            {
                roleButtonBar["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            roleButtonBar.autoSize = "none";
            roleButtonBar.buttonWidth = 200;
            roleButtonBar.direction = "vertical";
            roleButtonBar.enabled = true;
            roleButtonBar.enableInitCallback = false;
            roleButtonBar.focusable = true;
            roleButtonBar.itemRendererName = "RadioButton";
            roleButtonBar.paddingHorizontal = 10;
            roleButtonBar.spacing = 0;
            roleButtonBar.visible = true;
            try 
            {
                roleButtonBar["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_tankTypeButtonBar_main_tankType_0():*
        {
            try 
            {
                tankTypeButtonBar["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tankTypeButtonBar.autoSize = "none";
            tankTypeButtonBar.buttonWidth = 200;
            tankTypeButtonBar.direction = "vertical";
            tankTypeButtonBar.enabled = true;
            tankTypeButtonBar.enableInitCallback = false;
            tankTypeButtonBar.focusable = true;
            tankTypeButtonBar.itemRendererName = "RadioButton";
            tankTypeButtonBar.paddingHorizontal = 10;
            tankTypeButtonBar.spacing = 0;
            tankTypeButtonBar.visible = true;
            try 
            {
                tankTypeButtonBar["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_locationButtonBar_main_location_0():*
        {
            try 
            {
                locationButtonBar["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            locationButtonBar.autoSize = "none";
            locationButtonBar.buttonWidth = 200;
            locationButtonBar.direction = "vertical";
            locationButtonBar.enabled = true;
            locationButtonBar.enableInitCallback = false;
            locationButtonBar.focusable = true;
            locationButtonBar.itemRendererName = "RadioButton";
            locationButtonBar.paddingHorizontal = 10;
            locationButtonBar.spacing = 0;
            locationButtonBar.visible = true;
            try 
            {
                locationButtonBar["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_tank_main_location_0():*
        {
            try 
            {
                tank["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tank.autoSize = "none";
            tank.dropdown = "DropdownMenu_ScrollingList";
            tank.enabled = false;
            tank.enableInitCallback = false;
            tank.focusable = true;
            tank.itemRenderer = "DropDownListItemRendererSound";
            tank.menuDirection = "down";
            tank.menuMargin = 1;
            tank.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            tank.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            tank.rowCount = 6;
            tank.menuRowsFixed = false;
            tank.menuWidth = -1;
            tank.menuWrapping = "normal";
            tank.scrollBar = "ScrollBar";
            tank.showEmptyItems = false;
            tank.soundId = "";
            tank.soundType = "";
            tank.inspectableThumbOffset = {"top":0, "bottom":0};
            tank.visible = true;
            try 
            {
                tank["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_nationDDM_main_nations_0():*
        {
            try 
            {
                nationDDM["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            nationDDM.autoSize = "none";
            nationDDM.dropdown = "DropdownMenu_ScrollingList";
            nationDDM.enabled = true;
            nationDDM.enableInitCallback = false;
            nationDDM.focusable = true;
            nationDDM.itemRenderer = "DropDownListItemRendererSound";
            nationDDM.menuDirection = "down";
            nationDDM.menuMargin = 1;
            nationDDM.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            nationDDM.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            nationDDM.rowCount = 15;
            nationDDM.menuRowsFixed = false;
            nationDDM.menuWidth = -1;
            nationDDM.menuWrapping = "normal";
            nationDDM.scrollBar = "ScrollBar";
            nationDDM.showEmptyItems = false;
            nationDDM.soundId = "";
            nationDDM.soundType = "";
            nationDDM.inspectableThumbOffset = {"top":0, "bottom":0};
            nationDDM.visible = true;
            try 
            {
                nationDDM["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_titleBtn_main_title_0():*
        {
            try 
            {
                titleBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            titleBtn.enabled = true;
            titleBtn.label = "#menu:headerButtons/barracks";
            titleBtn.shadowColor = "Black";
            titleBtn.textAlign = "left";
            titleBtn.textColor = 16777215;
            titleBtn.textFont = "$TitleFont";
            titleBtn.textSize = 18;
            titleBtn.useHtml = false;
            titleBtn.visible = true;
            try 
            {
                titleBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
