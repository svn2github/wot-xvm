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
    import net.wg.gui.lobby.header.*;
    
    public dynamic class LobbyHeader extends net.wg.gui.lobby.header.LobbyHeader
    {
        public function LobbyHeader()
        {
            super();
            this.__setProp_MenuButton_Header_stats_0();
            return;
        }

        internal function __setProp_MenuButton_Header_stats_0():*
        {
            var loc1:*;
            try 
            {
                MenuButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            MenuButton.autoRepeat = false;
            MenuButton.autoSize = "none";
            MenuButton.caps = true;
            MenuButton.data = "";
            MenuButton.enabled = true;
            MenuButton.enableInitCallback = false;
            MenuButton.fillPadding = 0;
            MenuButton.focusable = true;
            MenuButton.helpConnectorLength = 12;
            MenuButton.helpDirection = "B";
            MenuButton.helpText = "#lobby_help:header/settings-button";
            MenuButton.iconOffsetLeft = 0;
            MenuButton.iconOffsetTop = 0;
            MenuButton.iconSource = "settings.png";
            MenuButton.label = "#menu:headerButtons/menu";
            MenuButton.paddingHorizontal = 5;
            MenuButton.selected = false;
            MenuButton.soundId = "mainMenuBtn";
            MenuButton.soundType = "iconTextButton";
            MenuButton.toggle = false;
            MenuButton.tooltip = "";
            MenuButton.visible = true;
            try 
            {
                MenuButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
