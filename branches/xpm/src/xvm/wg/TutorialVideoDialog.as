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
    import net.wg.gui.tutorial.windows.*;
    
    public dynamic class TutorialVideoDialog extends net.wg.gui.tutorial.windows.TutorialVideoDialog
    {
        public function TutorialVideoDialog()
        {
            super();
            this.__setProp_videoPlayer_TutorialVideoDialog_videoPlayer_0();
            return;
        }

        internal function __setProp_videoPlayer_TutorialVideoDialog_videoPlayer_0():*
        {
            try 
            {
                videoPlayer["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            videoPlayer.animationSpeed = 500;
            videoPlayer.audioTrack = 0;
            videoPlayer.enabled = true;
            videoPlayer.enableInitCallback = false;
            videoPlayer.hideDelay = 3000;
            videoPlayer.progressBarClassName = "";
            videoPlayer.source = "";
            videoPlayer.subtitleTrack = 0;
            videoPlayer.visible = true;
            try 
            {
                videoPlayer["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
