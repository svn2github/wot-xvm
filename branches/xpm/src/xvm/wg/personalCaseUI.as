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
    
    public dynamic class personalCaseUI extends net.wg.gui.lobby.tankman.PersonalCase
    {
        public function personalCaseUI()
        {
            super();
            this.__setProp_closeBtn_personalCaseUI_Layer1_0();
            this.__setProp_unloadBtn_personalCaseUI_Layer1_0();
            this.__setProp_dismissBtn_personalCaseUI_Layer1_0();
            this.__setProp_tabButtonVisibleFalse_personalCaseUI_Layer1_0();
            this.__setProp_icon1_personalCaseUI_Layer1_0();
            this.__setProp_accTeachingOfSkillBtn_personalCaseUI_Layer1_0();
            this.__setProp_contourIcon_personalCaseUI_Layer1_0();
            this.__setProp_skillsBtn_personalCaseUI_Layer1_0();
            this.__setProp_dropSkillsButton_personalCaseUI_Layer1_0();
            this.__setProp_tabs_personalCaseUI_Layer1_0();
            this.__setProp_view_personalCaseUI_Layer1_0();
            this.__setProp_skills_mc_personalCaseUI_Layer1_0();
            this.__setProp_rankIcon_personalCaseUI_Layer1_0();
            return;
        }

        internal function __setProp_closeBtn_personalCaseUI_Layer1_0():*
        {
            try 
            {
                closeBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            closeBtn.autoRepeat = false;
            closeBtn.autoSize = "none";
            closeBtn.data = "";
            closeBtn.enabled = true;
            closeBtn.enableInitCallback = false;
            closeBtn.fillPadding = 0;
            closeBtn.focusable = true;
            closeBtn.label = "";
            closeBtn.paddingHorizontal = 5;
            closeBtn.selected = false;
            closeBtn.soundId = "";
            closeBtn.soundType = "cancelButton";
            closeBtn.toggle = false;
            closeBtn.visible = true;
            try 
            {
                closeBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_unloadBtn_personalCaseUI_Layer1_0():*
        {
            try 
            {
                unloadBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            unloadBtn.autoRepeat = false;
            unloadBtn.autoSize = "none";
            unloadBtn.data = "";
            unloadBtn.enabled = true;
            unloadBtn.enableInitCallback = false;
            unloadBtn.fillPadding = 0;
            unloadBtn.focusable = true;
            unloadBtn.label = "";
            unloadBtn.paddingHorizontal = 5;
            unloadBtn.selected = false;
            unloadBtn.soundId = "btnUnload";
            unloadBtn.soundType = "normal";
            unloadBtn.toggle = false;
            unloadBtn.visible = true;
            try 
            {
                unloadBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_dismissBtn_personalCaseUI_Layer1_0():*
        {
            try 
            {
                dismissBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            dismissBtn.autoRepeat = false;
            dismissBtn.autoSize = "none";
            dismissBtn.data = "";
            dismissBtn.enabled = true;
            dismissBtn.enableInitCallback = false;
            dismissBtn.fillPadding = 0;
            dismissBtn.focusable = true;
            dismissBtn.label = "";
            dismissBtn.paddingHorizontal = 5;
            dismissBtn.selected = false;
            dismissBtn.soundId = "dismissBtn";
            dismissBtn.soundType = "normal";
            dismissBtn.toggle = false;
            dismissBtn.visible = true;
            try 
            {
                dismissBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_tabButtonVisibleFalse_personalCaseUI_Layer1_0():*
        {
            try 
            {
                tabButtonVisibleFalse["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tabButtonVisibleFalse.autoRepeat = false;
            tabButtonVisibleFalse.autoSize = "none";
            tabButtonVisibleFalse.data = "";
            tabButtonVisibleFalse.enabled = true;
            tabButtonVisibleFalse.enableInitCallback = false;
            tabButtonVisibleFalse.fillPadding = 0;
            tabButtonVisibleFalse.focusable = true;
            tabButtonVisibleFalse.label = "";
            tabButtonVisibleFalse.paddingHorizontal = 5;
            tabButtonVisibleFalse.selected = false;
            tabButtonVisibleFalse.soundId = "";
            tabButtonVisibleFalse.soundType = "tab";
            tabButtonVisibleFalse.toggle = false;
            tabButtonVisibleFalse.tooltip = "";
            tabButtonVisibleFalse.visible = true;
            try 
            {
                tabButtonVisibleFalse["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_icon1_personalCaseUI_Layer1_0():*
        {
            try 
            {
                icon1["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            icon1.autoSize = false;
            icon1.enableInitCallback = false;
            icon1.maintainAspectRatio = true;
            icon1.source = "";
            icon1.sourceAlt = "";
            icon1.visible = true;
            try 
            {
                icon1["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_accTeachingOfSkillBtn_personalCaseUI_Layer1_0():*
        {
            try 
            {
                accTeachingOfSkillBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            accTeachingOfSkillBtn.autoRepeat = false;
            accTeachingOfSkillBtn.autoSize = "none";
            accTeachingOfSkillBtn.data = "";
            accTeachingOfSkillBtn.enabled = true;
            accTeachingOfSkillBtn.enableInitCallback = false;
            accTeachingOfSkillBtn.fillPadding = 0;
            accTeachingOfSkillBtn.focusable = true;
            accTeachingOfSkillBtn.label = "#menu:tankmanPersonalCase/accelerateTeachingOfSkill";
            accTeachingOfSkillBtn.paddingHorizontal = 5;
            accTeachingOfSkillBtn.selected = false;
            accTeachingOfSkillBtn.soundId = "dismissBtn";
            accTeachingOfSkillBtn.soundType = "normal";
            accTeachingOfSkillBtn.toggle = false;
            accTeachingOfSkillBtn.visible = true;
            try 
            {
                accTeachingOfSkillBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_contourIcon_personalCaseUI_Layer1_0():*
        {
            try 
            {
                contourIcon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            contourIcon.autoSize = false;
            contourIcon.enableInitCallback = false;
            contourIcon.maintainAspectRatio = true;
            contourIcon.source = "";
            contourIcon.sourceAlt = "";
            contourIcon.visible = true;
            try 
            {
                contourIcon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_skillsBtn_personalCaseUI_Layer1_0():*
        {
            try 
            {
                skillsBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            skillsBtn.autoRepeat = false;
            skillsBtn.autoSize = "none";
            skillsBtn.data = "";
            skillsBtn.enabled = true;
            skillsBtn.enableInitCallback = false;
            skillsBtn.focusable = true;
            skillsBtn.label = "";
            skillsBtn.selected = false;
            skillsBtn.soundId = "skillsBtn";
            skillsBtn.soundType = "normal";
            skillsBtn.toggle = false;
            skillsBtn.visible = true;
            try 
            {
                skillsBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_dropSkillsButton_personalCaseUI_Layer1_0():*
        {
            try 
            {
                dropSkillsButton["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            dropSkillsButton.autoRepeat = false;
            dropSkillsButton.autoSize = "none";
            dropSkillsButton.caps = true;
            dropSkillsButton.data = "";
            dropSkillsButton.enabled = true;
            dropSkillsButton.enableInitCallback = false;
            dropSkillsButton.fillPadding = 0;
            dropSkillsButton.focusable = true;
            dropSkillsButton.helpConnectorLength = 12;
            dropSkillsButton.helpDirection = "T";
            dropSkillsButton.helpText = "1.00";
            dropSkillsButton.iconOffsetLeft = 1;
            dropSkillsButton.iconOffsetTop = 0;
            dropSkillsButton.iconSource = "tankman_skills_drop.png";
            dropSkillsButton.label = "#menu:tankmanPersonalCase/dropSkillsButtonLabel";
            dropSkillsButton.paddingHorizontal = 5;
            dropSkillsButton.selected = false;
            dropSkillsButton.soundId = "dropSkillsButton";
            dropSkillsButton.soundType = "iconTextButton";
            dropSkillsButton.toggle = false;
            dropSkillsButton.tooltip = "";
            dropSkillsButton.visible = true;
            try 
            {
                dropSkillsButton["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_tabs_personalCaseUI_Layer1_0():*
        {
            try 
            {
                tabs["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tabs.autoSize = "left";
            tabs.buttonWidth = 100;
            tabs.direction = "horizontal";
            tabs.enabled = true;
            tabs.enableInitCallback = false;
            tabs.focusable = true;
            tabs.itemRendererName = "TabButton";
            tabs.paddingHorizontal = 10;
            tabs.spacing = 0;
            tabs.visible = true;
            try 
            {
                tabs["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_view_personalCaseUI_Layer1_0():*
        {
            try 
            {
                view["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            view.cache = true;
            view.visible = true;
            try 
            {
                view["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_skills_mc_personalCaseUI_Layer1_0():*
        {
            try 
            {
                skills_mc["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            skills_mc.carouselType = "horizontal";
            skills_mc.countVisibleSlots = 5;
            skills_mc.enabled = true;
            skills_mc.enableInitCallback = false;
            skills_mc.focusable = true;
            skills_mc.itemRendererName = "SkillsItemRendererUI";
            skills_mc.itemRendererInstanceName = "";
            skills_mc.margin = 3;
            skills_mc.offsetArrowHeight = -6;
            skills_mc.padding = {"top":0, "right":2, "bottom":0, "left":2};
            skills_mc.slotImageHeight = 60;
            skills_mc.slotImageWidth = 60;
            skills_mc.useShadow = false;
            skills_mc.visible = false;
            try 
            {
                skills_mc["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_rankIcon_personalCaseUI_Layer1_0():*
        {
            try 
            {
                rankIcon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            rankIcon.autoSize = false;
            rankIcon.enableInitCallback = false;
            rankIcon.maintainAspectRatio = true;
            rankIcon.source = "";
            rankIcon.sourceAlt = "";
            rankIcon.visible = true;
            try 
            {
                rankIcon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
