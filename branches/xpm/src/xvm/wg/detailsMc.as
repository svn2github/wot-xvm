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
    import net.wg.gui.lobby.battleResults.*;
    
    public dynamic class detailsMc extends net.wg.gui.lobby.battleResults.DetailsBlock
    {
        public function detailsMc()
        {
            super();
            this.__setProp_detailedReportBtn_detailsMc_buttons_0();
            return;
        }

        internal function __setProp_detailedReportBtn_detailsMc_buttons_0():*
        {
            try 
            {
                detailedReportBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            detailedReportBtn.autoRepeat = false;
            detailedReportBtn.autoSize = "none";
            detailedReportBtn.data = "";
            detailedReportBtn.enabled = true;
            detailedReportBtn.enableInitCallback = false;
            detailedReportBtn.fillPadding = 0;
            detailedReportBtn.focusable = true;
            detailedReportBtn.label = "#battle_results:common/details/detailedReportBtn";
            detailedReportBtn.paddingHorizontal = 5;
            detailedReportBtn.selected = false;
            detailedReportBtn.soundId = "";
            detailedReportBtn.soundType = "normal";
            detailedReportBtn.toggle = false;
            detailedReportBtn.visible = true;
            try 
            {
                detailedReportBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
