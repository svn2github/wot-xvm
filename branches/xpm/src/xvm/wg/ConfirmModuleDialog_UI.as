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
    import net.wg.gui.lobby.confirmModuleWindow.*;
    
    public dynamic class ConfirmModuleDialog_UI extends net.wg.gui.lobby.confirmModuleWindow.ConfirmModuleWindow
    {
        public function ConfirmModuleDialog_UI()
        {
            super();
            this.__setProp_nsCount_ConfirmModuleDialog_UI_content_0();
            this.__setProp_price_ConfirmModuleDialog_UI_content_0();
            this.__setProp_total_ConfirmModuleDialog_UI_content_0();
            this.__setProp_resultCredits_ConfirmModuleDialog_UI_content_0();
            this.__setProp_resultGold_ConfirmModuleDialog_UI_content_0();
            this.__setProp_submitBtn_ConfirmModuleDialog_UI_content_0();
            this.__setProp_dropdownMenu_ConfirmModuleDialog_UI_Layer6_0();
            this.__setProp_cancelBtn_ConfirmModuleDialog_UI_Layer1_0();
            return;
        }

        internal function __setProp_nsCount_ConfirmModuleDialog_UI_content_0():*
        {
            try 
            {
                nsCount["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            nsCount.enabled = true;
            nsCount.enableInitCallback = false;
            nsCount.focusable = true;
            nsCount.integral = true;
            nsCount.maximum = 1;
            nsCount.minimum = 1;
            nsCount.stepSize = 1;
            nsCount.textColor = 9868935;
            nsCount.value = 0;
            nsCount.visible = true;
            try 
            {
                nsCount["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_price_ConfirmModuleDialog_UI_content_0():*
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
            price.text = "0";
            price.textAlign = "right";
            price.textColor = 13556185;
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

        internal function __setProp_total_ConfirmModuleDialog_UI_content_0():*
        {
            try 
            {
                total["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            total.antiAliasing = "advanced";
            total.enabled = true;
            total.enableInitCallback = false;
            total.fitIconPosition = false;
            total.icon = "credits";
            total.iconPosition = "right";
            total.text = "0";
            total.textAlign = "right";
            total.textColor = 13556185;
            total.textFont = "$FieldFont";
            total.textSize = 14;
            total.toolTip = "";
            total.visible = true;
            try 
            {
                total["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_resultCredits_ConfirmModuleDialog_UI_content_0():*
        {
            try 
            {
                resultCredits["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            resultCredits.antiAliasing = "advanced";
            resultCredits.enabled = true;
            resultCredits.enableInitCallback = false;
            resultCredits.fitIconPosition = false;
            resultCredits.icon = "credits";
            resultCredits.iconPosition = "right";
            resultCredits.text = "0";
            resultCredits.textAlign = "right";
            resultCredits.textColor = 16777215;
            resultCredits.textFont = "$FieldFont";
            resultCredits.textSize = 14;
            resultCredits.toolTip = "";
            resultCredits.visible = true;
            try 
            {
                resultCredits["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_resultGold_ConfirmModuleDialog_UI_content_0():*
        {
            try 
            {
                resultGold["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            resultGold.antiAliasing = "advanced";
            resultGold.enabled = true;
            resultGold.enableInitCallback = false;
            resultGold.fitIconPosition = false;
            resultGold.icon = "gold";
            resultGold.iconPosition = "right";
            resultGold.text = "0";
            resultGold.textAlign = "right";
            resultGold.textColor = 16761699;
            resultGold.textFont = "$FieldFont";
            resultGold.textSize = 14;
            resultGold.toolTip = "";
            resultGold.visible = true;
            try 
            {
                resultGold["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_submitBtn_ConfirmModuleDialog_UI_content_0():*
        {
            try 
            {
                submitBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            submitBtn.autoRepeat = false;
            submitBtn.autoSize = "none";
            submitBtn.data = "";
            submitBtn.enabled = true;
            submitBtn.enableInitCallback = false;
            submitBtn.fillPadding = 0;
            submitBtn.focusable = true;
            submitBtn.label = "";
            submitBtn.paddingHorizontal = 5;
            submitBtn.selected = false;
            submitBtn.soundId = "";
            submitBtn.soundType = "okButton";
            submitBtn.toggle = false;
            submitBtn.visible = true;
            try 
            {
                submitBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_dropdownMenu_ConfirmModuleDialog_UI_Layer6_0():*
        {
            try 
            {
                dropdownMenu["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            dropdownMenu.autoSize = "none";
            dropdownMenu.dropdown = "DropdownMenu_ScrollingList";
            dropdownMenu.enabled = true;
            dropdownMenu.enableInitCallback = false;
            dropdownMenu.focusable = true;
            dropdownMenu.itemRenderer = "DropDownListItemRendererSound";
            dropdownMenu.menuDirection = "down";
            dropdownMenu.menuMargin = 1;
            dropdownMenu.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            dropdownMenu.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            dropdownMenu.rowCount = 6;
            dropdownMenu.menuRowsFixed = false;
            dropdownMenu.menuWidth = -1;
            dropdownMenu.menuWrapping = "normal";
            dropdownMenu.scrollBar = "";
            dropdownMenu.showEmptyItems = false;
            dropdownMenu.soundId = "";
            dropdownMenu.soundType = "";
            dropdownMenu.inspectableThumbOffset = {"top":0, "bottom":0};
            dropdownMenu.visible = true;
            try 
            {
                dropdownMenu["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_cancelBtn_ConfirmModuleDialog_UI_Layer1_0():*
        {
            try 
            {
                cancelBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            cancelBtn.autoRepeat = false;
            cancelBtn.autoSize = "none";
            cancelBtn.data = "";
            cancelBtn.enabled = true;
            cancelBtn.enableInitCallback = false;
            cancelBtn.fillPadding = 0;
            cancelBtn.focusable = true;
            cancelBtn.label = "";
            cancelBtn.paddingHorizontal = 5;
            cancelBtn.selected = false;
            cancelBtn.soundId = "";
            cancelBtn.soundType = "cancelButton";
            cancelBtn.toggle = false;
            cancelBtn.visible = true;
            try 
            {
                cancelBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
