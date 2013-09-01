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
    import net.wg.gui.lobby.hangar.maintenance.*;
    
    public dynamic class MaintenanceStatusIndicatorUI extends net.wg.gui.lobby.hangar.maintenance.MaintenanceStatusIndicator
    {
        public function MaintenanceStatusIndicatorUI()
        {
            super();
            addFrameScript(0, this.frame1);
            this.__setProp_divisor_mc_MaintenanceStatusIndicatorUI_divisor_0();
            return;
        }

        internal function __setProp_divisor_mc_MaintenanceStatusIndicatorUI_divisor_0():*
        {
            try 
            {
                divisor_mc["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            divisor_mc.disabled = false;
            divisor_mc.visible = false;
            try 
            {
                divisor_mc["componentInspectorSetting"] = false;
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
    }
}
