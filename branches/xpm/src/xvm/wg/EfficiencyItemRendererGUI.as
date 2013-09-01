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
    
    public dynamic class EfficiencyItemRendererGUI extends net.wg.gui.lobby.battleResults.EfficiencyRenderer
    {
        public function EfficiencyItemRendererGUI()
        {
            super();
            this.__setProp_damageIcon_efficiencyItemRenderer_controls_0();
            this.__setProp_critsIcon_efficiencyItemRenderer_controls_0();
            this.__setProp_evilIcon_efficiencyItemRenderer_controls_0();
            this.__setProp_spottedIcon_efficiencyItemRenderer_controls_0();
            return;
        }

        internal function __setProp_damageIcon_efficiencyItemRenderer_controls_0():*
        {
            try 
            {
                damageIcon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            damageIcon.enabled = true;
            damageIcon.enableInitCallback = false;
            damageIcon.kind = "damage";
            damageIcon.visible = true;
            try 
            {
                damageIcon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_critsIcon_efficiencyItemRenderer_controls_0():*
        {
            try 
            {
                critsIcon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            critsIcon.enabled = true;
            critsIcon.enableInitCallback = false;
            critsIcon.kind = "crits";
            critsIcon.visible = true;
            try 
            {
                critsIcon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_evilIcon_efficiencyItemRenderer_controls_0():*
        {
            try 
            {
                evilIcon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            evilIcon.enabled = true;
            evilIcon.enableInitCallback = false;
            evilIcon.kind = "assist";
            evilIcon.visible = true;
            try 
            {
                evilIcon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_spottedIcon_efficiencyItemRenderer_controls_0():*
        {
            try 
            {
                spottedIcon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            spottedIcon.enabled = true;
            spottedIcon.enableInitCallback = false;
            spottedIcon.kind = "spotted";
            spottedIcon.visible = true;
            try 
            {
                spottedIcon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
