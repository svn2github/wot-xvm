/**
 * XVM - hangar
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm.hangar.views
{
    import com.xvm.*;
    import com.xvm.infrastructure.*;
    import net.wg.gui.lobby.hangar.Hangar;
    import net.wg.infrastructure.interfaces.*;
    import net.wg.infrastructure.events.*;
    import xvm.hangar.*;
    import xvm.hangar.components.Crew.*;

    public class Hangar extends XvmViewBase
    {
        public function Hangar(view:IView)
        {
            super(view);
        }

        public function get page():net.wg.gui.lobby.hangar.Hangar
        {
            return super.view as net.wg.gui.lobby.hangar.Hangar;
        }

        public override function onAfterPopulate(e:LifeCycleEvent):void
        {
            try
            {
                //Logger.addObject("onAfterPopulate: " + view.as_alias);
                initCrew();
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        private function initCrew():void
        {
            CrewLoader.init(page);
        }
    }

}
