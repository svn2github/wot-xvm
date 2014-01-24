/**
 * XVM
 * @author Maxim Schedriviy "m.schedriviy(at)gmail.com"
 */
package xvm.techtree
{
    import com.xvm.*;
    import com.xvm.infrastructure.*;

    public class TechTreeXvmMod extends XvmModBase
    {
        public override function get logPrefix():String
        {
            return "[XVM:TECHTREE]";
        }

        private static const _views:Object =
        {
            "techtree": TechTreeXvmView,
            "research": ResearchXvmView
        }

        public override function get views():Object
        {
            return _views;
        }
    }
}
