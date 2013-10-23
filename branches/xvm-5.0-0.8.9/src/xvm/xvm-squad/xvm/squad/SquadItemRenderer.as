/**
 * @author Mr.A
 * @author Pavel Máca
 */
package xvm.squad
{
    import com.xvm.*;
    import com.xvm.l10n.Locale;
    import com.xvm.types.veh.*;
    import com.xvm.utils.*;
    import flash.text.*;
    import net.wg.gui.prebattle.squad.SquadItemRenderer;

    public class SquadItemRenderer
    {
        private var proxy:net.wg.gui.prebattle.squad.SquadItemRenderer;
        private var vehicleTierField:TextField;

        public function SquadItemRenderer(proxy:net.wg.gui.prebattle.squad.SquadItemRenderer):void
        {
            this.proxy = proxy;
            this.vehicleTierField = null;
        }

        private var configUI:Boolean = false;

        public function setUIConfigured():void
        {
            configUI = true;
        }

        public function getToolTipData():String
        {
            if (!Config.config.squad.enabled)
                return null;

            // Prevent editing empty or "invite" fields
            if (!proxy.data || proxy.data.dummy)
                return null;

            var vdata:VehicleData = VehicleInfo.getByLocalizedShortName(proxy.model.vShortName);
            if (vdata == null)
                return null;
            return Locale.get("Type") + ": " + Locale.get(vdata.vclass) + "\n" +
                Locale.get("Battle tiers") + ": " + vdata.tierLo + "-" + vdata.tierHi + "\n" +
                Locale.get("Nation") + ": " + Locale.get(vdata.nation);
        }

        public function displayVehicleTier():void
        {
            if (!Config.config.squad.enabled)
                return;

            // Erase field
            if (vehicleTierField != null)
                vehicleTierField.htmlText = "";

            // Prevent editing empty or "invite" fields
            if (!proxy.data || proxy.data.dummy)
                return;

            // UI ready
            if (!configUI)
                return;

            // Remove clan tag from player name
            if (Config.config.squad.showClan == false)
                proxy.data.fullName = proxy.data.userName;

            // Display vehicle info
            var vdata:VehicleData = VehicleInfo.getByLocalizedShortName(proxy.data.vShortName);
            if (vdata != null)
            {
                if (vehicleTierField == null)
                    createVehicleTierField();
                Macros.RegisterMinimalMacrosData(proxy.data.userName, vdata.vid);
                vehicleTierField.htmlText = "<p class='xvm_vehicleTier' align='right'>" +
                    Macros.Format(proxy.data.userName, Config.config.squad.formatInfoField) + "</p>";
            }
        }

        // -- Private

        private function createVehicleTierField():void
        {
            vehicleTierField = new TextField();
            vehicleTierField.selectable = false;
            vehicleTierField.autoSize = TextFieldAutoSize.RIGHT;
            vehicleTierField.styleSheet = Utils.createTextStyleSheet("xvm_vehicleTier", proxy.vehicleNameField.defaultTextFormat);

            // position
            vehicleTierField.x = proxy.width - vehicleTierField.width - 3;
            vehicleTierField.y = proxy.vehicleNameField.y;

            vehicleTierField.htmlText = "";
            proxy.addChild(vehicleTierField);
        }
    }

}
