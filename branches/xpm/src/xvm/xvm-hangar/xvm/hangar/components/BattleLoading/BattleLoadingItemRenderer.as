package xvm.hangar.components.BattleLoading
{
    import com.xvm.misc.IconLoader;
    import net.wg.gui.components.controls.UILoaderAlt;
    import net.wg.gui.events.UILoaderEvent;
    import com.xvm.types.cfg.CClanIcon;
    import net.wg.gui.lobby.battleloading.PlayerItemRenderer;
    import com.xvm.utils.WGUtils;
    import com.xvm.*;
    import com.xvm.utils.*;
    import xvm.hangar.components.ClanIcon.ClanIcon;

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

            // ClanIcon
            attachClanIconToPlayer(data);

            // Format strings
            //if (Stat.loaded)
            {
                //Logger.add(data.label);
                //Logger.addObject(data);
                Macros.RegisterMinimalMacrosData(data.label, data.clanAbbrev, Utils.clearIcon(data.icon), data.vehicle);
                data.label = Macros.Format(playerName,
                    team == Defines.TEAM_ALLY ? Config.config.battleLoading.formatLeftNick : Config.config.battleLoading.formatRightNick);
                //data.vehicle = Macros.Format(playerName,
                //    team == Defines.TEAM_ALLY ? Config.config.battleLoading.formatLeftVehicle : Config.config.battleLoading.formatRightVehicle);
            }

            // Alternative icon set
            if (proxy.iconLoader.sourceAlt == Defines.WG_CONTOUR_ICON_NOIMAGE)
                proxy.iconLoader.sourceAlt = data.icon;
            if (data.icon == proxy.iconLoader.sourceAlt)
                data.icon = data.icon.replace(Defines.WG_CONTOUR_ICON_PATH, Defines.XVMRES_ROOT + Config.config.iconset.battleLoading);
        }

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
                proxy.iconLoader.scaleX = -proxy.iconLoader.scaleX;
                proxy.iconLoader.x -= 82;
                //Logger.add(proxy.iconLoader.width + "x" + proxy.iconLoader.height);
            }
            /*if (m_iconLoaded)
                return;
            m_iconLoaded = true;

            wrapper.vehicleField._width += 80;
            if (team == Defines.TEAM_ALLY)
                wrapper.vehicleField._x -= 113; // sirmax: why this value?
            else
                wrapper.vehicleField._x += 5;
            }
            */
        }

        private function onStatLoaded():void
        {
            //Logger.add("onStatLoaded: " + proxy.data.label);
            proxy.setData(proxy.data);
        }
    }

}
