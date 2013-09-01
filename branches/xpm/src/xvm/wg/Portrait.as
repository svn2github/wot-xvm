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
    
    public dynamic class Portrait extends net.wg.gui.lobby.hangar.crew.TankmenIcons
    {
        public function Portrait()
        {
            super();
            addFrameScript(0, this.frame1, 4, this.frame5);
            this.__setProp_imageLoader_Portrait_UILoader_0();
            return;
        }

        internal function __setProp_imageLoader_Portrait_UILoader_0():*
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

        internal function frame1():*
        {
            stop();
            return;
        }

        internal function frame5():*
        {
            stop();
            return;
        }
    }
}
