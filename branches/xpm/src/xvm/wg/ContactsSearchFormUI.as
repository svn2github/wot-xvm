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
    
    public dynamic class ContactsSearchFormUI extends net.wg.gui.messenger.forms.ContactsSearchForm
    {
        public function ContactsSearchFormUI()
        {
            super();
            this.__setProp_titleLabel_ContactsSearchForm_titleLabel_0();
            this.__setProp_textInput_ContactsSearchForm_textInput_0();
            this.__setProp_searchButton_ContactsSearchForm_searchButton_0();
            this.__setProp_addToFriendsButton_ContactsSearchForm_addToFriendsButton_0();
            this.__setProp_addToIgnoredButton_ContactsSearchForm_addToIgnoredButton_0();
            this.__setProp_list_ContactsSearchForm_list_0();
            return;
        }

        internal function __setProp_titleLabel_ContactsSearchForm_titleLabel_0():*
        {
            var loc1:*;
            try 
            {
                titleLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            titleLabel.autoSize = "none";
            titleLabel.enabled = true;
            titleLabel.enableInitCallback = false;
            titleLabel.text = "#messenger:dialogs/searchContact/labels/search";
            titleLabel.textAlign = "none";
            titleLabel.visible = true;
            try 
            {
                titleLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_textInput_ContactsSearchForm_textInput_0():*
        {
            var loc1:*;
            try 
            {
                textInput["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            textInput.actAsButton = false;
            textInput.defaultText = "";
            textInput.displayAsPassword = false;
            textInput.editable = true;
            textInput.enabled = true;
            textInput.enableInitCallback = false;
            textInput.focusable = true;
            textInput.maxChars = 32;
            textInput.text = "";
            textInput.visible = true;
            try 
            {
                textInput["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_searchButton_ContactsSearchForm_searchButton_0():*
        {
            var loc1:*;
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
            searchButton.label = "#messenger:dialogs/searchContact/buttons/search";
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

        internal function __setProp_addToFriendsButton_ContactsSearchForm_addToFriendsButton_0():*
        {
            var loc1:*;
            try 
            {
                addToFriendsButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            addToFriendsButton.autoRepeat = false;
            addToFriendsButton.autoSize = "none";
            addToFriendsButton.data = "";
            addToFriendsButton.enabled = true;
            addToFriendsButton.enableInitCallback = false;
            addToFriendsButton.fillPadding = 0;
            addToFriendsButton.focusable = true;
            addToFriendsButton.label = "#messenger:dialogs/searchContact/buttons/addToFriends";
            addToFriendsButton.paddingHorizontal = 5;
            addToFriendsButton.selected = false;
            addToFriendsButton.soundId = "";
            addToFriendsButton.soundType = "normal";
            addToFriendsButton.toggle = false;
            addToFriendsButton.visible = true;
            try 
            {
                addToFriendsButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_addToIgnoredButton_ContactsSearchForm_addToIgnoredButton_0():*
        {
            var loc1:*;
            try 
            {
                addToIgnoredButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            addToIgnoredButton.autoRepeat = false;
            addToIgnoredButton.autoSize = "none";
            addToIgnoredButton.data = "";
            addToIgnoredButton.enabled = true;
            addToIgnoredButton.enableInitCallback = false;
            addToIgnoredButton.fillPadding = 0;
            addToIgnoredButton.focusable = true;
            addToIgnoredButton.label = "#messenger:dialogs/searchContact/buttons/addToIgnored";
            addToIgnoredButton.paddingHorizontal = 5;
            addToIgnoredButton.selected = false;
            addToIgnoredButton.soundId = "";
            addToIgnoredButton.soundType = "normal";
            addToIgnoredButton.toggle = false;
            addToIgnoredButton.visible = true;
            try 
            {
                addToIgnoredButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_list_ContactsSearchForm_list_0():*
        {
            var loc1:*;
            try 
            {
                list["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            list.enabled = true;
            list.enableInitCallback = false;
            list.focusable = true;
            list.itemRendererName = "UserRosterItemRendererUI";
            list.itemRendererInstanceName = "";
            list.margin = 3;
            list.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            list.rowHeight = 0;
            list.scrollBar = "ScrollBar";
            list.useRightButton = true;
            list.useRightButtonForSelect = true;
            list.visible = true;
            list.wrapping = "normal";
            try 
            {
                list["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
