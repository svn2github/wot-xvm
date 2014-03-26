/**
 * XVM
 * @author Maxim Schedriviy "m.schedriviy(at)gmail.com"
 */
package xvm.svcmsg
{
    import com.xvm.*;
    import com.xvm.io.*;
    import com.xvm.infrastructure.*;
    import flash.events.*;
    import net.wg.data.*;
    import net.wg.gui.lobby.*;
    import net.wg.gui.notification.*;
    import net.wg.infrastructure.events.*;
    import net.wg.infrastructure.interfaces.*;
    import org.idmedia.as3commons.util.*;
    import xvm.svcmsg.UI.*;

    public class ServiceMessageXvmView extends XvmViewBase
    {
        public function ServiceMessageXvmView(view:IView)
        {
            super(view);
        }

        override public function onBeforePopulate(e:LifeCycleEvent):void
        {
            try
            {
                if (view is LobbyPage)
                    initLobby(view as LobbyPage)
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        override public function onAfterPopulate(e:LifeCycleEvent):void
        {
            try
            {
                if (view is NotificationListView)
                    initNotificationList(view as NotificationListView)
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        // PUBLIC STATIC

        public static function fixData(value:NotificationInfoVO):NotificationInfoVO
        {
            if (value != null)
                value.messageVO.message = Locale.get(value.messageVO.message).split("#XVM_SITE#").join('event:http://www.modxvm.com/');
            return value;
        }

        public static function onMessageLinkClick(e:TextEvent):void
        {
            //Logger.addObject(e);
            if (StringUtils.startsWith(e.text.toLowerCase(), 'http'))
                Cmd.openUrl(e.text);
        }

        // PRIVATE

        private function initLobby(v:LobbyPage):void
        {
            //if (!v.notificationPopupViewer)
            {
                if (v.notificationPopupViewer)
                {
                    v.unregisterComponent(Aliases.SYSTEM_MESSAGES);
                    v.removeChild(v.notificationPopupViewer);
                }
                v.notificationPopupViewer = new NotificationPopUpViewer(UI_ServiceMessagePopUp);
                v.addChild(v.notificationPopupViewer);
                v.registerComponent(v.notificationPopupViewer, Aliases.SYSTEM_MESSAGES);
            //} else {
            //    Logger.add("already");
            //    Logger.addObject(v.notificationPopupViewer);
            }
        }

        private function initNotificationList(v:NotificationListView):void
        {
            v.list.itemRenderer = UI_ServiceMessageIR;
        }
    }

}
