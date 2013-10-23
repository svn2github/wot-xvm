/**
 * XVM - squad window
 * @author Pavel Máca
 */
package xvm.squad
{
    import com.xvm.*;
    import com.xvm.infrastructure.*;
    import net.wg.gui.prebattle.squad.SquadWindow;
    import net.wg.infrastructure.events.*;
    import net.wg.infrastructure.interfaces.*;

    public class SquadWindow extends XvmViewBase
    {
        public function SquadWindow(view:IView)
        {
            super(view);
        }

        public function get page():net.wg.gui.prebattle.squad.SquadWindow
        {
            return super.view as net.wg.gui.prebattle.squad.SquadWindow;
        }

        public override function onAfterPopulate(e:LifeCycleEvent):void
        {
            try
            {
                page.memberList.itemRenderer = UI_SquadItemRenderer;
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }
    }

}
