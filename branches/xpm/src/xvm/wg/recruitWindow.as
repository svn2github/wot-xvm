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
    import net.wg.gui.lobby.recruitWindow.*;
    
    public dynamic class recruitWindow extends net.wg.gui.lobby.recruitWindow.RecruitWindow
    {
        public function recruitWindow()
        {
            super();
            this.__setProp_btnRecruit_recruitWindow_buttons_0();
            this.__setProp_btnCancel_recruitWindow_buttons_0();
            this.__setProp_btnAcademy_recruitWindow_trainingBtns_0();
            this.__setProp_btnScool_recruitWindow_trainingBtns_0();
            this.__setProp_btnCourses_recruitWindow_trainingBtns_0();
            this.__setProp_nationDropdown_recruitWindow_dropdowns_0();
            this.__setProp_vehicleClassDropdown_recruitWindow_dropdowns_0();
            this.__setProp_vehicleTypeDropdown_recruitWindow_dropdowns_0();
            this.__setProp_roleDropdown_recruitWindow_dropdowns_0();
            return;
        }

        internal function __setProp_btnRecruit_recruitWindow_buttons_0():*
        {
            try 
            {
                btnRecruit["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            btnRecruit.autoRepeat = false;
            btnRecruit.autoSize = "none";
            btnRecruit.data = "";
            btnRecruit.enabled = true;
            btnRecruit.enableInitCallback = false;
            btnRecruit.fillPadding = 0;
            btnRecruit.focusable = true;
            btnRecruit.label = "#dialogs:recruitWindow/submit";
            btnRecruit.paddingHorizontal = 5;
            btnRecruit.selected = false;
            btnRecruit.soundId = "";
            btnRecruit.soundType = "normal";
            btnRecruit.toggle = false;
            btnRecruit.visible = true;
            try 
            {
                btnRecruit["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_btnCancel_recruitWindow_buttons_0():*
        {
            try 
            {
                btnCancel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            btnCancel.autoRepeat = false;
            btnCancel.autoSize = "none";
            btnCancel.data = "";
            btnCancel.enabled = true;
            btnCancel.enableInitCallback = false;
            btnCancel.fillPadding = 0;
            btnCancel.focusable = true;
            btnCancel.label = "#dialogs:recruitWindow/cancel";
            btnCancel.paddingHorizontal = 5;
            btnCancel.selected = false;
            btnCancel.soundId = "";
            btnCancel.soundType = "normal";
            btnCancel.toggle = false;
            btnCancel.visible = true;
            try 
            {
                btnCancel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_btnAcademy_recruitWindow_trainingBtns_0():*
        {
            try 
            {
                btnAcademy["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            btnAcademy.autoRepeat = false;
            btnAcademy.autoSize = "none";
            btnAcademy.buy = false;
            btnAcademy.data = "";
            btnAcademy.enabled = true;
            btnAcademy.enableInitCallback = false;
            btnAcademy.focusable = true;
            btnAcademy.label = "";
            btnAcademy.selected = false;
            btnAcademy.soundId = "";
            btnAcademy.soundType = "normal";
            btnAcademy.toggle = true;
            btnAcademy.type = "academy";
            btnAcademy.visible = true;
            try 
            {
                btnAcademy["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_btnScool_recruitWindow_trainingBtns_0():*
        {
            try 
            {
                btnScool["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            btnScool.autoRepeat = false;
            btnScool.autoSize = "none";
            btnScool.buy = false;
            btnScool.data = "";
            btnScool.enabled = true;
            btnScool.enableInitCallback = false;
            btnScool.focusable = true;
            btnScool.label = "";
            btnScool.selected = false;
            btnScool.soundId = "";
            btnScool.soundType = "normal";
            btnScool.toggle = true;
            btnScool.type = "scool";
            btnScool.visible = true;
            try 
            {
                btnScool["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_btnCourses_recruitWindow_trainingBtns_0():*
        {
            try 
            {
                btnCourses["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            btnCourses.autoRepeat = false;
            btnCourses.autoSize = "none";
            btnCourses.buy = false;
            btnCourses.data = "";
            btnCourses.enabled = true;
            btnCourses.enableInitCallback = false;
            btnCourses.focusable = true;
            btnCourses.label = "";
            btnCourses.selected = false;
            btnCourses.soundId = "";
            btnCourses.soundType = "normal";
            btnCourses.toggle = true;
            btnCourses.type = "free";
            btnCourses.visible = true;
            try 
            {
                btnCourses["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_nationDropdown_recruitWindow_dropdowns_0():*
        {
            try 
            {
                nationDropdown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            nationDropdown.autoSize = "none";
            nationDropdown.dropdown = "DropdownMenu_ScrollingList";
            nationDropdown.enabled = true;
            nationDropdown.enableInitCallback = false;
            nationDropdown.focusable = true;
            nationDropdown.itemRenderer = "DropDownListItemRendererSound";
            nationDropdown.menuDirection = "down";
            nationDropdown.menuMargin = 3;
            nationDropdown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            nationDropdown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            nationDropdown.rowCount = -1;
            nationDropdown.menuRowsFixed = false;
            nationDropdown.menuWidth = 154;
            nationDropdown.menuWrapping = "normal";
            nationDropdown.scrollBar = "ScrollBar";
            nationDropdown.showEmptyItems = true;
            nationDropdown.soundId = "";
            nationDropdown.soundType = "";
            nationDropdown.inspectableThumbOffset = {"top":0, "bottom":0};
            nationDropdown.visible = true;
            try 
            {
                nationDropdown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vehicleClassDropdown_recruitWindow_dropdowns_0():*
        {
            try 
            {
                vehicleClassDropdown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vehicleClassDropdown.autoSize = "none";
            vehicleClassDropdown.dropdown = "DropdownMenu_ScrollingList";
            vehicleClassDropdown.enabled = true;
            vehicleClassDropdown.enableInitCallback = false;
            vehicleClassDropdown.focusable = true;
            vehicleClassDropdown.itemRenderer = "DropDownListItemRendererSound";
            vehicleClassDropdown.menuDirection = "down";
            vehicleClassDropdown.menuMargin = 1;
            vehicleClassDropdown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            vehicleClassDropdown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            vehicleClassDropdown.rowCount = 10;
            vehicleClassDropdown.menuRowsFixed = false;
            vehicleClassDropdown.menuWidth = 154;
            vehicleClassDropdown.menuWrapping = "normal";
            vehicleClassDropdown.scrollBar = "ScrollBar";
            vehicleClassDropdown.showEmptyItems = true;
            vehicleClassDropdown.soundId = "";
            vehicleClassDropdown.soundType = "";
            vehicleClassDropdown.inspectableThumbOffset = {"top":0, "bottom":0};
            vehicleClassDropdown.visible = true;
            try 
            {
                vehicleClassDropdown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vehicleTypeDropdown_recruitWindow_dropdowns_0():*
        {
            try 
            {
                vehicleTypeDropdown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vehicleTypeDropdown.autoSize = "none";
            vehicleTypeDropdown.dropdown = "DropdownMenu_ScrollingList";
            vehicleTypeDropdown.enabled = true;
            vehicleTypeDropdown.enableInitCallback = false;
            vehicleTypeDropdown.focusable = true;
            vehicleTypeDropdown.itemRenderer = "DropDownListItemRendererSound";
            vehicleTypeDropdown.menuDirection = "down";
            vehicleTypeDropdown.menuMargin = 1;
            vehicleTypeDropdown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            vehicleTypeDropdown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            vehicleTypeDropdown.rowCount = 10;
            vehicleTypeDropdown.menuRowsFixed = false;
            vehicleTypeDropdown.menuWidth = 154;
            vehicleTypeDropdown.menuWrapping = "normal";
            vehicleTypeDropdown.scrollBar = "ScrollBar";
            vehicleTypeDropdown.showEmptyItems = true;
            vehicleTypeDropdown.soundId = "";
            vehicleTypeDropdown.soundType = "";
            vehicleTypeDropdown.inspectableThumbOffset = {"top":0, "bottom":0};
            vehicleTypeDropdown.visible = true;
            try 
            {
                vehicleTypeDropdown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_roleDropdown_recruitWindow_dropdowns_0():*
        {
            try 
            {
                roleDropdown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            roleDropdown.autoSize = "none";
            roleDropdown.dropdown = "DropdownMenu_ScrollingList";
            roleDropdown.enabled = true;
            roleDropdown.enableInitCallback = false;
            roleDropdown.focusable = true;
            roleDropdown.itemRenderer = "DropDownListItemRendererSound";
            roleDropdown.menuDirection = "down";
            roleDropdown.menuMargin = 1;
            roleDropdown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            roleDropdown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            roleDropdown.rowCount = 10;
            roleDropdown.menuRowsFixed = false;
            roleDropdown.menuWidth = 154;
            roleDropdown.menuWrapping = "normal";
            roleDropdown.scrollBar = "ScrollBar";
            roleDropdown.showEmptyItems = true;
            roleDropdown.soundId = "";
            roleDropdown.soundType = "";
            roleDropdown.inspectableThumbOffset = {"top":0, "bottom":0};
            roleDropdown.visible = true;
            try 
            {
                roleDropdown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
