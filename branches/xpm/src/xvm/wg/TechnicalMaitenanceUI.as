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
    
    public dynamic class TechnicalMaitenanceUI extends net.wg.gui.lobby.hangar.maintenance.TechnicalMaintenance
    {
        public function TechnicalMaitenanceUI()
        {
            super();
            this.__setProp_totalGold_TechnicalMaitenanceUI_totals_0();
            this.__setProp_totalCredits_TechnicalMaitenanceUI_totals_0();
            this.__setProp_applyBtn_TechnicalMaitenanceUI_buttons_0();
            this.__setProp_closeBtn_TechnicalMaitenanceUI_buttons_0();
            this.__setProp_repairAuto_TechnicalMaitenanceUI_repair_0();
            this.__setProp_repairPrice_TechnicalMaitenanceUI_repair_0();
            this.__setProp_repairBtn_TechnicalMaitenanceUI_repair_0();
            this.__setProp_shellsAuto_TechnicalMaitenanceUI_shells_0();
            this.__setProp_shellsTotalGold_TechnicalMaitenanceUI_shells_0();
            this.__setProp_shellsTotalCredits_TechnicalMaitenanceUI_shells_0();
            this.__setProp_shells_TechnicalMaitenanceUI_shells_0();
            this.__setProp_eqAuto_TechnicalMaitenanceUI_equipment_0();
            this.__setProp_eqTotalGold_TechnicalMaitenanceUI_equipment_0();
            this.__setProp_eqTotalCredits_TechnicalMaitenanceUI_equipment_0();
            return;
        }

        internal function __setProp_totalGold_TechnicalMaitenanceUI_totals_0():*
        {
            try 
            {
                totalGold["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            totalGold.antiAliasing = "advanced";
            totalGold.enabled = true;
            totalGold.enableInitCallback = false;
            totalGold.fitIconPosition = false;
            totalGold.icon = "gold";
            totalGold.iconPosition = "right";
            totalGold.text = "";
            totalGold.textAlign = "right";
            totalGold.textColor = 16314069;
            totalGold.textFieldYOffset = 0;
            totalGold.textFont = "$FieldFont";
            totalGold.textSize = 14;
            totalGold.toolTip = "";
            totalGold.visible = true;
            try 
            {
                totalGold["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_totalCredits_TechnicalMaitenanceUI_totals_0():*
        {
            try 
            {
                totalCredits["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            totalCredits.antiAliasing = "advanced";
            totalCredits.enabled = true;
            totalCredits.enableInitCallback = false;
            totalCredits.fitIconPosition = false;
            totalCredits.icon = "credits";
            totalCredits.iconPosition = "right";
            totalCredits.text = "";
            totalCredits.textAlign = "right";
            totalCredits.textColor = 13556185;
            totalCredits.textFieldYOffset = 0;
            totalCredits.textFont = "$FieldFont";
            totalCredits.textSize = 14;
            totalCredits.toolTip = "";
            totalCredits.visible = true;
            try 
            {
                totalCredits["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_applyBtn_TechnicalMaitenanceUI_buttons_0():*
        {
            try 
            {
                applyBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            applyBtn.autoRepeat = false;
            applyBtn.autoSize = "none";
            applyBtn.data = "";
            applyBtn.enabled = true;
            applyBtn.enableInitCallback = false;
            applyBtn.fillPadding = 0;
            applyBtn.focusable = true;
            applyBtn.label = "#menu:hangar/ammunitionPanel/technicalMaitenance/buttons/apply";
            applyBtn.paddingHorizontal = 5;
            applyBtn.selected = false;
            applyBtn.soundId = "applyEquipmentBtn";
            applyBtn.soundType = "normal";
            applyBtn.toggle = false;
            applyBtn.visible = true;
            try 
            {
                applyBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_closeBtn_TechnicalMaitenanceUI_buttons_0():*
        {
            try 
            {
                closeBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            closeBtn.autoRepeat = false;
            closeBtn.autoSize = "none";
            closeBtn.data = "";
            closeBtn.enabled = true;
            closeBtn.enableInitCallback = false;
            closeBtn.fillPadding = 0;
            closeBtn.focusable = true;
            closeBtn.label = "#menu:hangar/ammunitionPanel/technicalMaitenance/buttons/close";
            closeBtn.paddingHorizontal = 5;
            closeBtn.selected = false;
            closeBtn.soundId = "closeEquipmentBtn";
            closeBtn.soundType = "normal";
            closeBtn.toggle = false;
            closeBtn.visible = true;
            try 
            {
                closeBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_repairAuto_TechnicalMaitenanceUI_repair_0():*
        {
            try 
            {
                repairAuto["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            repairAuto.autoSize = "none";
            repairAuto.data = "";
            repairAuto.enabled = true;
            repairAuto.enableInitCallback = false;
            repairAuto.focusable = true;
            repairAuto.label = "#menu:hangar/ammunitionPanel/technicalMaitenance/repair/checkboxAuto";
            repairAuto.selected = false;
            repairAuto.soundId = "";
            repairAuto.soundType = "";
            repairAuto.visible = true;
            try 
            {
                repairAuto["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_repairPrice_TechnicalMaitenanceUI_repair_0():*
        {
            try 
            {
                repairPrice["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            repairPrice.antiAliasing = "advanced";
            repairPrice.enabled = true;
            repairPrice.enableInitCallback = false;
            repairPrice.fitIconPosition = false;
            repairPrice.icon = "credits";
            repairPrice.iconPosition = "right";
            repairPrice.text = "";
            repairPrice.textAlign = "right";
            repairPrice.textColor = 13556185;
            repairPrice.textFieldYOffset = 0;
            repairPrice.textFont = "$FieldFont";
            repairPrice.textSize = 14;
            repairPrice.toolTip = "";
            repairPrice.visible = true;
            try 
            {
                repairPrice["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_repairBtn_TechnicalMaitenanceUI_repair_0():*
        {
            try 
            {
                repairBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            repairBtn.autoRepeat = false;
            repairBtn.autoSize = "none";
            repairBtn.data = "";
            repairBtn.enabled = true;
            repairBtn.enableInitCallback = false;
            repairBtn.fillPadding = 0;
            repairBtn.focusable = true;
            repairBtn.label = "#menu:hangar/ammunitionPanel/technicalMaitenance/buttons/repair";
            repairBtn.paddingHorizontal = 5;
            repairBtn.selected = false;
            repairBtn.soundId = "repairBtn";
            repairBtn.soundType = "normal";
            repairBtn.toggle = false;
            repairBtn.visible = true;
            try 
            {
                repairBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_shellsAuto_TechnicalMaitenanceUI_shells_0():*
        {
            try 
            {
                shellsAuto["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            shellsAuto.autoSize = "none";
            shellsAuto.data = "";
            shellsAuto.enabled = true;
            shellsAuto.enableInitCallback = false;
            shellsAuto.focusable = true;
            shellsAuto.label = "#menu:hangar/ammunitionPanel/technicalMaitenance/ammo/checkboxAuto";
            shellsAuto.selected = false;
            shellsAuto.soundId = "";
            shellsAuto.soundType = "";
            shellsAuto.visible = true;
            try 
            {
                shellsAuto["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_shellsTotalGold_TechnicalMaitenanceUI_shells_0():*
        {
            try 
            {
                shellsTotalGold["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            shellsTotalGold.antiAliasing = "advanced";
            shellsTotalGold.enabled = true;
            shellsTotalGold.enableInitCallback = false;
            shellsTotalGold.fitIconPosition = false;
            shellsTotalGold.icon = "gold";
            shellsTotalGold.iconPosition = "right";
            shellsTotalGold.text = "";
            shellsTotalGold.textAlign = "right";
            shellsTotalGold.textColor = 16314069;
            shellsTotalGold.textFieldYOffset = 0;
            shellsTotalGold.textFont = "$FieldFont";
            shellsTotalGold.textSize = 14;
            shellsTotalGold.toolTip = "";
            shellsTotalGold.visible = true;
            try 
            {
                shellsTotalGold["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_shellsTotalCredits_TechnicalMaitenanceUI_shells_0():*
        {
            try 
            {
                shellsTotalCredits["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            shellsTotalCredits.antiAliasing = "advanced";
            shellsTotalCredits.enabled = true;
            shellsTotalCredits.enableInitCallback = false;
            shellsTotalCredits.fitIconPosition = false;
            shellsTotalCredits.icon = "credits";
            shellsTotalCredits.iconPosition = "right";
            shellsTotalCredits.text = "";
            shellsTotalCredits.textAlign = "right";
            shellsTotalCredits.textColor = 13556185;
            shellsTotalCredits.textFieldYOffset = 0;
            shellsTotalCredits.textFont = "$FieldFont";
            shellsTotalCredits.textSize = 14;
            shellsTotalCredits.toolTip = "";
            shellsTotalCredits.visible = true;
            try 
            {
                shellsTotalCredits["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_shells_TechnicalMaitenanceUI_shells_0():*
        {
            try 
            {
                shells["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            shells.enabled = true;
            shells.enableInitCallback = false;
            shells.focusable = true;
            shells.itemRendererName = "ShellItemRendererUI";
            shells.itemRendererInstanceName = "";
            shells.margin = 0;
            shells.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            shells.rowHeight = 0;
            shells.scrollBar = "";
            shells.useRightButton = false;
            shells.useRightButtonForSelect = false;
            shells.visible = true;
            shells.wrapping = "normal";
            try 
            {
                shells["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_eqAuto_TechnicalMaitenanceUI_equipment_0():*
        {
            try 
            {
                eqAuto["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            eqAuto.autoSize = "none";
            eqAuto.data = "";
            eqAuto.enabled = true;
            eqAuto.enableInitCallback = false;
            eqAuto.focusable = true;
            eqAuto.label = "#menu:hangar/ammunitionPanel/technicalMaitenance/equipment/checkboxAuto";
            eqAuto.selected = false;
            eqAuto.soundId = "";
            eqAuto.soundType = "";
            eqAuto.visible = true;
            try 
            {
                eqAuto["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_eqTotalGold_TechnicalMaitenanceUI_equipment_0():*
        {
            try 
            {
                eqTotalGold["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            eqTotalGold.antiAliasing = "advanced";
            eqTotalGold.enabled = true;
            eqTotalGold.enableInitCallback = false;
            eqTotalGold.fitIconPosition = false;
            eqTotalGold.icon = "gold";
            eqTotalGold.iconPosition = "right";
            eqTotalGold.text = "";
            eqTotalGold.textAlign = "right";
            eqTotalGold.textColor = 16314069;
            eqTotalGold.textFieldYOffset = 0;
            eqTotalGold.textFont = "$FieldFont";
            eqTotalGold.textSize = 14;
            eqTotalGold.toolTip = "";
            eqTotalGold.visible = true;
            try 
            {
                eqTotalGold["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_eqTotalCredits_TechnicalMaitenanceUI_equipment_0():*
        {
            try 
            {
                eqTotalCredits["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            eqTotalCredits.antiAliasing = "advanced";
            eqTotalCredits.enabled = true;
            eqTotalCredits.enableInitCallback = false;
            eqTotalCredits.fitIconPosition = false;
            eqTotalCredits.icon = "credits";
            eqTotalCredits.iconPosition = "right";
            eqTotalCredits.text = "";
            eqTotalCredits.textAlign = "right";
            eqTotalCredits.textColor = 13556185;
            eqTotalCredits.textFieldYOffset = 0;
            eqTotalCredits.textFont = "$FieldFont";
            eqTotalCredits.textSize = 14;
            eqTotalCredits.toolTip = "";
            eqTotalCredits.visible = true;
            try 
            {
                eqTotalCredits["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
