/**
 * XVM
 * @author Mr.A
 */
package xvm.loginlayout
{
    import com.xvm.*;
    import com.xvm.infrastructure.*;

    public class LoginLayoutXvmMod extends XvmModBase
    {
        public override function get logPrefix():String
        {
            return "[XVM:LOGINLAYOUT]";
        }

        private static const _views:Object =
        {
            "login": LoginLayoutXvmView
        }

        public override function get views():Object
        {
            return _views;
        }
    }
}
