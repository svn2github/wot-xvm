/**
 * XVM
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm.hangar
{
    import com.xvm.*;
    import com.xvm.infrastructure.*;
    import xvm.hangar.views.*;

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
    }
}
