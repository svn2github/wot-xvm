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
    
    public dynamic class Crew extends net.wg.gui.lobby.hangar.crew.Crew
    {
        public function Crew()
        {
            super();
            this.__setProp_list_Crew_list_0();
            return;
        }

        internal function __setProp_list_Crew_list_0():*
        {
            try 
            {
                list["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            list.enabled = true;
            list.enableInitCallback = false;
            list.focusable = true;
            list.itemRendererName = "CrewItemRenderer";
            list.itemRendererInstanceName = "";
            list.margin = 0;
            list.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            list.rowHeight = 0;
            list.scrollBar = "";
            list.useRightButton = false;
            list.useRightButtonForSelect = false;
            list.visible = true;
            list.wrapping = "normal";
            try 
            {
                list["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
