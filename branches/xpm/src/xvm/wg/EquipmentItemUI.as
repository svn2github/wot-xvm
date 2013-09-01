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
    import net.wg.gui.lobby.hangar.maintenance.*;
    
    public dynamic class EquipmentItemUI extends net.wg.gui.lobby.hangar.maintenance.EquipmentItem
    {
        public function EquipmentItemUI()
        {
            super();
            this.__setProp_select_EquipmentItemUI_select_0();
            this.__setProp_icon_EquipmentItemUI_icon_0();
            this.__setProp_toBuy_EquipmentItemUI_text_0();
            this.__setProp_price_EquipmentItemUI_text_0();
            this.__setProp_toBuyDropdown_EquipmentItemUI_Layer2_0();
            return;
        }

        internal function __setProp_select_EquipmentItemUI_select_0():*
        {
            try 
            {
                select["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            select.autoSize = "none";
            select.dropdown = "ArtefactsListUI";
            select.enabled = true;
            select.enableInitCallback = false;
            select.focusable = true;
            select.itemRenderer = "EquipmentListItemRendererUI";
            select.menuDirection = "up";
            select.menuMargin = 2;
            select.inspectableMenuOffset = {"top":0, "right":0, "bottom":98, "left":380};
            select.inspectableMenuPadding = {"top":3, "right":1, "bottom":3, "left":-1};
            select.rowCount = -1;
            select.menuRowsFixed = false;
            select.menuWidth = 450;
            select.menuWrapping = "normal";
            select.scrollBar = "";
            select.showEmptyItems = false;
            select.soundId = "equipmentRenderer";
            select.soundType = "maintenanceDDRenderer";
            select.inspectableThumbOffset = {"top":0, "bottom":0};
            select.visible = true;
            try 
            {
                select["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_icon_EquipmentItemUI_icon_0():*
        {
            try 
            {
                icon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            icon.autoSize = true;
            icon.enableInitCallback = false;
            icon.maintainAspectRatio = true;
            icon.source = "../maps/icons/artefact/empty.png";
            icon.sourceAlt = "../maps/icons/artefact/empty.png";
            icon.visible = true;
            try 
            {
                icon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_toBuy_EquipmentItemUI_text_0():*
        {
            try 
            {
                toBuy["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            toBuy.antiAliasing = "advanced";
            toBuy.enabled = true;
            toBuy.enableInitCallback = false;
            toBuy.fitIconPosition = false;
            toBuy.icon = "credits";
            toBuy.iconPosition = "right";
            toBuy.text = "";
            toBuy.textAlign = "right";
            toBuy.textColor = 16053753;
            toBuy.textFieldYOffset = 0;
            toBuy.textFont = "$FieldFont";
            toBuy.textSize = 14;
            toBuy.toolTip = "";
            toBuy.visible = true;
            try 
            {
                toBuy["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_price_EquipmentItemUI_text_0():*
        {
            try 
            {
                price["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            price.antiAliasing = "advanced";
            price.enabled = true;
            price.enableInitCallback = false;
            price.fitIconPosition = false;
            price.icon = "credits";
            price.iconPosition = "right";
            price.text = "";
            price.textAlign = "right";
            price.textColor = 16053753;
            price.textFieldYOffset = 0;
            price.textFont = "$FieldFont";
            price.textSize = 14;
            price.toolTip = "";
            price.visible = true;
            try 
            {
                price["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_toBuyDropdown_EquipmentItemUI_Layer2_0():*
        {
            try 
            {
                toBuyDropdown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            toBuyDropdown.autoSize = "none";
            toBuyDropdown.dropdown = "DropdownMenu_ScrollingList";
            toBuyDropdown.enabled = true;
            toBuyDropdown.enableInitCallback = false;
            toBuyDropdown.focusable = true;
            toBuyDropdown.itemRenderer = "DropDownListItemRendererSound";
            toBuyDropdown.menuDirection = "down";
            toBuyDropdown.menuMargin = 1;
            toBuyDropdown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            toBuyDropdown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            toBuyDropdown.rowCount = 5;
            toBuyDropdown.menuRowsFixed = false;
            toBuyDropdown.menuWidth = -1;
            toBuyDropdown.menuWrapping = "normal";
            toBuyDropdown.scrollBar = "";
            toBuyDropdown.showEmptyItems = true;
            toBuyDropdown.soundId = "";
            toBuyDropdown.soundType = "dropDownMenu";
            toBuyDropdown.inspectableThumbOffset = {"top":0, "bottom":0};
            toBuyDropdown.visible = true;
            try 
            {
                toBuyDropdown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
