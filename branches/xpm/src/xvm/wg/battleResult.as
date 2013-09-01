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
    
    public dynamic class battleResult extends net.wg.gui.lobby.battleResults.BattleResults
    {
        public function battleResult()
        {
            super();
            this.__setProp_tabs_mc_battleResult_tabs_0();
            this.__setProp_view_mc_battleResult_view_0();
            return;
        }

        internal function __setProp_tabs_mc_battleResult_tabs_0():*
        {
            try 
            {
                tabs_mc["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tabs_mc.autoSize = "right";
            tabs_mc.buttonWidth = 0;
            tabs_mc.direction = "horizontal";
            tabs_mc.enabled = true;
            tabs_mc.enableInitCallback = false;
            tabs_mc.focusable = true;
            tabs_mc.itemRendererName = "TabButton";
            tabs_mc.paddingHorizontal = 10;
            tabs_mc.spacing = 0;
            tabs_mc.visible = true;
            try 
            {
                tabs_mc["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_view_mc_battleResult_view_0():*
        {
            try 
            {
                view_mc["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            view_mc.cache = true;
            view_mc.enabled = true;
            view_mc.enableInitCallback = false;
            view_mc.targetGroup = "tabs_mc";
            view_mc.visible = true;
            try 
            {
                view_mc["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
