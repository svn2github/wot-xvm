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
    import net.wg.gui.login.impl.*;
    
    public dynamic class LoginFormUI extends net.wg.gui.login.impl.LoginForm
    {
        public function LoginFormUI()
        {
            super();
            this.__setProp_submit_Login_Form_connect_0();
            this.__setProp_pass_Login_Form_password_0();
            this.__setProp_rememberPwdCheckbox_Login_Form_password_0();
            this.__setProp_server_Login_Form_server_0();
            this.__setProp_registerLink_Login_Form_hyperlinks_0();
            this.__setProp_recoveryLink_Login_Form_hyperlinks_0();
            return;
        }

        internal function __setProp_submit_Login_Form_connect_0():*
        {
            try 
            {
                submit["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            submit.autoRepeat = false;
            submit.autoSize = "none";
            submit.data = "";
            submit.enabled = true;
            submit.enableInitCallback = false;
            submit.focusable = true;
            submit.label = "#menu:login/ok";
            submit.selected = false;
            submit.soundId = "";
            submit.soundType = "normal";
            submit.toggle = false;
            submit.visible = true;
            try 
            {
                submit["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_pass_Login_Form_password_0():*
        {
            try 
            {
                pass["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            pass.actAsButton = false;
            pass.defaultText = "";
            pass.displayAsPassword = true;
            pass.editable = true;
            pass.enabled = true;
            pass.enableInitCallback = false;
            pass.focusable = true;
            pass.maxChars = 0;
            pass.selectionBgColor = 9868935;
            pass.selectionTextColor = 1973787;
            pass.text = "";
            pass.visible = true;
            try 
            {
                pass["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_rememberPwdCheckbox_Login_Form_password_0():*
        {
            try 
            {
                rememberPwdCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            rememberPwdCheckbox.autoSize = "none";
            rememberPwdCheckbox.data = "";
            rememberPwdCheckbox.enabled = true;
            rememberPwdCheckbox.enableInitCallback = false;
            rememberPwdCheckbox.focusable = true;
            rememberPwdCheckbox.label = "#menu:login/rememberPassword";
            rememberPwdCheckbox.selected = false;
            rememberPwdCheckbox.soundId = "";
            rememberPwdCheckbox.soundType = "normal";
            rememberPwdCheckbox.visible = true;
            try 
            {
                rememberPwdCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_server_Login_Form_server_0():*
        {
            try 
            {
                server["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            server.autoSize = "none";
            server.dropdown = "DropdownMenu_ScrollingList";
            server.enabled = true;
            server.enableInitCallback = false;
            server.focusable = true;
            server.itemRenderer = "DropDownListItemRendererSound";
            server.menuDirection = "down";
            server.menuMargin = 3;
            server.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            server.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            server.rowCount = 10;
            server.menuRowsFixed = false;
            server.menuWidth = -1;
            server.menuWrapping = "normal";
            server.scrollBar = "ScrollBar";
            server.showEmptyItems = true;
            server.soundId = "";
            server.soundType = "";
            server.inspectableThumbOffset = {"top":0, "bottom":0};
            server.visible = true;
            try 
            {
                server["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_registerLink_Login_Form_hyperlinks_0():*
        {
            try 
            {
                registerLink["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            registerLink.autoRepeat = false;
            registerLink.autoSize = "left";
            registerLink.data = "";
            registerLink.enabled = true;
            registerLink.enableInitCallback = false;
            registerLink.focusable = true;
            registerLink.isUnderline = true;
            registerLink.label = "#menu:login/registrationLink";
            registerLink.selected = false;
            registerLink.toggle = false;
            registerLink.visible = true;
            try 
            {
                registerLink["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_recoveryLink_Login_Form_hyperlinks_0():*
        {
            try 
            {
                recoveryLink["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            recoveryLink.autoRepeat = false;
            recoveryLink.autoSize = "left";
            recoveryLink.data = "";
            recoveryLink.enabled = true;
            recoveryLink.enableInitCallback = false;
            recoveryLink.focusable = true;
            recoveryLink.isUnderline = true;
            recoveryLink.label = "#menu:login/recoveryLink";
            recoveryLink.selected = false;
            recoveryLink.toggle = false;
            recoveryLink.visible = true;
            try 
            {
                recoveryLink["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
