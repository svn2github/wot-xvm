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
    import net.wg.gui.messenger.windows.*;
    
    public dynamic class FAQWindowUI extends net.wg.gui.messenger.windows.FAQWindow
    {
        public function FAQWindowUI()
        {
            super();
            this.__setProp_textArea_FAQWindow_textArea_0();
            this.__setProp_closeButton_FAQWindow_closeButton_0();
            return;
        }

        internal function __setProp_textArea_FAQWindow_textArea_0():*
        {
            try 
            {
                textArea["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            textArea.actAsButton = false;
            textArea.autoScroll = false;
            textArea.defaultText = "";
            textArea.displayAsPassword = false;
            textArea.editable = false;
            textArea.enabled = true;
            textArea.enableInitCallback = false;
            textArea.focusable = true;
            textArea.maxChars = 0;
            textArea.minThumbSize = 10;
            textArea.scrollBar = "scrollBar";
            textArea.selectable = true;
            textArea.showBgForm = false;
            textArea.text = "";
            textArea.thumbOffset = {"top":0, "bottom":0};
            textArea.visible = true;
            try 
            {
                textArea["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_closeButton_FAQWindow_closeButton_0():*
        {
            try 
            {
                closeButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            closeButton.autoRepeat = false;
            closeButton.autoSize = "none";
            closeButton.data = "";
            closeButton.enabled = true;
            closeButton.enableInitCallback = false;
            closeButton.fillPadding = 0;
            closeButton.focusable = true;
            closeButton.label = "#messenger:lobby/faq/close";
            closeButton.paddingHorizontal = 5;
            closeButton.selected = false;
            closeButton.soundId = "";
            closeButton.soundType = "normal";
            closeButton.toggle = false;
            closeButton.visible = true;
            try 
            {
                closeButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
