/**
 * XVM
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm.squad
{
    import com.xvm.*;
    import com.xvm.infrastructure.*;

    public class SquadXvmMod extends XvmModBase
    {
        public override function get logPrefix():String
        {
            return "[XvmSquad]";
        }

        private static const _views:Object =
        {
            "prb_windows/squadWindow": SquadXvmView
        }

        public override function get views():Object
        {
            return _views;
        }
    }
}
