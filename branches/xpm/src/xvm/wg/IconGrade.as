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
    import net.wg.gui.lobby.hangar.crew.*;
    
    public dynamic class IconGrade extends net.wg.gui.lobby.hangar.crew.TankmenIcons
    {
        public function IconGrade()
        {
            super();
            this.__setProp_imageLoader_IconGrade_UILoader_0();
            return;
        }

        internal function __setProp_imageLoader_IconGrade_UILoader_0():*
        {
            try 
            {
                imageLoader["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            imageLoader.autoSize = false;
            imageLoader.enableInitCallback = false;
            imageLoader.maintainAspectRatio = true;
            imageLoader.source = "";
            imageLoader.sourceAlt = "";
            imageLoader.visible = true;
            try 
            {
                imageLoader["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
