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
    import net.wg.gui.lobby.premiumForm.*;
    
    public dynamic class premiumFormUI extends net.wg.gui.lobby.premiumForm.PremiumForm
    {
        public function premiumFormUI()
        {
            super();
            this.__setProp_scrollingList_premiumFormUI_scrollingList_0();
            this.__setProp_closeButton_premiumFormUI_closeButton_0();
            this.__setProp_applyButton_premiumFormUI_applyButton_0();
            return;
        }

        internal function __setProp_scrollingList_premiumFormUI_scrollingList_0():*
        {
            try 
            {
                scrollingList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            scrollingList.enabled = true;
            scrollingList.enableInitCallback = false;
            scrollingList.focusable = true;
            scrollingList.itemRendererName = "PremiumFormItemRendererUI";
            scrollingList.itemRendererInstanceName = "";
            scrollingList.margin = 0;
            scrollingList.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":-5};
            scrollingList.rowHeight = 23;
            scrollingList.scrollBar = "";
            scrollingList.useRightButton = false;
            scrollingList.useRightButtonForSelect = false;
            scrollingList.visible = true;
            scrollingList.wrapping = "normal";
            try 
            {
                scrollingList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_closeButton_premiumFormUI_closeButton_0():*
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
            closeButton.label = "#menu:premium/cancel";
            closeButton.paddingHorizontal = 5;
            closeButton.selected = false;
            closeButton.soundId = "";
            closeButton.soundType = "cancelButton";
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

        internal function __setProp_applyButton_premiumFormUI_applyButton_0():*
        {
            try 
            {
                applyButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            applyButton.autoRepeat = false;
            applyButton.autoSize = "none";
            applyButton.data = "";
            applyButton.enabled = true;
            applyButton.enableInitCallback = false;
            applyButton.fillPadding = 0;
            applyButton.focusable = true;
            applyButton.label = "#dialogs:premiumBuyConfirmation/submit";
            applyButton.paddingHorizontal = 5;
            applyButton.selected = false;
            applyButton.soundId = "";
            applyButton.soundType = "normal";
            applyButton.toggle = false;
            applyButton.visible = true;
            try 
            {
                applyButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
