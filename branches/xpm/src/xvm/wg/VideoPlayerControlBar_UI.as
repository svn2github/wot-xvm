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
    import net.wg.gui.components.common.video.advanced.*;
    
    public dynamic class VideoPlayerControlBar_UI extends net.wg.gui.components.common.video.advanced.VideoPlayerControlBar
    {
        public function VideoPlayerControlBar_UI()
        {
            super();
            this.__setProp_soundSlider_VideoPlayerControlBar_UI_sound_0();
            this.__setProp_playButton_VideoPlayerControlBar_UI_play();
            return;
        }

        internal function __setProp_soundSlider_VideoPlayerControlBar_UI_sound_0():*
        {
            try 
            {
                soundSlider["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            soundSlider.enableInitCallback = false;
            soundSlider.focusable = true;
            soundSlider.liveDragging = true;
            soundSlider.maximum = 1;
            soundSlider.minimum = 0;
            soundSlider.snapInterval = 0.01;
            soundSlider.snapping = false;
            soundSlider.undefinedDisabled = false;
            soundSlider.value = 0;
            soundSlider.visible = true;
            try 
            {
                soundSlider["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_playButton_VideoPlayerControlBar_UI_play():*
        {
            try 
            {
                playButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            playButton.autoRepeat = false;
            playButton.autoSize = "none";
            playButton.data = "";
            playButton.enabled = true;
            playButton.enableInitCallback = false;
            playButton.fillPadding = 0;
            playButton.focusable = true;
            playButton.helpConnectorLength = 12;
            playButton.helpDirection = "T";
            playButton.helpText = "";
            playButton.label = "";
            playButton.paddingHorizontal = 5;
            playButton.selected = false;
            playButton.soundId = "";
            playButton.soundType = "normal";
            playButton.toggle = true;
            playButton.tooltip = "";
            playButton.visible = true;
            try 
            {
                playButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
