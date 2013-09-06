package xvm.hangar.components.BattleLoading
{
    import flash.text.*;
    import flash.geom.Transform;
    import com.xvm.misc.IconLoader;
    import net.wg.gui.components.controls.UILoaderAlt;
    import net.wg.gui.events.UILoaderEvent;
    import com.xvm.types.cfg.CClanIcon;
    import net.wg.gui.lobby.battleloading.PlayerItemRenderer;
    import com.xvm.utils.WGUtils;
    import com.xvm.*;
    import com.xvm.utils.*;
    import xvm.hangar.components.ClanIcon.ClanIcon;
    import org.idmedia.as3commons.util.StringUtils;

    public class BattleLoadingItemRenderer
    {
        private var proxy:PlayerItemRenderer;

        private var playerName:String = null;

        public function BattleLoadingItemRenderer(proxy:PlayerItemRenderer)
        {
            this.proxy = proxy;

            proxy.iconLoader.addEventListener(UILoaderEvent.COMPLETE, onVehicleIconLoadComplete);

            // Remove squad icon.
            if (Config.config.battleLoading.removeSquadIcon && proxy.squad != null)
                proxy.squad.visible = false;

            proxy.vehicleField.width += 100;
            if (team == Defines.TEAM_ALLY)
                proxy.vehicleField.x -= 137;
            proxy.vehicleField.condenseWhite = true;

            // Add stat loading handler
            Stat.loadBattleStat(this, onStatLoaded, true);
        }

        internal function setData(data:Object):void
        {
            if (data == null)
                return;

            if (playerName == null)
                playerName = data.label;

            Macros.RegisterMinimalMacrosData(playerName, data.clanAbbrev, Utils.clearIcon(data.icon), data.vehicle);
            data.label = Macros.Format(playerName, "{{nick}}");


            // ClanIcon
            attachClanIconToPlayer(data);

            // Alternative icon set
            if (proxy.iconLoader.sourceAlt == Defines.WG_CONTOUR_ICON_NOIMAGE)
            {
                proxy.iconLoader.sourceAlt = data.icon;
                if (data.icon == proxy.iconLoader.sourceAlt)
                    data.icon = data.icon.replace(Defines.WG_CONTOUR_ICON_PATH, Defines.XVMRES_ROOT + Config.config.iconset.battleLoading);
            }
        }

        internal function draw():void
        {
            try
            {
                if (proxy.data == null)
                    return;
                if (Config.config.battle.highlightVehicleIcon == false)
                    proxy.iconLoader.transform.colorTransform = App.colorSchemeMgr.getScheme(proxy.enabled ? "normal" : "normal_dead").colorTransform;

                // Set Text Fields
                var c:String = proxy.textField.htmlText.match(/ COLOR="(#[0-9A-F]{6})"/)[1];
                var a:String = Macros.Format(playerName, team == Defines.TEAM_ALLY ? Config.config.battleLoading.formatLeftNick : Config.config.battleLoading.formatRightNick);
                var b:String = Macros.Format(playerName, team == Defines.TEAM_ALLY ? Config.config.battleLoading.formatLeftVehicle : Config.config.battleLoading.formatRightVehicle);
                proxy.textField.htmlText = "<font color='" + c + "'>" + a + "</font>";
                proxy.vehicleField.htmlText = "<font color='" + c + "'>" + b + "</font>";
                //Logger.add(b);
                //Logger.add(proxy.vehicleField.htmlText);
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        // PRIVATE

        private function get team():int
        {
            return (proxy is LeftItemRendererWrapper) ? Defines.TEAM_ALLY : Defines.TEAM_ENEMY;
        }

        private var _clanIconLoaded:Boolean = false;
        private function attachClanIconToPlayer(data:Object):void
        {
            if (_clanIconLoaded)
                return;
            _clanIconLoaded = true;

            var cfg:CClanIcon = Config.config.battleLoading.clanIcon;
            if (!cfg.show)
                return;
            var icon:ClanIcon = new ClanIcon(cfg, proxy.iconLoader.x, proxy.iconLoader.y, team,
                WGUtils.GetPlayerName(data.label), WGUtils.GetClanName(data.label));
            if (icon != null)
                proxy.addChild(icon);
        }

        private function onVehicleIconLoadComplete(e:UILoaderEvent):void
        {
            //Logger.add("onVehicleIconLoadComplete");
            if (Config.config.battle.mirroredVehicleIcons == false && team == Defines.TEAM_ENEMY)
            {
                proxy.iconLoader.scaleX = -1;
                proxy.iconLoader.x -= 82;
                //Logger.add(proxy.iconLoader.width + "x" + proxy.iconLoader.height);
            }
        }

        private function onStatLoaded():void
        {
            //Logger.add("onStatLoaded: " + proxy.data.label);
            proxy.vehicleField.condenseWhite = false; // TODO StatData.s_empty;
//            proxy.invalidate();
            draw();
        }
    }

}
