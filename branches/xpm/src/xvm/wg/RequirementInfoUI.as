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
    import net.wg.gui.prebattle.battleSession.*;
    
    public dynamic class RequirementInfoUI extends net.wg.gui.prebattle.battleSession.RequirementInfo
    {
        public function RequirementInfoUI()
        {
            super();
            this.__setProp_flagList_requirementInfo_flagsList_0();
            return;
        }

        internal function __setProp_flagList_requirementInfo_flagsList_0():*
        {
            try 
            {
                flagList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            flagList._align = "center";
            flagList._colorDodgeMulty = 1.2;
            flagList._gap = 4;
            flagList._itemRenderer = "FlagRenderer";
            flagList._stripeRenderer = "";
            flagList.visible = true;
            try 
            {
                flagList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
