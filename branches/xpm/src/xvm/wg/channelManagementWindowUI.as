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
    import net.wg.gui.messenger.windows.*;
    
    public dynamic class channelManagementWindowUI extends net.wg.gui.messenger.windows.ChannelsManagementWindow
    {
        public function channelManagementWindowUI()
        {
            super();
            this.__setProp_view_channelManagementWindowUI_view_0();
            this.__setProp_tabs_channelManagementWindowUI_tabs_0();
            return;
        }

        internal function __setProp_view_channelManagementWindowUI_view_0():*
        {
            try 
            {
                view["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            view.cache = true;
            view.enabled = true;
            view.enableInitCallback = false;
            view.targetGroup = "tabs";
            view.visible = true;
            try 
            {
                view["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_tabs_channelManagementWindowUI_tabs_0():*
        {
            try 
            {
                tabs["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tabs.autoSize = "right";
            tabs.buttonWidth = 0;
            tabs.direction = "horizontal";
            tabs.enabled = true;
            tabs.enableInitCallback = false;
            tabs.focusable = true;
            tabs.itemRendererName = "SmallTabButton";
            tabs.paddingHorizontal = 0;
            tabs.spacing = 0;
            tabs.visible = true;
            try 
            {
                tabs["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
