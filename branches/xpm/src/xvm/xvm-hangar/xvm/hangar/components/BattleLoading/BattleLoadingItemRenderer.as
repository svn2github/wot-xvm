package xvm.hangar.components.BattleLoading
{
    import net.wg.gui.events.UILoaderEvent;
    import com.xvm.types.cfg.CClanIcon;
    import net.wg.gui.lobby.battleloading.PlayerItemRenderer;
    import com.xvm.utils.WGUtils;
    import com.xvm.*;
    import xvm.hangar.components.ClanIcon.ClanIcon;

    public class BattleLoadingItemRenderer
    {
        private var proxy:PlayerItemRenderer;

        public function BattleLoadingItemRenderer(proxy:PlayerItemRenderer)
        {
            this.proxy = proxy;

            proxy.iconLoader.addEventListener(UILoaderEvent.COMPLETE, onVehicleIconLoadComplete);
            //Stat.loadBattleStat(this, onStatLoaded, true);
        }

        internal function setData(data:Object):void
        {
            if (data)
                attachClanIconToPlayer(data);

            //proxy.data.icon = proxy.data.icon.replace(Defines.WG_CONTOUR_ICON_PATH, Defines.XVMRES_ROOT + Config.config.iconset.battleLoading);

            // Remove squad icon.
            if (Config.config.battleLoading.removeSquadIcon && proxy.squad != null)
                proxy.squad.visible = false;
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

            if (!Config.config.battle.mirroredVehicleIcons && team == Defines.TEAM_ENEMY)
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
            Logger.add("onStatLoaded: " + proxy.data.label);
        }
    }

}
