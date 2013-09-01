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
    import net.wg.gui.components.common.*;
    
    public dynamic class VehicleMarkerAlly extends net.wg.gui.components.common.VehicleMarkerAlly
    {
        public function VehicleMarkerAlly()
        {
            super();
            addFrameScript(0, this.frame1, 1, this.frame2, 2, this.frame3, 3, this.frame4);
            this.__setProp_actionMarker_VehicleMarkerAlly_actionmarker_0();
            this.__setProp_iconLoader_VehicleMarkerAlly_iconloader_0();
            return;
        }

        internal function __setProp_actionMarker_VehicleMarkerAlly_actionmarker_0():*
        {
            try 
            {
                actionMarker["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            actionMarker.actionRenderers = {"attack":"", "attackSPG":"", "reloading_gun":"Reloading", "reloading_gunSPG":"Reloading", "help_me":"HelpMe", "help_meSPG":"HelpMe", "follow_me":"FollowMe", "follow_meSPG":"FollowMe", "attackSender":"AttackSender", "attackSenderSPG":"AttackSenderSPG", "reloading_gun":"Reloading", "reloading_gunSPG":"Reloading", "negative":"Negative", "negativeSPG":"Negative", "positive":"Positive", "positiveSPG":"Positive", "stop":"Stop", "stopSPG":"Stop", "help_me_ex":"HelpMeEx", "help_me_exSPG":"HelpMeEx", "turn_back":"TurnBack", "turn_backSPG":"TurnBack"};
            actionMarker.enabled = true;
            actionMarker.enableInitCallback = false;
            actionMarker.visible = true;
            try 
            {
                actionMarker["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_iconLoader_VehicleMarkerAlly_iconloader_0():*
        {
            try 
            {
                iconLoader["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            iconLoader.autoSize = false;
            iconLoader.enableInitCallback = false;
            iconLoader.maintainAspectRatio = false;
            iconLoader.source = "";
            iconLoader.sourceAlt = "";
            iconLoader.visible = true;
            try 
            {
                iconLoader["componentInspectorSetting"] = false;
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

        internal function frame2():*
        {
            stop();
            return;
        }

        internal function frame3():*
        {
            stop();
            return;
        }

        internal function frame4():*
        {
            stop();
            return;
        }
    }
}
