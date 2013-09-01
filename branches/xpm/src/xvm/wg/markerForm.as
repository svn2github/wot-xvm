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
    import net.wg.gui.lobby.settings.*;
    
    public dynamic class markerForm extends net.wg.gui.lobby.settings.SettingsMarkersForm
    {
        public function markerForm()
        {
            super();
            this.__setProp_markerBaseIconCheckbox_markerForm_controls_0();
            this.__setProp_markerBaseLevelCheckbox_markerForm_controls_0();
            this.__setProp_markerBaseVehicleNameCheckbox_markerForm_controls_0();
            this.__setProp_markerBasePlayerNameCheckbox_markerForm_controls_0();
            this.__setProp_markerBaseHpIndicatorCheckbox_markerForm_controls_0();
            this.__setProp_markerBaseHpDropDown_markerForm_controls_0();
            this.__setProp_markerAltHpDropDown_markerForm_controls_0();
            this.__setProp_markerBaseDamageCheckbox_markerForm_controls_0();
            this.__setProp_markerAltIconCheckbox_markerForm_controls_0();
            this.__setProp_markerAltLevelCheckbox_markerForm_controls_0();
            this.__setProp_markerAltVehicleNameCheckbox_markerForm_controls_0();
            this.__setProp_markerAltPlayerNameCheckbox_markerForm_controls_0();
            this.__setProp_markerAltHpIndicatorCheckbox_markerForm_controls_0();
            this.__setProp_markerAltDamageCheckbox_markerForm_controls_0();
            return;
        }

        internal function __setProp_markerBaseIconCheckbox_markerForm_controls_0():*
        {
            try 
            {
                markerBaseIconCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerBaseIconCheckbox.autoSize = "none";
            markerBaseIconCheckbox.data = "";
            markerBaseIconCheckbox.enabled = true;
            markerBaseIconCheckbox.enableInitCallback = false;
            markerBaseIconCheckbox.focusable = true;
            markerBaseIconCheckbox.label = "#settings:marker/icon";
            markerBaseIconCheckbox.selected = false;
            markerBaseIconCheckbox.soundId = "";
            markerBaseIconCheckbox.soundType = "";
            markerBaseIconCheckbox.visible = true;
            try 
            {
                markerBaseIconCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_markerBaseLevelCheckbox_markerForm_controls_0():*
        {
            try 
            {
                markerBaseLevelCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerBaseLevelCheckbox.autoSize = "none";
            markerBaseLevelCheckbox.data = "";
            markerBaseLevelCheckbox.enabled = true;
            markerBaseLevelCheckbox.enableInitCallback = false;
            markerBaseLevelCheckbox.focusable = true;
            markerBaseLevelCheckbox.label = "#settings:marker/level";
            markerBaseLevelCheckbox.selected = false;
            markerBaseLevelCheckbox.soundId = "";
            markerBaseLevelCheckbox.soundType = "";
            markerBaseLevelCheckbox.visible = true;
            try 
            {
                markerBaseLevelCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_markerBaseVehicleNameCheckbox_markerForm_controls_0():*
        {
            try 
            {
                markerBaseVehicleNameCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerBaseVehicleNameCheckbox.autoSize = "none";
            markerBaseVehicleNameCheckbox.data = "";
            markerBaseVehicleNameCheckbox.enabled = true;
            markerBaseVehicleNameCheckbox.enableInitCallback = false;
            markerBaseVehicleNameCheckbox.focusable = true;
            markerBaseVehicleNameCheckbox.label = "#settings:marker/name";
            markerBaseVehicleNameCheckbox.selected = false;
            markerBaseVehicleNameCheckbox.soundId = "";
            markerBaseVehicleNameCheckbox.soundType = "";
            markerBaseVehicleNameCheckbox.visible = true;
            try 
            {
                markerBaseVehicleNameCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_markerBasePlayerNameCheckbox_markerForm_controls_0():*
        {
            try 
            {
                markerBasePlayerNameCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerBasePlayerNameCheckbox.autoSize = "none";
            markerBasePlayerNameCheckbox.data = "";
            markerBasePlayerNameCheckbox.enabled = true;
            markerBasePlayerNameCheckbox.enableInitCallback = false;
            markerBasePlayerNameCheckbox.focusable = true;
            markerBasePlayerNameCheckbox.label = "#settings:marker/nickname";
            markerBasePlayerNameCheckbox.selected = false;
            markerBasePlayerNameCheckbox.soundId = "";
            markerBasePlayerNameCheckbox.soundType = "";
            markerBasePlayerNameCheckbox.visible = true;
            try 
            {
                markerBasePlayerNameCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_markerBaseHpIndicatorCheckbox_markerForm_controls_0():*
        {
            try 
            {
                markerBaseHpIndicatorCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerBaseHpIndicatorCheckbox.autoSize = "none";
            markerBaseHpIndicatorCheckbox.data = "";
            markerBaseHpIndicatorCheckbox.enabled = true;
            markerBaseHpIndicatorCheckbox.enableInitCallback = false;
            markerBaseHpIndicatorCheckbox.focusable = true;
            markerBaseHpIndicatorCheckbox.label = "#settings:marker/hpIndicator";
            markerBaseHpIndicatorCheckbox.selected = false;
            markerBaseHpIndicatorCheckbox.soundId = "";
            markerBaseHpIndicatorCheckbox.soundType = "";
            markerBaseHpIndicatorCheckbox.visible = true;
            try 
            {
                markerBaseHpIndicatorCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_markerBaseHpDropDown_markerForm_controls_0():*
        {
            try 
            {
                markerBaseHpDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerBaseHpDropDown.autoSize = "none";
            markerBaseHpDropDown.dropdown = "DropdownMenu_ScrollingList";
            markerBaseHpDropDown.enabled = true;
            markerBaseHpDropDown.enableInitCallback = false;
            markerBaseHpDropDown.focusable = true;
            markerBaseHpDropDown.itemRenderer = "DropDownListItemRendererSound";
            markerBaseHpDropDown.menuDirection = "down";
            markerBaseHpDropDown.menuMargin = 1;
            markerBaseHpDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            markerBaseHpDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            markerBaseHpDropDown.rowCount = 15;
            markerBaseHpDropDown.menuRowsFixed = false;
            markerBaseHpDropDown.menuWidth = -1;
            markerBaseHpDropDown.menuWrapping = "normal";
            markerBaseHpDropDown.scrollBar = "";
            markerBaseHpDropDown.showEmptyItems = false;
            markerBaseHpDropDown.soundId = "";
            markerBaseHpDropDown.soundType = "";
            markerBaseHpDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            markerBaseHpDropDown.visible = true;
            try 
            {
                markerBaseHpDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_markerAltHpDropDown_markerForm_controls_0():*
        {
            try 
            {
                markerAltHpDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerAltHpDropDown.autoSize = "none";
            markerAltHpDropDown.dropdown = "DropdownMenu_ScrollingList";
            markerAltHpDropDown.enabled = true;
            markerAltHpDropDown.enableInitCallback = false;
            markerAltHpDropDown.focusable = true;
            markerAltHpDropDown.itemRenderer = "DropDownListItemRendererSound";
            markerAltHpDropDown.menuDirection = "down";
            markerAltHpDropDown.menuMargin = 1;
            markerAltHpDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            markerAltHpDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            markerAltHpDropDown.rowCount = 15;
            markerAltHpDropDown.menuRowsFixed = false;
            markerAltHpDropDown.menuWidth = -1;
            markerAltHpDropDown.menuWrapping = "normal";
            markerAltHpDropDown.scrollBar = "";
            markerAltHpDropDown.showEmptyItems = false;
            markerAltHpDropDown.soundId = "";
            markerAltHpDropDown.soundType = "";
            markerAltHpDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            markerAltHpDropDown.visible = true;
            try 
            {
                markerAltHpDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_markerBaseDamageCheckbox_markerForm_controls_0():*
        {
            try 
            {
                markerBaseDamageCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerBaseDamageCheckbox.autoSize = "none";
            markerBaseDamageCheckbox.data = "";
            markerBaseDamageCheckbox.enabled = true;
            markerBaseDamageCheckbox.enableInitCallback = false;
            markerBaseDamageCheckbox.focusable = true;
            markerBaseDamageCheckbox.label = "#settings:marker/damage";
            markerBaseDamageCheckbox.selected = false;
            markerBaseDamageCheckbox.soundId = "";
            markerBaseDamageCheckbox.soundType = "";
            markerBaseDamageCheckbox.visible = true;
            try 
            {
                markerBaseDamageCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_markerAltIconCheckbox_markerForm_controls_0():*
        {
            try 
            {
                markerAltIconCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerAltIconCheckbox.autoSize = "none";
            markerAltIconCheckbox.data = "";
            markerAltIconCheckbox.enabled = true;
            markerAltIconCheckbox.enableInitCallback = false;
            markerAltIconCheckbox.focusable = true;
            markerAltIconCheckbox.label = "#settings:marker/icon";
            markerAltIconCheckbox.selected = false;
            markerAltIconCheckbox.soundId = "";
            markerAltIconCheckbox.soundType = "";
            markerAltIconCheckbox.visible = true;
            try 
            {
                markerAltIconCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_markerAltLevelCheckbox_markerForm_controls_0():*
        {
            try 
            {
                markerAltLevelCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerAltLevelCheckbox.autoSize = "none";
            markerAltLevelCheckbox.data = "";
            markerAltLevelCheckbox.enabled = true;
            markerAltLevelCheckbox.enableInitCallback = false;
            markerAltLevelCheckbox.focusable = true;
            markerAltLevelCheckbox.label = "#settings:marker/level";
            markerAltLevelCheckbox.selected = false;
            markerAltLevelCheckbox.soundId = "";
            markerAltLevelCheckbox.soundType = "";
            markerAltLevelCheckbox.visible = true;
            try 
            {
                markerAltLevelCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_markerAltVehicleNameCheckbox_markerForm_controls_0():*
        {
            try 
            {
                markerAltVehicleNameCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerAltVehicleNameCheckbox.autoSize = "none";
            markerAltVehicleNameCheckbox.data = "";
            markerAltVehicleNameCheckbox.enabled = true;
            markerAltVehicleNameCheckbox.enableInitCallback = false;
            markerAltVehicleNameCheckbox.focusable = true;
            markerAltVehicleNameCheckbox.label = "#settings:marker/name";
            markerAltVehicleNameCheckbox.selected = false;
            markerAltVehicleNameCheckbox.soundId = "";
            markerAltVehicleNameCheckbox.soundType = "";
            markerAltVehicleNameCheckbox.visible = true;
            try 
            {
                markerAltVehicleNameCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_markerAltPlayerNameCheckbox_markerForm_controls_0():*
        {
            try 
            {
                markerAltPlayerNameCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerAltPlayerNameCheckbox.autoSize = "none";
            markerAltPlayerNameCheckbox.data = "";
            markerAltPlayerNameCheckbox.enabled = true;
            markerAltPlayerNameCheckbox.enableInitCallback = false;
            markerAltPlayerNameCheckbox.focusable = true;
            markerAltPlayerNameCheckbox.label = "#settings:marker/nickname";
            markerAltPlayerNameCheckbox.selected = false;
            markerAltPlayerNameCheckbox.soundId = "";
            markerAltPlayerNameCheckbox.soundType = "";
            markerAltPlayerNameCheckbox.visible = true;
            try 
            {
                markerAltPlayerNameCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_markerAltHpIndicatorCheckbox_markerForm_controls_0():*
        {
            try 
            {
                markerAltHpIndicatorCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerAltHpIndicatorCheckbox.autoSize = "none";
            markerAltHpIndicatorCheckbox.data = "";
            markerAltHpIndicatorCheckbox.enabled = true;
            markerAltHpIndicatorCheckbox.enableInitCallback = false;
            markerAltHpIndicatorCheckbox.focusable = true;
            markerAltHpIndicatorCheckbox.label = "#settings:marker/hpIndicator";
            markerAltHpIndicatorCheckbox.selected = false;
            markerAltHpIndicatorCheckbox.soundId = "";
            markerAltHpIndicatorCheckbox.soundType = "";
            markerAltHpIndicatorCheckbox.visible = true;
            try 
            {
                markerAltHpIndicatorCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_markerAltDamageCheckbox_markerForm_controls_0():*
        {
            try 
            {
                markerAltDamageCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            markerAltDamageCheckbox.autoSize = "none";
            markerAltDamageCheckbox.data = "";
            markerAltDamageCheckbox.enabled = true;
            markerAltDamageCheckbox.enableInitCallback = false;
            markerAltDamageCheckbox.focusable = true;
            markerAltDamageCheckbox.label = "#settings:marker/damage";
            markerAltDamageCheckbox.selected = false;
            markerAltDamageCheckbox.soundId = "";
            markerAltDamageCheckbox.soundType = "";
            markerAltDamageCheckbox.visible = true;
            try 
            {
                markerAltDamageCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
