/**
 * XVM
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm
{
    import com.xvm.*;
    import com.xvm.infrastructure.*;
    import xvm.hangar.views.*;
    import xvm.hangar.components.PingServers.*;

    public class XvmHangar extends XvmModBase
    {
        public static const G_NAME:String = "name";
        public static var Globals:Object = { };

        public override function get logPrefix():String
        {
            return "[XvmHangar]";
        }

        private static const _views:Object =
        {
            "login": Login,
            "lobby": Lobby,
            "battleLoading": BattleLoading,
            "prb_windows/companiesWindow": CompaniesListWindow,
            "prb_windows/companyWindow": CompanyWindow,
            "battleResults": BattleResults,
            "profile": Profile,
            "profileWindow": Profile
        }

        public override function get views():Object
        {
            return _views;
        }

        public override function entryPoint():void
        {
            // init pinger as earlier as possible
            PingServers.initFeature(Config.config.login.pingServers.enabled || Config.config.hangar.pingServers.enabled);
        }
    }
}
