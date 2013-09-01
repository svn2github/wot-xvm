/**
 * XVM
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm
{
    import net.wg.infrastructure.interfaces.IView;
    import net.wg.infrastructure.events.LifeCycleEvent;
    import com.xvm.Logger;

    public class XvmModBase implements IXvmMod
    {
        private var _view:IView;
        private var _viewAlias:String;

        public function XvmModBase(view:IView)
        {
            _view = view;
            _viewAlias = view.as_alias;
            view.addEventListener(LifeCycleEvent.ON_BEFORE_POPULATE, onBeforePopulate);
            view.addEventListener(LifeCycleEvent.ON_AFTER_POPULATE, onAfterPopulate);
            view.addEventListener(LifeCycleEvent.ON_BEFORE_DISPOSE, onBeforeDispose);
            view.addEventListener(LifeCycleEvent.ON_AFTER_DISPOSE, onAfterDispose);
        }

        public function onBeforePopulate(e:LifeCycleEvent):void
        {
            Logger.add("onBeforePopulate: " + _viewAlias);
        }

        public function onAfterPopulate(e:LifeCycleEvent):void
        {
            Logger.add("onAfterPopulate: " + _viewAlias);
        }

        public function onBeforeDispose(e:LifeCycleEvent):void
        {
            Logger.add("onBeforeDispose: " + _viewAlias);
        }

        public function onAfterDispose(e:LifeCycleEvent):void
        {
            Logger.add("onAfterDispose: " + _viewAlias);
        }
    }

}
