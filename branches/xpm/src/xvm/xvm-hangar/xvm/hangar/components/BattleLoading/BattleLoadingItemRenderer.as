package xvm.hangar.components.BattleLoading
{
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

            //Stat.loadBattleStat(this, onStatLoaded, true);
        }

        internal function setData(data:Object):void
        {
            if (data)
                attachClanIconToPlayer(data);

            // Remove squad icon.
            if (Config.config.battleLoading.removeSquadIcon && proxy.squad != null)
                proxy.squad.visible = false;
        }

        private function get team(): Number
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

        private function onStatLoaded():void
        {
            Logger.add("onStatLoaded: " + proxy.data.label);
        }
    }

}
