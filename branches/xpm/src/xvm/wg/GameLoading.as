package 
{
    import adobe.utils.*;
    import flash.accessibility.*;
    import flash.desktop.*;
    import flash.display.*;
    import flash.errors.*;
    import flash.events.*;
    import flash.external.*;
    import flash.filters.*;
    import flash.geom.*;
    import flash.globalization.*;
    import flash.media.*;
    import flash.net.*;
    import flash.net.drm.*;
    import flash.printing.*;
    import flash.profiler.*;
    import flash.sampler.*;
    import flash.sensors.*;
    import flash.system.*;
    import flash.text.*;
    import flash.text.engine.*;
    import flash.text.ime.*;
    import flash.ui.*;
    import flash.utils.*;
    import flash.xml.*;
    import net.wg.gui.gameloading.*;
    
    public dynamic class GameLoading extends net.wg.gui.gameloading.GameLoading
    {
        public function GameLoading()
        {
            super();
            this.__setProp_background_GameLoading_background_0();
            return;
        }

        internal function __setProp_background_GameLoading_background_0():*
        {
            try 
            {
                background["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            background.autoSize = true;
            background.enableInitCallback = false;
            background.maintainAspectRatio = true;
            background.source = "../maps/login/__login_bg.png";
            background.sourceAlt = "";
            background.visible = true;
            try 
            {
                background["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
