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
    
    public dynamic class ResearchItems_v2 extends net.wg.gui.lobby.techtree.sub.ResearchItems
    {
        public function ResearchItems_v2()
        {
            super();
            this.__setProp_rGraphics_ResearchItems_v2_graphics_0();
            return;
        }

        internal function __setProp_rGraphics_ResearchItems_v2_graphics_0():*
        {
            try 
            {
                rGraphics["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            rGraphics.arrowRenderer = "ResearchItemsArrow";
            rGraphics.lineThickness = 1;
            rGraphics.lockedLineColor = 3881785;
            rGraphics.next2unlockLineColor = 8421504;
            rGraphics.unlockedLineColor = 8421504;
            try 
            {
                rGraphics["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
