/**
 * XVM
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm
{
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import net.wg.gui.components.common.MainViewContainer;
    import net.wg.infrastructure.events.*;
    import com.xvm.*;
    import net.wg.infrastructure.interfaces.IManagedContainer;
    import net.wg.infrastructure.interfaces.IView;
    import net.wg.infrastructure.managers.impl.ContainerManager;
    import xvm.hangar.*;

    [SWF(width="100", height="100", backgroundColor="#666666")]

    public class XvmHangar extends Sprite
    {
        public function XvmHangar():void
        {
            if (stage)
            {
                init();
            }
            else
            {
                addEventListener(Event.ADDED_TO_STAGE, init);
            }
        }

        private function init(e:Event = null):void
        {
            removeEventListener(Event.ADDED_TO_STAGE, init);

            // entry point

            try
            {
                Logger.add("[XVM] hangar, current view: " + (App.containerMgr.lastFocusedView ? App.containerMgr.lastFocusedView.as_alias : "None"));

                // view can be already loaded
                var mgr:ContainerManager = App.containerMgr as ContainerManager;
                for each (var c:IManagedContainer in mgr.containersMap)
                {
                    var vc:MainViewContainer = c as MainViewContainer;
                    if (vc != null)
                    {
                        for (var i:int = 0; i < vc.numChildren; ++i)
                        {
                            var v:IView = vc.getChildAt(i) as IView;
                            if (v != null)
                                processView(v, true);
                        }
                    }
                }
            }
            catch (e:*)
            {
                Logger.add(e.getStackTrace());
            }
        }

        private function onViewLoaded(e:LoaderEvent):void
        {
            Logger.add("View loaded: " + e.view.as_alias);
            processView(e.view);
        }

        private function processView(view:IView, populated:Boolean = false):void
        {
            var mod:IXvmMod = null;
            switch (view.as_alias)
            {
                case "login":
                    mod = new Login(view);
                    break;
                case "lobby":
                    mod = new Lobby(view);
                    break;
                case "battleLoading":
                    mod = new BattleLoading(view);
                    break;
            }
            if (mod != null && populated)
            {
                mod.onBeforePopulate(null);
                mod.onAfterPopulate(null);
            }
        }
    }
}
