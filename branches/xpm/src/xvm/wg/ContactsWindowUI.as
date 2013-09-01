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
    
    public dynamic class ContactsWindowUI extends net.wg.gui.messenger.windows.ContactsWindow
    {
        public function ContactsWindowUI()
        {
            super();
            this.__setProp_tabs_ContactsWindow_tabs_0();
            this.__setProp_viewStack_ContactsWindow_viewStack_0();
            return;
        }

        internal function __setProp_tabs_ContactsWindow_tabs_0():*
        {
            var loc1:*;
            try 
            {
                tabs["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tabs.autoSize = "left";
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

        internal function __setProp_viewStack_ContactsWindow_viewStack_0():*
        {
            var loc1:*;
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
            viewStack.targetGroup = "tabs";
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
    }
}
