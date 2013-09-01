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
    import net.wg.gui.lobby.battlequeue.*;
    
    public dynamic class BattleQueue extends net.wg.gui.lobby.battlequeue.BattleQueue
    {
        public function BattleQueue()
        {
            super();
            this.__setProp_listByLevel_BattleQueue_tables_0();
            this.__setProp_listByType_BattleQueue_tables_0();
            this.__setProp_exitButton_BattleQueue_header_0();
            this.__setProp_startButton_BattleQueue_header_0();
            return;
        }

        internal function __setProp_listByLevel_BattleQueue_tables_0():*
        {
            try 
            {
                listByLevel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            listByLevel.enabled = true;
            listByLevel.enableInitCallback = false;
            listByLevel.focusable = false;
            listByLevel.itemRendererName = "BattleQueueItemRenderer";
            listByLevel.itemRendererInstanceName = "";
            listByLevel.margin = 0;
            listByLevel.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            listByLevel.rowHeight = 25;
            listByLevel.scrollBar = "";
            listByLevel.useRightButton = false;
            listByLevel.useRightButtonForSelect = false;
            listByLevel.visible = true;
            listByLevel.wrapping = "normal";
            try 
            {
                listByLevel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_listByType_BattleQueue_tables_0():*
        {
            try 
            {
                listByType["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            listByType.enabled = true;
            listByType.enableInitCallback = false;
            listByType.focusable = false;
            listByType.itemRendererName = "BattleQueueItemRenderer";
            listByType.itemRendererInstanceName = "";
            listByType.margin = 0;
            listByType.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            listByType.rowHeight = 25;
            listByType.scrollBar = "";
            listByType.useRightButton = false;
            listByType.useRightButtonForSelect = false;
            listByType.visible = true;
            listByType.wrapping = "normal";
            try 
            {
                listByType["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_exitButton_BattleQueue_header_0():*
        {
            try 
            {
                exitButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            exitButton.autoRepeat = false;
            exitButton.autoSize = "none";
            exitButton.data = "";
            exitButton.enabled = true;
            exitButton.enableInitCallback = false;
            exitButton.fillPadding = 0;
            exitButton.focusable = true;
            exitButton.label = "#menu:prebattle/exitButton";
            exitButton.paddingHorizontal = 5;
            exitButton.selected = false;
            exitButton.soundId = "";
            exitButton.soundType = "buttonCaps";
            exitButton.toggle = false;
            exitButton.visible = true;
            try 
            {
                exitButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_startButton_BattleQueue_header_0():*
        {
            try 
            {
                startButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            startButton.autoRepeat = false;
            startButton.autoSize = "none";
            startButton.data = "";
            startButton.enabled = true;
            startButton.enableInitCallback = false;
            startButton.fillPadding = 0;
            startButton.focusable = true;
            startButton.label = "#menu:prebattle/startButton";
            startButton.paddingHorizontal = 5;
            startButton.selected = false;
            startButton.soundId = "";
            startButton.soundType = "buttonCaps";
            startButton.toggle = false;
            startButton.visible = false;
            try 
            {
                startButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
