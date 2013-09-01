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
    import net.wg.gui.notification.*;
    
    public dynamic class NotificationsListView_UI extends net.wg.gui.notification.NotificationListView
    {
        public function NotificationsListView_UI()
        {
            super();
            this.__setProp_list_NotificationsListView_UI_list_0();
            return;
        }

        internal function __setProp_list_NotificationsListView_UI_list_0():*
        {
            try 
            {
                list["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            list.enabled = true;
            list.enableInitCallback = false;
            list.focusable = true;
            list.itemRendererName = "ServiceMessageIR_UI";
            list.itemRendererInstanceName = "";
            list.scrollBar = "ScrollBar";
            list.scrollStepFactor = 10;
            list.useRightButton = false;
            list.useRightButtonForSelect = false;
            list.visible = true;
            list.wrapping = "normal";
            try 
            {
                list["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
