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
    import net.wg.gui.lobby.profile.*;
    
    public dynamic class ProfileTabNavigator_UI extends net.wg.gui.lobby.profile.ProfileTabNavigator
    {
        public function ProfileTabNavigator_UI()
        {
            super();
            this.__setProp_viewStack_ProfileTabNavigator_UI_viewStack_0();
            this.__setProp_bar_ProfileTabNavigator_UI_buttonBar_0();
            this.__setProp_btnTemplate_ProfileTabNavigator_UI_buttonTemplate_0();
            return;
        }

        internal function __setProp_viewStack_ProfileTabNavigator_UI_viewStack_0():*
        {
            try 
            {
                viewStack["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            viewStack.cache = true;
            viewStack.enabled = true;
            viewStack.enableInitCallback = false;
            viewStack.targetGroup = "";
            viewStack.visible = true;
            try 
            {
                viewStack["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_bar_ProfileTabNavigator_UI_buttonBar_0():*
        {
            try 
            {
                bar["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            bar.autoSize = "none";
            bar.buttonWidth = 0;
            bar.direction = "horizontal";
            bar.enabled = true;
            bar.enableInitCallback = false;
            bar.focusable = true;
            bar.itemRendererName = "ProfileTabButton_UI";
            bar.spacing = -1;
            bar.visible = true;
            try 
            {
                bar["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_btnTemplate_ProfileTabNavigator_UI_buttonTemplate_0():*
        {
            try 
            {
                btnTemplate["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            btnTemplate.autoRepeat = false;
            btnTemplate.autoSize = "none";
            btnTemplate.data = "";
            btnTemplate.enabled = true;
            btnTemplate.enableInitCallback = false;
            btnTemplate.focusable = true;
            btnTemplate.label = "TRIAGRUTRICA";
            btnTemplate.selected = false;
            btnTemplate.toggle = false;
            btnTemplate.visible = true;
            try 
            {
                btnTemplate["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
