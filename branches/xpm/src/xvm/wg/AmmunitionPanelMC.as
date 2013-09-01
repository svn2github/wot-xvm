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
    import net.wg.gui.lobby.hangar.ammunitionPanel.*;
    
    public dynamic class AmmunitionPanelMC extends net.wg.gui.lobby.hangar.ammunitionPanel.AmmunitionPanel
    {
        public function AmmunitionPanelMC()
        {
            super();
            this.__setProp_maitenanceBtn_AmmunitionPanelMC_buttons_0();
            this.__setProp_tuningBtn_AmmunitionPanelMC_buttons_0();
            this.__setProp_optionalDevice1_AmmunitionPanelMC_optional_0();
            this.__setProp_optionalDevice2_AmmunitionPanelMC_optional_0();
            this.__setProp_optionalDevice3_AmmunitionPanelMC_optional_0();
            this.__setProp_equipment1_AmmunitionPanelMC_fittings_0();
            this.__setProp_equipment2_AmmunitionPanelMC_fittings_0();
            this.__setProp_equipment3_AmmunitionPanelMC_fittings_0();
            this.__setProp_gun_AmmunitionPanelMC_modules_0();
            this.__setProp_turret_AmmunitionPanelMC_modules_0();
            this.__setProp_engine_AmmunitionPanelMC_modules_0();
            this.__setProp_chassis_AmmunitionPanelMC_modules_0();
            this.__setProp_radio_AmmunitionPanelMC_modules_0();
            return;
        }

        internal function __setProp_maitenanceBtn_AmmunitionPanelMC_buttons_0():*
        {
            try 
            {
                maitenanceBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            maitenanceBtn.autoRepeat = false;
            maitenanceBtn.autoSize = "none";
            maitenanceBtn.caps = true;
            maitenanceBtn.data = "";
            maitenanceBtn.enabled = true;
            maitenanceBtn.enableInitCallback = false;
            maitenanceBtn.fillPadding = 0;
            maitenanceBtn.focusable = true;
            maitenanceBtn.helpConnectorLength = 12;
            maitenanceBtn.helpDirection = "T";
            maitenanceBtn.helpText = "#lobby_help:hangar/maintenance-button";
            maitenanceBtn.iconOffsetLeft = 0;
            maitenanceBtn.iconOffsetTop = 2;
            maitenanceBtn.iconSource = "maitenance.png";
            maitenanceBtn.label = "#menu:hangar/ammunitionPanel/maitenanceBtn";
            maitenanceBtn.paddingHorizontal = 5;
            maitenanceBtn.selected = false;
            maitenanceBtn.soundId = "maitenanceBtn";
            maitenanceBtn.soundType = "iconTextButton";
            maitenanceBtn.toggle = false;
            maitenanceBtn.tooltip = "";
            maitenanceBtn.visible = true;
            try 
            {
                maitenanceBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_tuningBtn_AmmunitionPanelMC_buttons_0():*
        {
            try 
            {
                tuningBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tuningBtn.autoRepeat = false;
            tuningBtn.autoSize = "none";
            tuningBtn.caps = true;
            tuningBtn.data = "";
            tuningBtn.enabled = true;
            tuningBtn.enableInitCallback = false;
            tuningBtn.fillPadding = 0;
            tuningBtn.focusable = true;
            tuningBtn.helpConnectorLength = 12;
            tuningBtn.helpDirection = "T";
            tuningBtn.helpText = "#lobby_help:hangar/customization-button";
            tuningBtn.iconOffsetLeft = 0;
            tuningBtn.iconOffsetTop = 2;
            tuningBtn.iconSource = "tuning.png";
            tuningBtn.label = "#menu:hangar/ammunitionPanel/tuningBtn";
            tuningBtn.paddingHorizontal = 5;
            tuningBtn.selected = false;
            tuningBtn.soundId = "tuningBtn";
            tuningBtn.soundType = "iconTextButton";
            tuningBtn.toggle = false;
            tuningBtn.tooltip = "";
            tuningBtn.visible = true;
            try 
            {
                tuningBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_optionalDevice1_AmmunitionPanelMC_optional_0():*
        {
            try 
            {
                optionalDevice1["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            optionalDevice1.enabled = true;
            optionalDevice1.enableInitCallback = false;
            optionalDevice1.tooltip = "#tooltips:hangar/ammo_panel/device/empty";
            optionalDevice1.visible = true;
            try 
            {
                optionalDevice1["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_optionalDevice2_AmmunitionPanelMC_optional_0():*
        {
            try 
            {
                optionalDevice2["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            optionalDevice2.enabled = true;
            optionalDevice2.enableInitCallback = false;
            optionalDevice2.tooltip = "#tooltips:hangar/ammo_panel/device/empty";
            optionalDevice2.visible = true;
            try 
            {
                optionalDevice2["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_optionalDevice3_AmmunitionPanelMC_optional_0():*
        {
            try 
            {
                optionalDevice3["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            optionalDevice3.enabled = true;
            optionalDevice3.enableInitCallback = false;
            optionalDevice3.tooltip = "#tooltips:hangar/ammo_panel/device/empty";
            optionalDevice3.visible = true;
            try 
            {
                optionalDevice3["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_equipment1_AmmunitionPanelMC_fittings_0():*
        {
            try 
            {
                equipment1["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            equipment1.enabled = true;
            equipment1.enableInitCallback = false;
            equipment1.tooltip = "#tooltips:hangar/ammo_panel/equipment/empty";
            equipment1.visible = true;
            try 
            {
                equipment1["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_equipment2_AmmunitionPanelMC_fittings_0():*
        {
            try 
            {
                equipment2["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            equipment2.enabled = true;
            equipment2.enableInitCallback = false;
            equipment2.tooltip = "#tooltips:hangar/ammo_panel/equipment/empty";
            equipment2.visible = true;
            try 
            {
                equipment2["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_equipment3_AmmunitionPanelMC_fittings_0():*
        {
            try 
            {
                equipment3["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            equipment3.enabled = true;
            equipment3.enableInitCallback = false;
            equipment3.tooltip = "#tooltips:hangar/ammo_panel/equipment/empty";
            equipment3.visible = true;
            try 
            {
                equipment3["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_gun_AmmunitionPanelMC_modules_0():*
        {
            try 
            {
                gun["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            gun.enabled = true;
            gun.enableInitCallback = false;
            gun.slotType = 2;
            gun.visible = true;
            try 
            {
                gun["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_turret_AmmunitionPanelMC_modules_0():*
        {
            try 
            {
                turret["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            turret.enabled = true;
            turret.enableInitCallback = false;
            turret.slotType = 3;
            turret.visible = true;
            try 
            {
                turret["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_engine_AmmunitionPanelMC_modules_0():*
        {
            try 
            {
                engine["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            engine.enabled = true;
            engine.enableInitCallback = false;
            engine.slotType = 4;
            engine.visible = true;
            try 
            {
                engine["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_chassis_AmmunitionPanelMC_modules_0():*
        {
            try 
            {
                chassis["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            chassis.enabled = true;
            chassis.enableInitCallback = false;
            chassis.slotType = 5;
            chassis.visible = true;
            try 
            {
                chassis["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_radio_AmmunitionPanelMC_modules_0():*
        {
            try 
            {
                radio["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            radio.enabled = true;
            radio.enableInitCallback = false;
            radio.slotType = 6;
            radio.visible = true;
            try 
            {
                radio["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
