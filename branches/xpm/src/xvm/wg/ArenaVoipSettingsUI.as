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
    import net.wg.gui.lobby.training.*;
    
    public dynamic class ArenaVoipSettingsUI extends net.wg.gui.lobby.training.ArenaVoipSettings
    {
        public function ArenaVoipSettingsUI()
        {
            super();
            this.__setProp_voiceChatDD_arenaVoipSettings_ddm_0();
            this.__setProp_textField_arenaVoipSettings_label_0();
            return;
        }

        internal function __setProp_voiceChatDD_arenaVoipSettings_ddm_0():*
        {
            try 
            {
                voiceChatDD["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            voiceChatDD.autoSize = "none";
            voiceChatDD.dropdown = "DropdownMenu_ScrollingList";
            voiceChatDD.enabled = true;
            voiceChatDD.enableInitCallback = false;
            voiceChatDD.focusable = true;
            voiceChatDD.itemRenderer = "DropDownListItemRendererSound";
            voiceChatDD.menuDirection = "down";
            voiceChatDD.menuMargin = 1;
            voiceChatDD.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            voiceChatDD.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            voiceChatDD.rowCount = 6;
            voiceChatDD.menuRowsFixed = false;
            voiceChatDD.menuWidth = -1;
            voiceChatDD.menuWrapping = "normal";
            voiceChatDD.scrollBar = "";
            voiceChatDD.showEmptyItems = false;
            voiceChatDD.soundId = "";
            voiceChatDD.soundType = "";
            voiceChatDD.inspectableThumbOffset = {"top":0, "bottom":0};
            voiceChatDD.visible = true;
            try 
            {
                voiceChatDD["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_textField_arenaVoipSettings_label_0():*
        {
            try 
            {
                textField["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            textField.enabled = true;
            textField.label = "";
            textField.shadowColor = "Black";
            textField.textAlign = "left";
            textField.textColor = 16777215;
            textField.textFont = "$FieldFont";
            textField.textSize = 14;
            textField.useHtml = false;
            textField.visible = true;
            try 
            {
                textField["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
