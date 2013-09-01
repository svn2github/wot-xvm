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
    
    public dynamic class FightButton extends net.wg.gui.lobby.header.FightButton
    {
        public function FightButton()
        {
            super();
            this.__setProp_button_FightButton_button_0();
            this.__setProp_buttondropdown_FightButton_buttondropdown_0();
            return;
        }

        internal function __setProp_button_FightButton_button_0():*
        {
            var loc1:*;
            try 
            {
                button["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            button.autoRepeat = false;
            button.autoSize = "none";
            button.data = "";
            button.enabled = true;
            button.enableInitCallback = false;
            button.focusable = true;
            button.label = "";
            button.selected = false;
            button.soundId = "fightBtn";
            button.soundType = "redButton";
            button.toggle = false;
            button.visible = true;
            try 
            {
                button["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_buttondropdown_FightButton_buttondropdown_0():*
        {
            var loc1:*;
            try 
            {
                buttondropdown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            buttondropdown.autoSize = "none";
            buttondropdown.dropdown = "RedButtonDropDown_ScrollingList";
            buttondropdown.enabled = false;
            buttondropdown.enableInitCallback = false;
            buttondropdown.focusable = true;
            buttondropdown.itemRenderer = "RedButtonDropDown_ListItemRenderer";
            buttondropdown.menuDirection = "down";
            buttondropdown.menuMargin = 1;
            buttondropdown.inspectableMenuOffset = {"top":-42, "right":0, "bottom":0, "left":25};
            buttondropdown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            buttondropdown.menuRowCount = 5;
            buttondropdown.menuRowsFixed = false;
            buttondropdown.menuWidth = 168;
            buttondropdown.menuWrapping = "normal";
            buttondropdown.scrollBar = "";
            buttondropdown.showEmptyItems = true;
            buttondropdown.soundId = "";
            buttondropdown.soundType = "";
            buttondropdown.inspectableThumbOffset = {"top":0, "bottom":0};
            buttondropdown.visible = false;
            try 
            {
                buttondropdown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
