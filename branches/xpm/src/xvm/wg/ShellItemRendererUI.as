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
    
    public dynamic class ShellItemRendererUI extends net.wg.gui.lobby.hangar.maintenance.ShellItemRenderer
    {
        public function ShellItemRendererUI()
        {
            super();
            this.__setProp_select_ShellItemRendererUI_dropdown_0();
            this.__setProp_toBuy_ShellItemRendererUI_price_0();
            this.__setProp_price_ShellItemRendererUI_price_0();
            this.__setProp_toBuyDropdown_ShellItemRendererUI_creditsPrice_0();
            this.__setProp_countSlider_ShellItemRendererUI_Layer6_0();
            return;
        }

        internal function __setProp_select_ShellItemRendererUI_dropdown_0():*
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
            select.itemRenderer = "ShellListItemRendererUI";
            select.menuDirection = "down";
            select.menuMargin = 2;
            select.inspectableMenuOffset = {"top":-94, "right":0, "bottom":0, "left":318};
            select.inspectableMenuPadding = {"top":1, "right":1, "bottom":1, "left":-1};
            select.rowCount = -1;
            select.menuRowsFixed = false;
            select.menuWidth = 370;
            select.menuWrapping = "normal";
            select.scrollBar = "";
            select.showEmptyItems = false;
            select.soundId = "shellRenderer";
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

        internal function __setProp_toBuy_ShellItemRendererUI_price_0():*
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

        internal function __setProp_price_ShellItemRendererUI_price_0():*
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

        internal function __setProp_toBuyDropdown_ShellItemRendererUI_creditsPrice_0():*
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

        internal function __setProp_countSlider_ShellItemRendererUI_Layer6_0():*
        {
            try 
            {
                countSlider["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            countSlider.enableInitCallback = false;
            countSlider.focusable = true;
            countSlider.liveDragging = true;
            countSlider.maximum = 10;
            countSlider.minimum = 0;
            countSlider.offsetLeft = 2;
            countSlider.offsetRight = 5;
            countSlider.snapInterval = 1;
            countSlider.snapping = true;
            countSlider.undefinedDisabled = false;
            countSlider.value = 0;
            countSlider.visible = true;
            try 
            {
                countSlider["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
