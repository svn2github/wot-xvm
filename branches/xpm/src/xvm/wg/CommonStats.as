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
    import net.wg.gui.lobby.battleResults.*;
    
    public dynamic class CommonStats extends net.wg.gui.lobby.battleResults.CommonStats
    {
        public function CommonStats()
        {
            super();
            this.__setProp_scrollPane_commonStats_subtasks_0();
            this.__setProp_efficiencyList_commonStats_efficiencyList_0();
            this.__setProp_medalsListLeft_commonStats_medals_0();
            this.__setProp_medalsListRight_commonStats_medals_0();
            this.__setProp_creditsCounter_commonStats_counter_0();
            this.__setProp_xpCounter_commonStats_counter_0();
            return;
        }

        internal function __setProp_scrollPane_commonStats_subtasks_0():*
        {
            try 
            {
                scrollPane["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            scrollPane.enabled = true;
            scrollPane.enableInitCallback = false;
            scrollPane.scrollBar = "subtasksScrollBar";
            scrollPane.scrollStepFactor = 10;
            scrollPane.visible = true;
            try 
            {
                scrollPane["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_efficiencyList_commonStats_efficiencyList_0():*
        {
            try 
            {
                efficiencyList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            efficiencyList.enabled = true;
            efficiencyList.enableInitCallback = false;
            efficiencyList.focusable = true;
            efficiencyList.itemRendererName = "EfficiencyItemRendererGUI";
            efficiencyList.itemRendererInstanceName = "";
            efficiencyList.margin = 0;
            efficiencyList.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            efficiencyList.rowHeight = 34;
            efficiencyList.scrollBar = "scrollBar";
            efficiencyList.useRightButton = false;
            efficiencyList.useRightButtonForSelect = false;
            efficiencyList.visible = true;
            efficiencyList.wrapping = "normal";
            try 
            {
                efficiencyList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_medalsListLeft_commonStats_medals_0():*
        {
            try 
            {
                medalsListLeft["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            medalsListLeft._align = "right";
            medalsListLeft._colorDodgeMulty = 1.2;
            medalsListLeft._gap = -5;
            medalsListLeft._itemRenderer = "CustomAchievement";
            medalsListLeft._stripeRenderer = "heroicStripe";
            medalsListLeft.visible = true;
            try 
            {
                medalsListLeft["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_medalsListRight_commonStats_medals_0():*
        {
            try 
            {
                medalsListRight["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            medalsListRight._align = "left";
            medalsListRight._colorDodgeMulty = 1.2;
            medalsListRight._gap = -5;
            medalsListRight._itemRenderer = "CustomAchievement";
            medalsListRight._stripeRenderer = "heroicStripe";
            medalsListRight.visible = true;
            try 
            {
                medalsListRight["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_creditsCounter_commonStats_counter_0():*
        {
            try 
            {
                creditsCounter["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            creditsCounter.color = 16777215;
            creditsCounter.enabled = true;
            creditsCounter.enableInitCallback = false;
            creditsCounter.font = "$TitleFont";
            creditsCounter.formattedNumber = "0";
            creditsCounter.letterSpacing = 0;
            creditsCounter.localizationSymbol = "";
            creditsCounter.number = -1;
            creditsCounter.size = 33;
            creditsCounter.speed = 2000;
            creditsCounter.visible = true;
            try 
            {
                creditsCounter["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_xpCounter_commonStats_counter_0():*
        {
            try 
            {
                xpCounter["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            xpCounter.color = 16777215;
            xpCounter.enabled = true;
            xpCounter.enableInitCallback = false;
            xpCounter.font = "$TitleFont";
            xpCounter.formattedNumber = "0";
            xpCounter.letterSpacing = 0;
            xpCounter.localizationSymbol = "";
            xpCounter.number = -1;
            xpCounter.size = 33;
            xpCounter.speed = 2000;
            xpCounter.visible = true;
            try 
            {
                xpCounter["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
