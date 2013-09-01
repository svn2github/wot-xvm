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
    import net.wg.gui.prebattle.battleSession.*;
    
    public dynamic class BattleSessionWindowUI extends net.wg.gui.prebattle.battleSession.BattleSessionWindow
    {
        public function BattleSessionWindowUI()
        {
            super();
            this.__setProp_memberStackList_battleSessionPage_controls_0();
            this.__setProp_upAllButton_battleSessionPage_controls_0();
            this.__setProp_upButton_battleSessionPage_controls_0();
            this.__setProp_downButton_battleSessionPage_controls_0();
            this.__setProp_downAllButton_battleSessionPage_controls_0();
            this.__setProp_memberList_battleSessionPage_controls_0();
            this.__setProp_hiddenRenderer_battleSessionPage_hidden_for_import_0();
            this.__setProp_commentValue_battleSessionPage_Layer2_0();
            return;
        }

        internal function __setProp_memberStackList_battleSessionPage_controls_0():*
        {
            try 
            {
                memberStackList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            memberStackList.enabled = true;
            memberStackList.enableInitCallback = false;
            memberStackList.focusable = true;
            memberStackList.itemRendererName = "TeamMemberRendererUI";
            memberStackList.itemRendererInstanceName = "";
            memberStackList.margin = 1;
            memberStackList.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            memberStackList.rowHeight = 0;
            memberStackList.scrollBar = "";
            memberStackList.useRightButton = false;
            memberStackList.useRightButtonForSelect = false;
            memberStackList.visible = true;
            memberStackList.wrapping = "normal";
            try 
            {
                memberStackList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_upAllButton_battleSessionPage_controls_0():*
        {
            try 
            {
                upAllButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            upAllButton.autoRepeat = false;
            upAllButton.autoSize = "none";
            upAllButton.data = "";
            upAllButton.enabled = true;
            upAllButton.enableInitCallback = false;
            upAllButton.fillPadding = 0;
            upAllButton.focusable = true;
            upAllButton.helpConnectorLength = 12;
            upAllButton.helpDirection = "T";
            upAllButton.helpText = "";
            upAllButton.iconOffsetLeft = 0;
            upAllButton.iconOffsetTop = 0;
            upAllButton.iconSource = "../maps/icons/messenger/icons/allUp.png";
            upAllButton.label = "";
            upAllButton.paddingHorizontal = 5;
            upAllButton.selected = false;
            upAllButton.soundId = "";
            upAllButton.soundType = "iconButton";
            upAllButton.toggle = false;
            upAllButton.tooltip = "";
            upAllButton.visible = false;
            try 
            {
                upAllButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_upButton_battleSessionPage_controls_0():*
        {
            try 
            {
                upButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            upButton.autoRepeat = false;
            upButton.autoSize = "none";
            upButton.data = "";
            upButton.enabled = true;
            upButton.enableInitCallback = false;
            upButton.fillPadding = 0;
            upButton.focusable = true;
            upButton.helpConnectorLength = 12;
            upButton.helpDirection = "T";
            upButton.helpText = "";
            upButton.iconOffsetLeft = 0;
            upButton.iconOffsetTop = 0;
            upButton.iconSource = "../maps/icons/messenger/icons/up.png";
            upButton.label = "";
            upButton.paddingHorizontal = 5;
            upButton.selected = false;
            upButton.soundId = "";
            upButton.soundType = "iconButton";
            upButton.toggle = false;
            upButton.tooltip = "";
            upButton.visible = true;
            try 
            {
                upButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_downButton_battleSessionPage_controls_0():*
        {
            try 
            {
                downButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            downButton.autoRepeat = false;
            downButton.autoSize = "none";
            downButton.data = "";
            downButton.enabled = true;
            downButton.enableInitCallback = false;
            downButton.fillPadding = 0;
            downButton.focusable = true;
            downButton.helpConnectorLength = 12;
            downButton.helpDirection = "T";
            downButton.helpText = "";
            downButton.iconOffsetLeft = 0;
            downButton.iconOffsetTop = 0;
            downButton.iconSource = "../maps/icons/messenger/icons/down.png";
            downButton.label = "";
            downButton.paddingHorizontal = 5;
            downButton.selected = false;
            downButton.soundId = "";
            downButton.soundType = "iconButton";
            downButton.toggle = false;
            downButton.tooltip = "";
            downButton.visible = true;
            try 
            {
                downButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_downAllButton_battleSessionPage_controls_0():*
        {
            try 
            {
                downAllButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            downAllButton.autoRepeat = false;
            downAllButton.autoSize = "none";
            downAllButton.data = "";
            downAllButton.enabled = true;
            downAllButton.enableInitCallback = false;
            downAllButton.fillPadding = 0;
            downAllButton.focusable = true;
            downAllButton.helpConnectorLength = 12;
            downAllButton.helpDirection = "T";
            downAllButton.helpText = "";
            downAllButton.iconOffsetLeft = 0;
            downAllButton.iconOffsetTop = 0;
            downAllButton.iconSource = "../maps/icons/messenger/icons/allDown.png";
            downAllButton.label = "";
            downAllButton.paddingHorizontal = 5;
            downAllButton.selected = false;
            downAllButton.soundId = "";
            downAllButton.soundType = "iconButton";
            downAllButton.toggle = false;
            downAllButton.tooltip = "";
            downAllButton.visible = false;
            try 
            {
                downAllButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_memberList_battleSessionPage_controls_0():*
        {
            try 
            {
                memberList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            memberList.enabled = true;
            memberList.enableInitCallback = false;
            memberList.focusable = true;
            memberList.itemRendererName = "TeamMemberRendererUI";
            memberList.itemRendererInstanceName = "";
            memberList.margin = 1;
            memberList.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            memberList.rowHeight = 0;
            memberList.scrollBar = "";
            memberList.useRightButton = false;
            memberList.useRightButtonForSelect = false;
            memberList.visible = true;
            memberList.wrapping = "normal";
            try 
            {
                memberList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_hiddenRenderer_battleSessionPage_hidden_for_import_0():*
        {
            try 
            {
                hiddenRenderer["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            hiddenRenderer.autoRepeat = false;
            hiddenRenderer.autoSize = "none";
            hiddenRenderer.data = "";
            hiddenRenderer.enabled = true;
            hiddenRenderer.enableInitCallback = false;
            hiddenRenderer.label = "";
            hiddenRenderer.selected = false;
            hiddenRenderer.soundId = "";
            hiddenRenderer.soundType = "normal";
            hiddenRenderer.toggle = false;
            hiddenRenderer.useRightButton = false;
            hiddenRenderer.visible = false;
            try 
            {
                hiddenRenderer["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_commentValue_battleSessionPage_Layer2_0():*
        {
            try 
            {
                commentValue["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            commentValue.actAsButton = false;
            commentValue.autoScroll = false;
            commentValue.defaultText = "";
            commentValue.displayAsPassword = false;
            commentValue.editable = false;
            commentValue.enabled = true;
            commentValue.enableInitCallback = false;
            commentValue.focusable = true;
            commentValue.maxChars = 0;
            commentValue.minThumbSize = 1;
            commentValue.scrollBar = "ScrollBar";
            commentValue.showBgForm = false;
            commentValue.text = "";
            commentValue.thumbOffset = {"top":0, "bottom":0};
            commentValue.visible = true;
            try 
            {
                commentValue["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
