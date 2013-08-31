/**
 * XVM Entry Point
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package xvm
{
    import flash.display.*;
    import flash.events.*;
    import flash.net.URLRequest;
    import flash.utils.*;
    import flash.system.*;
    import net.wg.infrastructure.interfaces.*;
    import com.xvm.*;
    import com.xvm.io.*;

    [SWF(width="1", height="1", backgroundColor="#000000")]

    public class Xvm extends MovieClip
    {
        public function Xvm():void
        {
            Config.load(this, init);
        }

        private function init(e:Event = null):void
        {
            if (!stage)
            {
                addEventListener(Event.ADDED_TO_STAGE, init);
                return;
            }
            removeEventListener(Event.ADDED_TO_STAGE, init);

            // entry point

            Cmd.getMods(this, onGetModsComplete);

            try
            {
                //var view:IView = App.instance.containerMgr.lastFocusedView;
                //Logger.add("view: " + (view ? view.as_alias : "(null)"));
                //setInterval(function():void {
                //    view = App.instance.containerMgr.lastFocusedView;
                //    Logger.add("view: " + (view ? view.as_alias : "(null)"));
                //}, 1000);
                //wrapper.version.text = value + "   XVM " + Defines.XVM_VERSION + " (WoT " + Defines.WOT_VERSION + ")";
                //Logger.addObject(Config.config, "config", 10);
            }
            catch (e:*)
            {
                Logger.add(e.getStackTrace());
            }
        }

        private function onGetModsComplete(mods:String):void
        {
            // TODO: dispose loader
            try
            {
                if (mods == null)
                    return;
                var list:Array = JSONx.parse(mods) as Array;
                if (list == null || list.length == 0)
                    return;
                var ctx:LoaderContext = new LoaderContext(false, ApplicationDomain.currentDomain);
                for (var i:int = 0; i < list.length; ++i)
                {
                    var mod:String = (list[i] as String).replace(/^.*\//, '');
                    Logger.add("[XVM] Loading mod: " + mod);
                    var request:URLRequest = new URLRequest(Defines.XVMMODS_ROOT + mod);
                    var loader:Loader = new flash.display.Loader();
                    loader.load(request, ctx);
                    loader.contentLoaderInfo.addEventListener(Event.INIT, onLibLoaded);
                    loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, onLibLoadError);
                }
            }
            catch (e:Error)
            {
                Logger.add(e.getStackTrace());
            }
        }

        private function onLibLoaded(e:Event):void
        {
            var loaderInfo:LoaderInfo = flash.display.LoaderInfo(e.currentTarget);
            loaderInfo.removeEventListener(Event.INIT, onLibLoaded);
            loaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, onLibLoadError);
            Logger.add("[XVM] Mod loaded: " + loaderInfo.url.replace(/^.*\//, ''));
            loaderInfo.loader.visible = false;
            (App.instance as MovieClip).addChild(loaderInfo.loader);
        }

        private function onLibLoadError(e:IOErrorEvent):void
        {
            var loaderInfo:LoaderInfo = LoaderInfo(e.currentTarget);
            loaderInfo.removeEventListener(Event.INIT, onLibLoaded);
            loaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, onLibLoadError);
            Logger.add("[XVM] Mod load error: " + e.text);
        }
    }
}
