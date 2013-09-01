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
    import net.wg.data.*;
    import net.wg.gui.components.advanced.*;
    import net.wg.gui.lobby.window.*;
    
    public dynamic class ExchangeXPWindow extends net.wg.gui.lobby.window.ExchangeXPWindow
    {
        public function ExchangeXPWindow()
        {
            super();
            this.__setProp_itGoldResult_ExchangeXPWindow_iconTextXpResult_0();
            this.__setProp_itExperienceResult_ExchangeXPWindow_iconTextXpResult_0();
            this.__setProp_submitBtn_ExchangeXPWindow_buttons_0();
            this.__setProp_cancelBtn_ExchangeXPWindow_buttons_0();
            this.__setProp_itIconXp_ExchangeXPWindow_exchangeLabels_0();
            this.__setProp_itIconGold_ExchangeXPWindow_exchangeLabels_0();
            this.__setProp_nsXpExchange_ExchangeXPWindow_nsXpExchange_0();
            this.__setProp_nsGoldExchange_ExchangeXPWindow_nsXpExchange_0();
            this.__setProp_cbSelectAll_ExchangeXPWindow_CheckBox_0();
            this.__setProp_itTotalAvailableXp_ExchangeXPWindow_fieldfullXP_0();
            this.__setProp_itGoldBefore_ExchangeXPWindow_onHand_0();
            this.__setProp_itExperienceBefore_ExchangeXPWindow_onHand_0();
            this.__setProp_scrollList_ExchangeXPWindow_list_0();
            this.__setProp_buttonBar_ExchangeXPWindow_buttonBar_0();
            return;
        }

        internal function __setProp_itGoldResult_ExchangeXPWindow_iconTextXpResult_0():*
        {
            try 
            {
                itGoldResult["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            itGoldResult.antiAliasing = "advanced";
            itGoldResult.enabled = true;
            itGoldResult.enableInitCallback = false;
            itGoldResult.fitIconPosition = true;
            itGoldResult.icon = "gold";
            itGoldResult.iconPosition = "left";
            itGoldResult.text = "";
            itGoldResult.textAlign = "right";
            itGoldResult.textColor = 16765802;
            itGoldResult.textFont = "$TextFont";
            itGoldResult.textSize = 13;
            itGoldResult.toolTip = "";
            itGoldResult.visible = true;
            try 
            {
                itGoldResult["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_itExperienceResult_ExchangeXPWindow_iconTextXpResult_0():*
        {
            try 
            {
                itExperienceResult["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            itExperienceResult.antiAliasing = "advanced";
            itExperienceResult.enabled = true;
            itExperienceResult.enableInitCallback = false;
            itExperienceResult.fitIconPosition = true;
            itExperienceResult.icon = "freeXp";
            itExperienceResult.iconPosition = "left";
            itExperienceResult.text = "";
            itExperienceResult.textAlign = "left";
            itExperienceResult.textColor = 16777215;
            itExperienceResult.textFont = "$TextFont";
            itExperienceResult.textSize = 13;
            itExperienceResult.toolTip = "";
            itExperienceResult.visible = true;
            try 
            {
                itExperienceResult["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_submitBtn_ExchangeXPWindow_buttons_0():*
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
            submitBtn.label = "#dialogs:gatheringXPForm/btnSubmit";
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

        internal function __setProp_cancelBtn_ExchangeXPWindow_buttons_0():*
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
            cancelBtn.label = "#dialogs:gatheringXPForm/btnCancel";
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

        internal function __setProp_itIconXp_ExchangeXPWindow_exchangeLabels_0():*
        {
            try 
            {
                itIconXp["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            itIconXp.antiAliasing = "advanced";
            itIconXp.enabled = true;
            itIconXp.enableInitCallback = false;
            itIconXp.fitIconPosition = false;
            itIconXp.icon = "eliteXp";
            itIconXp.iconPosition = "left";
            itIconXp.text = "";
            itIconXp.textAlign = "left";
            itIconXp.textColor = 0;
            itIconXp.textFont = "$TextFont";
            itIconXp.textSize = 12;
            itIconXp.toolTip = "";
            itIconXp.visible = true;
            try 
            {
                itIconXp["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_itIconGold_ExchangeXPWindow_exchangeLabels_0():*
        {
            try 
            {
                itIconGold["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            itIconGold.antiAliasing = "advanced";
            itIconGold.enabled = true;
            itIconGold.enableInitCallback = false;
            itIconGold.fitIconPosition = false;
            itIconGold.icon = "gold";
            itIconGold.iconPosition = "left";
            itIconGold.text = "";
            itIconGold.textAlign = "left";
            itIconGold.textColor = 16498786;
            itIconGold.textFont = "$TextFont";
            itIconGold.textSize = 12;
            itIconGold.toolTip = "";
            itIconGold.visible = true;
            try 
            {
                itIconGold["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_nsXpExchange_ExchangeXPWindow_nsXpExchange_0():*
        {
            try 
            {
                nsXpExchange["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            nsXpExchange.enabled = true;
            nsXpExchange.enableInitCallback = false;
            nsXpExchange.focusable = true;
            nsXpExchange.integral = true;
            nsXpExchange.maximum = 10;
            nsXpExchange.minimum = 0;
            nsXpExchange.stepSize = 1;
            nsXpExchange.textColor = 16773302;
            nsXpExchange.value = 0;
            nsXpExchange.visible = true;
            try 
            {
                nsXpExchange["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_nsGoldExchange_ExchangeXPWindow_nsXpExchange_0():*
        {
            try 
            {
                nsGoldExchange["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            nsGoldExchange.enabled = true;
            nsGoldExchange.enableInitCallback = false;
            nsGoldExchange.focusable = true;
            nsGoldExchange.integral = true;
            nsGoldExchange.maximum = 10;
            nsGoldExchange.minimum = 0;
            nsGoldExchange.stepSize = 1;
            nsGoldExchange.textColor = 16773302;
            nsGoldExchange.value = 0;
            nsGoldExchange.visible = true;
            try 
            {
                nsGoldExchange["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_cbSelectAll_ExchangeXPWindow_CheckBox_0():*
        {
            try 
            {
                cbSelectAll["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            cbSelectAll.autoSize = "none";
            cbSelectAll.data = "";
            cbSelectAll.disabledTextAlpha = 0.5;
            cbSelectAll.enabled = true;
            cbSelectAll.enableInitCallback = false;
            cbSelectAll.focusable = true;
            cbSelectAll.label = "#dialogs:gatheringXPForm/selectAllLabel";
            cbSelectAll.selected = false;
            cbSelectAll.soundId = "";
            cbSelectAll.soundType = "";
            cbSelectAll.textColor = 9868935;
            cbSelectAll.textFont = "$TextFont";
            cbSelectAll.textSize = 12;
            cbSelectAll.visible = true;
            try 
            {
                cbSelectAll["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_itTotalAvailableXp_ExchangeXPWindow_fieldfullXP_0():*
        {
            try 
            {
                itTotalAvailableXp["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            itTotalAvailableXp.antiAliasing = "advanced";
            itTotalAvailableXp.enabled = true;
            itTotalAvailableXp.enableInitCallback = false;
            itTotalAvailableXp.fitIconPosition = false;
            itTotalAvailableXp.icon = "eliteXp";
            itTotalAvailableXp.iconPosition = "right";
            itTotalAvailableXp.text = "";
            itTotalAvailableXp.textAlign = "right";
            itTotalAvailableXp.textColor = 16185587;
            itTotalAvailableXp.textFont = "$TextFont";
            itTotalAvailableXp.textSize = 12;
            itTotalAvailableXp.toolTip = "";
            itTotalAvailableXp.visible = true;
            try 
            {
                itTotalAvailableXp["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_itGoldBefore_ExchangeXPWindow_onHand_0():*
        {
            try 
            {
                itGoldBefore["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            itGoldBefore.antiAliasing = "advanced";
            itGoldBefore.enabled = true;
            itGoldBefore.enableInitCallback = false;
            itGoldBefore.fitIconPosition = true;
            itGoldBefore.icon = "gold";
            itGoldBefore.iconPosition = "left";
            itGoldBefore.text = "";
            itGoldBefore.textAlign = "right";
            itGoldBefore.textColor = 16765802;
            itGoldBefore.textFont = "$TextFont";
            itGoldBefore.textSize = 13;
            itGoldBefore.toolTip = "";
            itGoldBefore.visible = true;
            try 
            {
                itGoldBefore["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_itExperienceBefore_ExchangeXPWindow_onHand_0():*
        {
            try 
            {
                itExperienceBefore["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            itExperienceBefore.antiAliasing = "advanced";
            itExperienceBefore.enabled = true;
            itExperienceBefore.enableInitCallback = false;
            itExperienceBefore.fitIconPosition = true;
            itExperienceBefore.icon = "freeXp";
            itExperienceBefore.iconPosition = "left";
            itExperienceBefore.text = "";
            itExperienceBefore.textAlign = "left";
            itExperienceBefore.textColor = 16777215;
            itExperienceBefore.textFont = "$TextFont";
            itExperienceBefore.textSize = 13;
            itExperienceBefore.toolTip = "";
            itExperienceBefore.visible = true;
            try 
            {
                itExperienceBefore["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_scrollList_ExchangeXPWindow_list_0():*
        {
            try 
            {
                scrollList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            scrollList.enabled = true;
            scrollList.enableInitCallback = false;
            scrollList.focusable = true;
            scrollList.itemRendererName = "ExchangeXPFromVehicleIR_UI";
            scrollList.itemRendererInstanceName = "";
            scrollList.margin = 0;
            scrollList.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            scrollList.rowHeight = 0;
            scrollList.scrollBar = "ScrollBar";
            scrollList.useRightButton = false;
            scrollList.useRightButtonForSelect = false;
            scrollList.visible = true;
            scrollList.wrapping = "normal";
            try 
            {
                scrollList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_buttonBar_ExchangeXPWindow_buttonBar_0():*
        {
            var loc2:*=null;
            var loc3:*=null;
            var loc4:*=null;
            var loc5:*=0;
            var loc6:*=undefined;
            try 
            {
                buttonBar["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            buttonBar.autoSize = "none";
            buttonBar.buttonWidth = 0;
            var loc1:*=new net.wg.data.InspectableDataProvider();
            loc3 = [{"iconId":"btnOk", "iconSource":"../maps/icons/buttons/tab_sort_button/ok.png", "ascendingIconSource":"../maps/icons/buttons/tab_sort_button/ascendingSortArrow.png", "descendingIconSource":"../maps/icons/buttons/tab_sort_button/descendingSortArrow.png", "toolTip":"#dialogs:gatheringXPForm/sortBy/selection", "buttonWidth":40, "buttonHeight":30, "enabled":true, "defaultSortDirection":"none"}, {"iconId":"btnTank", "iconSource":"../maps/icons/buttons/tab_sort_button/tank.png", "ascendingIconSource":"../maps/icons/buttons/tab_sort_button/ascendingSortArrow.png", "descendingIconSource":"../maps/icons/buttons/tab_sort_button/descendingSortArrow.png", "toolTip":"#dialogs:gatheringXPForm/sortBy/vehicle", "buttonWidth":179, "buttonHeight":30, "enabled":true, "defaultSortDirection":"none"}, {"iconId":"btnStar", "iconSource":"../maps/icons/buttons/tab_sort_button/star.png", "ascendingIconSource":"../maps/icons/buttons/tab_sort_button/ascendingSortArrow.png", "descendingIconSource":"../maps/icons/buttons/tab_sort_button/descendingSortArrow.png", "toolTip":"#dialogs:gatheringXPForm/sortBy/xp", "buttonWidth":101, "buttonHeight":30, "enabled":true, "defaultSortDirection":"none"}];
            loc5 = 0;
            while (loc5 < loc3.length) 
            {
                loc2 = new net.wg.gui.components.advanced.SortingButtonInfo();
                loc4 = loc3[loc5];
                loc7 = 0;
                var loc8:*=loc4;
                for (loc6 in loc8) 
                {
                    loc2[loc6] = loc4[loc6];
                }
                loc1.addItem(loc2);
                ++loc5;
            }
            buttonBar.dataProvider = loc1;
            buttonBar.direction = "horizontal";
            buttonBar.enabled = true;
            buttonBar.enableInitCallback = false;
            buttonBar.focusable = true;
            buttonBar.itemRendererName = "InteractiveSortingButton_UI";
            buttonBar.spacing = 0;
            buttonBar.visible = true;
            try 
            {
                buttonBar["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
