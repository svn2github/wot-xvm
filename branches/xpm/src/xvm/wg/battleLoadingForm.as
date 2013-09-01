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
    import net.wg.gui.lobby.battleloading.*;
    
    public dynamic class battleLoadingForm extends net.wg.gui.lobby.battleloading.BattleLoadingForm
    {
        public function battleLoadingForm()
        {
            super();
            this.__setProp_loadingBar_battleLoadingForm_loading_0();
            this.__setProp_team1List_battleLoadingForm_players_0();
            this.__setProp_team2List_battleLoadingForm_players_0();
            return;
        }

        internal function __setProp_loadingBar_battleLoadingForm_loading_0():*
        {
            try 
            {
                loadingBar["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            loadingBar.enabled = true;
            loadingBar.enableInitCallback = false;
            loadingBar.maximum = 1;
            loadingBar.minimum = 0;
            loadingBar.value = 0;
            loadingBar.visible = true;
            try 
            {
                loadingBar["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_team1List_battleLoadingForm_players_0():*
        {
            try 
            {
                team1List["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            team1List.enabled = true;
            team1List.enableInitCallback = false;
            team1List.focusable = false;
            team1List.itemRendererName = "LeftItemRendererUI";
            team1List.itemRendererInstanceName = "";
            team1List.margin = 0;
            team1List.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            team1List.rowHeight = 25;
            team1List.scrollBar = "";
            team1List.useRightButton = false;
            team1List.useRightButtonForSelect = false;
            team1List.visible = true;
            team1List.wrapping = "normal";
            try 
            {
                team1List["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_team2List_battleLoadingForm_players_0():*
        {
            try 
            {
                team2List["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            team2List.enabled = true;
            team2List.enableInitCallback = false;
            team2List.focusable = true;
            team2List.itemRendererName = "RightItemRendererUI";
            team2List.itemRendererInstanceName = "";
            team2List.margin = 0;
            team2List.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            team2List.rowHeight = 25;
            team2List.scrollBar = "";
            team2List.useRightButton = false;
            team2List.useRightButtonForSelect = false;
            team2List.visible = true;
            team2List.wrapping = "normal";
            try 
            {
                team2List["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
