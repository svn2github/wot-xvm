/**
 * XVM
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm.profile
{
    import com.xvm.*;
    import com.xvm.infrastructure.*;

    public class ProfileXvmMod extends XvmModBase
    {
        public override function get logPrefix():String
        {
            return "[XVM:HANGAR]";
        }

        private static const _views:Object =
        {
            "lobby": ProfileLobbyXvmView,
            "profile": ProfileXvmView,
            "profileWindow": ProfileXvmView
        }

        public override function get views():Object
        {
            return _views;
        }
    }
}
