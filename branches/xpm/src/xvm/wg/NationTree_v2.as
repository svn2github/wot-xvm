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
    import net.wg.gui.lobby.techtree.sub.*;
    
    public dynamic class NationTree_v2 extends net.wg.gui.lobby.techtree.sub.NationTree
    {
        public function NationTree_v2()
        {
            super();
            this.__setProp_ntGraphics_NationTree_v2_container_0();
            return;
        }

        internal function __setProp_ntGraphics_NationTree_v2_container_0():*
        {
            try 
            {
                ntGraphics["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            ntGraphics.arrowRenderer = "NationTreeArrow";
            ntGraphics.inButtonOffset = 8;
            ntGraphics.lineThickness = 1;
            ntGraphics.lockedLineColor = 3881785;
            ntGraphics.next2unlockLineColor = 8421504;
            ntGraphics.outButtonOffset = 8;
            ntGraphics.unlockedLineColor = 8421504;
            try 
            {
                ntGraphics["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
