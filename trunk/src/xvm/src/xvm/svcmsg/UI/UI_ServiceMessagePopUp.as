/**
 * XVM
 * @author Maxim Schedriviy "m.schedriviy(at)gmail.com"
 */
package xvm.svcmsg.UI
{
    import com.xvm.*;
    import com.xvm.misc.*;
    import flash.events.*;
    import net.wg.gui.notification.*;
    import net.wg.gui.notification.vo.*;
    import xvm.svcmsg.*;

    public dynamic class UI_ServiceMessagePopUp extends ServiceMessagePopUp_UI
    {
        public function UI_ServiceMessagePopUp()
        {
            //Logger.add("UI_ServiceMessagePopUp");
            super();
        }

        override protected function configUI():void
        {
            try
            {
                super.configUI();
                this.textField.addEventListener(TextEvent.LINK, ServiceMessageXvmView.onMessageLinkClick);
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        override public function set data(value:Object):void
        {
            try
            {
                super.data = ServiceMessageXvmView.fixData(value as NotificationInfoVO);
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }
    }
}
