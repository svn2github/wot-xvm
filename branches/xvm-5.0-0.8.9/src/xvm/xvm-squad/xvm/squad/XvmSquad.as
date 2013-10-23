/**
 * XVM
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm.squad
{
    import com.xvm.*;
    import com.xvm.infrastructure.*;

    public class XvmSquad extends XvmModBase
    {
        public override function get logPrefix():String
        {
            return "[XvmSquad]";
        }

        private static const _views:Object =
        {
            "prb_windows/squadWindow": SquadWindow
        }

        public override function get views():Object
        {
            return _views;
        }
    }
}
