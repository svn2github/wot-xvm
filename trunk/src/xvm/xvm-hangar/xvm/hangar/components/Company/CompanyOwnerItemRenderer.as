package xvm.hangar.components.Company
{
    import com.xvm.*;
    import com.xvm.utils.*;
    import com.xvm.types.stat.*;
    import flash.events.*;
    import flash.text.*;
    import flash.utils.*;
    import net.wg.gui.components.controls.*;
    import net.wg.gui.prebattle.company.*;
    import xvm.hangar.components.Company.*;
    import xvm.UI.companiesWindow.*;

    public class CompanyOwnerItemRenderer
    {
        private var proxy:CompanyListItemRenderer;

        private var effField:TextField;
        private var playerName:String;

        public function CompanyOwnerItemRenderer(proxy:CompanyListItemRenderer)
        {
            try
            {
                this.proxy = proxy;

                effField = Utils.cloneTextField(proxy.pCountField);
                effField.styleSheet = Utils.createTextStyleSheet("eff", proxy.pCountField.defaultTextFormat);
                effField.x = proxy.pCountField.x - 15;
                effField.y = proxy.pCountField.y;
                effField.htmlText = "";
                proxy.addChild(effField);

                proxy.dd.itemRenderer = UI_CompanyDropItemRenderer;

                playerName = null;
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }

        }

        public function configUI():void
        {
            var updateCheckBox:CheckBox = proxy.owner.parent.getChildByName("updateStatCheckBox") as CheckBox;
            updateCheckBox.addEventListener(Event.SELECT, onUpdateClick);
        }

        public function setData(data:Object):void
        {
            App.toolTipMgr.hide();
            effField.htmlText = "";

            if (data == null || !data.creatorName)
                return;

            var updateCheckBox:CheckBox = proxy.owner.parent.getChildByName("updateStatCheckBox") as CheckBox;
            if (updateCheckBox.selected)
                onUpdateClick();
        }

        public function handleMouseRollOver(e:MouseEvent):void
        {
            try
            {
                if (playerName == null)
                    return;
                var sd:StatData = Stat.getUserDataByName(playerName);
                if (sd == null)
                    return;
                var tip:String = TeamRendererHelper.getToolTipData(proxy.data.creatorName, proxy.data);
                if (tip == null)
                    return;
                App.toolTipMgr.show(tip);
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        // PRIVATE

        private function onUpdateClick(e:Event = null):void
        {
            playerName = WGUtils.GetPlayerName(proxy.data.creatorName);
            //Logger.add("onUpdateClick() " + playerName);
            if (playerName != null)
                Stat.loadUserData(this, onStatLoaded, playerName, false);
        }

        private function onStatLoaded():void
        {
            effField.htmlText = "<span class='eff'>" + TeamRendererHelper.formatXVMStatText(playerName) + "</span>";
        }
    }

}
