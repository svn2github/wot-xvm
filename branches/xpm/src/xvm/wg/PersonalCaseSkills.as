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
    import net.wg.gui.lobby.tankman.*;
    
    public dynamic class PersonalCaseSkills extends net.wg.gui.lobby.tankman.PersonalCaseSkills
    {
        public function PersonalCaseSkills()
        {
            super();
            this.__setProp_modifiers_PersonalCaseSkills_Layer1_0();
            this.__setProp_selectBtn_PersonalCaseSkills_Layer6_0();
            return;
        }

        internal function __setProp_modifiers_PersonalCaseSkills_Layer1_0():*
        {
            try 
            {
                modifiers["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            modifiers.enabled = true;
            modifiers.enableInitCallback = false;
            modifiers.focusable = true;
            modifiers.itemRendererName = "pc_SkillsItemRendererUI";
            modifiers.itemRendererInstanceName = "";
            modifiers.margin = 0;
            modifiers.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            modifiers.rowHeight = 58;
            modifiers.scrollBar = "scrollBar";
            modifiers.useRightButton = false;
            modifiers.useRightButtonForSelect = false;
            modifiers.visible = true;
            modifiers.wrapping = "normal";
            try 
            {
                modifiers["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_selectBtn_PersonalCaseSkills_Layer6_0():*
        {
            try 
            {
                selectBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            selectBtn.autoRepeat = false;
            selectBtn.autoSize = "none";
            selectBtn.data = "";
            selectBtn.enabled = true;
            selectBtn.enableInitCallback = false;
            selectBtn.fillPadding = 0;
            selectBtn.focusable = true;
            selectBtn.label = "#dialogs:addSkillWindow/submit";
            selectBtn.paddingHorizontal = 5;
            selectBtn.selected = false;
            selectBtn.soundId = "";
            selectBtn.soundType = "normal";
            selectBtn.toggle = false;
            selectBtn.visible = true;
            try 
            {
                selectBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
