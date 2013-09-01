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
    import net.wg.gui.lobby.techtree.controls.*;
    
    public dynamic class LockedItemExperienceLabel extends net.wg.gui.lobby.techtree.controls.ExperienceLabel
    {
        public function LockedItemExperienceLabel()
        {
            super();
            this.__setProp_xpIcon_LockedItemExperienceLabel_icon_0();
            return;
        }

        internal function __setProp_xpIcon_LockedItemExperienceLabel_icon_0():*
        {
            try 
            {
                xpIcon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            xpIcon.enabled = true;
            xpIcon.enableInitCallback = false;
            xpIcon.type = "cost";
            xpIcon.visible = true;
            try 
            {
                xpIcon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
