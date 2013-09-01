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
    import net.wg.gui.messenger.forms.*;
    
    public dynamic class searchChannelFormUI extends net.wg.gui.messenger.forms.ChannelsSearchForm
    {
        public function searchChannelFormUI()
        {
            super();
            this.__setProp_searchResultList_searchChannelFormUI_searchResultList_0();
            this.__setProp_searchLabel_searchChannelFormUI_searchLabel_0();
            this.__setProp_searchNameInput_searchChannelFormUI_searchNameInput_0();
            this.__setProp_searchButton_searchChannelFormUI_searchButton_0();
            this.__setProp_searchResultLabel_searchChannelFormUI_searchResultLabel_0();
            this.__setProp_joinButton_searchChannelFormUI_joinButton_0();
            return;
        }

        internal function __setProp_searchResultList_searchChannelFormUI_searchResultList_0():*
        {
            try 
            {
                searchResultList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            searchResultList.enabled = true;
            searchResultList.enableInitCallback = false;
            searchResultList.focusable = true;
            searchResultList.itemRendererName = "ChannelItemRendererUI";
            searchResultList.itemRendererInstanceName = "";
            searchResultList.margin = 1;
            searchResultList.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":3};
            searchResultList.rowHeight = 20;
            searchResultList.scrollBar = "ScrollBar";
            searchResultList.useRightButton = false;
            searchResultList.useRightButtonForSelect = false;
            searchResultList.visible = true;
            searchResultList.wrapping = "normal";
            try 
            {
                searchResultList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_searchLabel_searchChannelFormUI_searchLabel_0():*
        {
            try 
            {
                searchLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            searchLabel.autoSize = "none";
            searchLabel.enabled = true;
            searchLabel.enableInitCallback = false;
            searchLabel.text = "#messenger:dialogs/searchChannel/labels/search";
            searchLabel.textAlign = "left";
            searchLabel.visible = true;
            try 
            {
                searchLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_searchNameInput_searchChannelFormUI_searchNameInput_0():*
        {
            try 
            {
                searchNameInput["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            searchNameInput.actAsButton = false;
            searchNameInput.defaultText = "";
            searchNameInput.displayAsPassword = false;
            searchNameInput.editable = true;
            searchNameInput.enabled = true;
            searchNameInput.enableInitCallback = false;
            searchNameInput.focusable = true;
            searchNameInput.maxChars = 32;
            searchNameInput.text = "";
            searchNameInput.visible = true;
            try 
            {
                searchNameInput["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_searchButton_searchChannelFormUI_searchButton_0():*
        {
            try 
            {
                searchButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            searchButton.autoRepeat = false;
            searchButton.autoSize = "none";
            searchButton.data = "";
            searchButton.enabled = true;
            searchButton.enableInitCallback = false;
            searchButton.fillPadding = 0;
            searchButton.focusable = true;
            searchButton.label = "#messenger:dialogs/searchChannel/buttons/search";
            searchButton.paddingHorizontal = 5;
            searchButton.selected = false;
            searchButton.soundId = "";
            searchButton.soundType = "normal";
            searchButton.toggle = false;
            searchButton.visible = true;
            try 
            {
                searchButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_searchResultLabel_searchChannelFormUI_searchResultLabel_0():*
        {
            try 
            {
                searchResultLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            searchResultLabel.autoSize = "none";
            searchResultLabel.enabled = true;
            searchResultLabel.enableInitCallback = false;
            searchResultLabel.text = "";
            searchResultLabel.textAlign = "left";
            searchResultLabel.visible = true;
            try 
            {
                searchResultLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_joinButton_searchChannelFormUI_joinButton_0():*
        {
            try 
            {
                joinButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            joinButton.autoRepeat = false;
            joinButton.autoSize = "none";
            joinButton.data = "";
            joinButton.enabled = true;
            joinButton.enableInitCallback = false;
            joinButton.fillPadding = 0;
            joinButton.focusable = true;
            joinButton.label = "#messenger:dialogs/searchChannel/buttons/join";
            joinButton.paddingHorizontal = 5;
            joinButton.selected = false;
            joinButton.soundId = "";
            joinButton.soundType = "normal";
            joinButton.toggle = false;
            joinButton.visible = true;
            try 
            {
                joinButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
