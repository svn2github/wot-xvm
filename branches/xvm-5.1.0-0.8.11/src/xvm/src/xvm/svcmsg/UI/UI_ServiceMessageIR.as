/**
 * XVM
 * @author Maxim Schedriviy "m.schedriviy(at)gmail.com"
 */
package xvm.svcmsg.UI
{
    import com.xvm.*;
    import flash.events.*;
    import net.wg.gui.notification.*;
    import xvm.svcmsg.*;

    public dynamic class UI_ServiceMessageIR extends ServiceMessageIR_UI
    {
        public function UI_ServiceMessageIR()
        {
            //Logger.add('UI_ServiceMessageIR');
            super();
        }

        override protected function configUI():void
        {
            super.configUI();
            this.textField.addEventListener(TextEvent.LINK, ServiceMessageXvmView.onMessageLinkClick);
        }

        override public function set data(value:Object):void
        {
            super.data = ServiceMessageXvmView.fixData(value as NotificationInfoVO);
        }
    }
}
