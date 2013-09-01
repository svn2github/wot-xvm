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
    import net.wg.gui.lobby.tankman.*;
    
    public dynamic class CrewTankmanRetraining extends net.wg.gui.lobby.tankman.CrewTankmanRetraining
    {
        public function CrewTankmanRetraining()
        {
            super();
            this.__setProp_btnReset_CrewTankmanRetraining_buttons_0();
            this.__setProp_lightTankBtn_CrewTankmanRetraining_vehicletypebuttons_0();
            this.__setProp_mediumTankBtn_CrewTankmanRetraining_vehicletypebuttons_0();
            this.__setProp_btnAcademy_CrewTankmanRetraining_vehicletypebuttons_0();
            this.__setProp_btnScool_CrewTankmanRetraining_vehicletypebuttons_0();
            this.__setProp_btnCourses_CrewTankmanRetraining_vehicletypebuttons_0();
            this.__setProp_spgBtn_CrewTankmanRetraining_vehicletypebuttons_0();
            this.__setProp_at_spgBtn_CrewTankmanRetraining_vehicletypebuttons_0();
            this.__setProp_heavyTankBtn_CrewTankmanRetraining_vehicletypebuttons_0();
            this.__setProp_btnRetraining_CrewTankmanRetraining_dropdowns_0();
            this.__setProp_vehiclesDropdown_CrewTankmanRetraining_dropdowns_0();
            return;
        }

        internal function __setProp_btnReset_CrewTankmanRetraining_buttons_0():*
        {
            try 
            {
                btnReset["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            btnReset.autoRepeat = false;
            btnReset.autoSize = "none";
            btnReset.data = "";
            btnReset.enabled = true;
            btnReset.enableInitCallback = false;
            btnReset.fillPadding = 0;
            btnReset.focusable = true;
            btnReset.label = "#menu:tankmanPersonalCase/btnReset";
            btnReset.paddingHorizontal = 5;
            btnReset.selected = false;
            btnReset.soundId = "";
            btnReset.soundType = "normal";
            btnReset.toggle = false;
            btnReset.visible = true;
            try 
            {
                btnReset["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_lightTankBtn_CrewTankmanRetraining_vehicletypebuttons_0():*
        {
            try 
            {
                lightTankBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            lightTankBtn.inspectableGroupName = "buttonGroup";
            lightTankBtn.soundId = "";
            lightTankBtn.soundType = "normal";
            lightTankBtn.toggle = true;
            lightTankBtn.type = "lightTank";
            lightTankBtn.visible = true;
            try 
            {
                lightTankBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_mediumTankBtn_CrewTankmanRetraining_vehicletypebuttons_0():*
        {
            try 
            {
                mediumTankBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            mediumTankBtn.inspectableGroupName = "buttonGroup";
            mediumTankBtn.soundId = "";
            mediumTankBtn.soundType = "normal";
            mediumTankBtn.toggle = true;
            mediumTankBtn.type = "mediumTank";
            mediumTankBtn.visible = true;
            try 
            {
                mediumTankBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_btnAcademy_CrewTankmanRetraining_vehicletypebuttons_0():*
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
            btnAcademy.inspectableGroupName = "buttonGroup";
            btnAcademy.label = "";
            btnAcademy.scopeType = "false";
            btnAcademy.selected = false;
            btnAcademy.soundId = "";
            btnAcademy.soundType = "rendererNormal";
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

        internal function __setProp_btnScool_CrewTankmanRetraining_vehicletypebuttons_0():*
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
            btnScool.inspectableGroupName = "buttonGroup";
            btnScool.label = "";
            btnScool.scopeType = "false";
            btnScool.selected = false;
            btnScool.soundId = "";
            btnScool.soundType = "rendererNormal";
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

        internal function __setProp_btnCourses_CrewTankmanRetraining_vehicletypebuttons_0():*
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
            btnCourses.inspectableGroupName = "buttonGroup";
            btnCourses.label = "";
            btnCourses.scopeType = "false";
            btnCourses.selected = false;
            btnCourses.soundId = "";
            btnCourses.soundType = "rendererNormal";
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

        internal function __setProp_spgBtn_CrewTankmanRetraining_vehicletypebuttons_0():*
        {
            try 
            {
                spgBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            spgBtn.inspectableGroupName = "buttonGroup";
            spgBtn.soundId = "";
            spgBtn.soundType = "normal";
            spgBtn.toggle = true;
            spgBtn.type = "SPG";
            spgBtn.visible = true;
            try 
            {
                spgBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_at_spgBtn_CrewTankmanRetraining_vehicletypebuttons_0():*
        {
            try 
            {
                at_spgBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            at_spgBtn.inspectableGroupName = "buttonGroup";
            at_spgBtn.soundId = "";
            at_spgBtn.soundType = "normal";
            at_spgBtn.toggle = true;
            at_spgBtn.type = "AT-SPG";
            at_spgBtn.visible = true;
            try 
            {
                at_spgBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_heavyTankBtn_CrewTankmanRetraining_vehicletypebuttons_0():*
        {
            try 
            {
                heavyTankBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            heavyTankBtn.inspectableGroupName = "buttonGroup";
            heavyTankBtn.soundId = "";
            heavyTankBtn.soundType = "normal";
            heavyTankBtn.toggle = true;
            heavyTankBtn.type = "heavyTank";
            heavyTankBtn.visible = true;
            try 
            {
                heavyTankBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_btnRetraining_CrewTankmanRetraining_dropdowns_0():*
        {
            try 
            {
                btnRetraining["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            btnRetraining.autoRepeat = false;
            btnRetraining.autoSize = "none";
            btnRetraining.data = "";
            btnRetraining.enabled = true;
            btnRetraining.enableInitCallback = false;
            btnRetraining.fillPadding = 0;
            btnRetraining.focusable = true;
            btnRetraining.label = "#menu:tankmanPersonalCase/btnTraining";
            btnRetraining.paddingHorizontal = 5;
            btnRetraining.selected = false;
            btnRetraining.soundId = "";
            btnRetraining.soundType = "normal";
            btnRetraining.toggle = false;
            btnRetraining.visible = true;
            try 
            {
                btnRetraining["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vehiclesDropdown_CrewTankmanRetraining_dropdowns_0():*
        {
            try 
            {
                vehiclesDropdown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vehiclesDropdown.autoSize = "none";
            vehiclesDropdown.dropdown = "DropdownMenu_ScrollingList";
            vehiclesDropdown.enabled = true;
            vehiclesDropdown.enableInitCallback = false;
            vehiclesDropdown.focusable = true;
            vehiclesDropdown.itemRenderer = "DropDownListItemRendererSound";
            vehiclesDropdown.menuDirection = "down";
            vehiclesDropdown.menuMargin = 1;
            vehiclesDropdown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            vehiclesDropdown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            vehiclesDropdown.rowCount = 11;
            vehiclesDropdown.menuRowsFixed = false;
            vehiclesDropdown.menuWidth = -1;
            vehiclesDropdown.menuWrapping = "normal";
            vehiclesDropdown.scrollBar = "ScrollBar";
            vehiclesDropdown.showEmptyItems = false;
            vehiclesDropdown.soundId = "";
            vehiclesDropdown.soundType = "dropDownMenu";
            vehiclesDropdown.inspectableThumbOffset = {"top":0, "bottom":0};
            vehiclesDropdown.visible = true;
            try 
            {
                vehiclesDropdown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
