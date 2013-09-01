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
    import net.wg.gui.components.controls.*;
    
    public dynamic class VoiceWaves extends net.wg.gui.components.controls.VoiceWave
    {
        public function VoiceWaves()
        {
            super();
            addFrameScript(0, this.frame1);
            this.__setProp_mutedClip_VoiceWaves_muted_0();
            return;
        }

        internal function __setProp_mutedClip_VoiceWaves_muted_0():*
        {
            try 
            {
                mutedClip["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            mutedClip.enabled = true;
            mutedClip.enableInitCallback = false;
            mutedClip.visible = false;
            try 
            {
                mutedClip["componentInspectorSetting"] = false;
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
