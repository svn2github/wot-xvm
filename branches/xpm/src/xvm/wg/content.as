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
    import net.wg.gui.lobby.menu.*;
    
    public dynamic class content extends net.wg.gui.lobby.menu.LobbyMenuForm
    {
        public function content()
        {
            super();
            this.__setProp_logoffBtn_content_btns_0();
            this.__setProp_settingsBtn_content_btns_0();
            this.__setProp_quitBtn_content_btns_0();
            this.__setProp_cancelBtn_content_btns_0();
            return;
        }

        internal function __setProp_logoffBtn_content_btns_0():*
        {
            try 
            {
                logoffBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            logoffBtn.autoRepeat = false;
            logoffBtn.autoSize = "none";
            logoffBtn.data = "";
            logoffBtn.enabled = true;
            logoffBtn.enableInitCallback = false;
            logoffBtn.fillPadding = 0;
            logoffBtn.focusable = true;
            logoffBtn.label = "#menu:lobby_menu/buttons/logoff";
            logoffBtn.paddingHorizontal = 5;
            logoffBtn.selected = false;
            logoffBtn.soundId = "";
            logoffBtn.soundType = "normal";
            logoffBtn.toggle = false;
            logoffBtn.tooltip = "";
            logoffBtn.visible = true;
            try 
            {
                logoffBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_settingsBtn_content_btns_0():*
        {
            try 
            {
                settingsBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            settingsBtn.autoRepeat = false;
            settingsBtn.autoSize = "none";
            settingsBtn.data = "";
            settingsBtn.enabled = true;
            settingsBtn.enableInitCallback = false;
            settingsBtn.fillPadding = 0;
            settingsBtn.focusable = true;
            settingsBtn.label = "#menu:lobby_menu/buttons/settings";
            settingsBtn.paddingHorizontal = 5;
            settingsBtn.selected = false;
            settingsBtn.soundId = "";
            settingsBtn.soundType = "normal";
            settingsBtn.toggle = false;
            settingsBtn.tooltip = "";
            settingsBtn.visible = true;
            try 
            {
                settingsBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_quitBtn_content_btns_0():*
        {
            try 
            {
                quitBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            quitBtn.autoRepeat = false;
            quitBtn.autoSize = "none";
            quitBtn.data = "";
            quitBtn.enabled = true;
            quitBtn.enableInitCallback = false;
            quitBtn.fillPadding = 0;
            quitBtn.focusable = true;
            quitBtn.label = "#menu:lobby_menu/buttons/exit";
            quitBtn.paddingHorizontal = 5;
            quitBtn.selected = false;
            quitBtn.soundId = "";
            quitBtn.soundType = "normal";
            quitBtn.toggle = false;
            quitBtn.tooltip = "";
            quitBtn.visible = true;
            try 
            {
                quitBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_cancelBtn_content_btns_0():*
        {
            try 
            {
                cancelBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            cancelBtn.autoRepeat = false;
            cancelBtn.autoSize = "none";
            cancelBtn.data = "";
            cancelBtn.enabled = true;
            cancelBtn.enableInitCallback = false;
            cancelBtn.fillPadding = 0;
            cancelBtn.focusable = true;
            cancelBtn.label = "#menu:lobby_menu/buttons/back";
            cancelBtn.paddingHorizontal = 5;
            cancelBtn.selected = false;
            cancelBtn.soundId = "";
            cancelBtn.soundType = "normal";
            cancelBtn.toggle = false;
            cancelBtn.tooltip = "";
            cancelBtn.visible = true;
            try 
            {
                cancelBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
