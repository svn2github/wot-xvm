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
    import net.wg.gui.lobby.questsWindow.*;
    
    public dynamic class CurrentTab_UI extends net.wg.gui.lobby.questsWindow.QuestsCurrentTab
    {
        public function CurrentTab_UI()
        {
            super();
            this.__setProp_questsList_CurrentTab_UI_list_0();
            this.__setProp_scrollPane_CurrentTab_UI_Layer5_0();
            this.__setProp_sortingDD_CurrentTab_UI_header_0();
            return;
        }

        internal function __setProp_questsList_CurrentTab_UI_list_0():*
        {
            try 
            {
                questsList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            questsList.enabled = true;
            questsList.enableInitCallback = false;
            questsList.focusable = true;
            questsList.itemRendererName = "QuestRenderer_UI";
            questsList.itemRendererInstanceName = "";
            questsList.margin = 0;
            questsList.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            questsList.rowHeight = 76;
            questsList.scrollBar = "scrollBar";
            questsList.useRightButton = false;
            questsList.useRightButtonForSelect = false;
            questsList.visible = true;
            questsList.wrapping = "normal";
            try 
            {
                questsList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_scrollPane_CurrentTab_UI_Layer5_0():*
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
            scrollPane.scrollBar = "questScrollBar";
            scrollPane.scrollStepFactor = 15;
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

        internal function __setProp_sortingDD_CurrentTab_UI_header_0():*
        {
            try 
            {
                sortingDD["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            sortingDD.autoSize = "none";
            sortingDD.dropdown = "DropdownMenu_ScrollingList";
            sortingDD.enabled = true;
            sortingDD.enableInitCallback = false;
            sortingDD.focusable = true;
            sortingDD.itemRenderer = "DropDownListItemRendererSound";
            sortingDD.menuDirection = "down";
            sortingDD.menuMargin = 1;
            sortingDD.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            sortingDD.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            sortingDD.rowCount = -1;
            sortingDD.menuRowsFixed = false;
            sortingDD.menuWidth = -1;
            sortingDD.menuWrapping = "normal";
            sortingDD.scrollBar = "";
            sortingDD.showEmptyItems = true;
            sortingDD.soundId = "";
            sortingDD.soundType = "";
            sortingDD.inspectableThumbOffset = {"top":0, "bottom":0};
            sortingDD.visible = true;
            try 
            {
                sortingDD["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
