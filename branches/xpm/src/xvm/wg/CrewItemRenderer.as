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
    import net.wg.gui.lobby.hangar.crew.*;
    
    public dynamic class CrewItemRenderer extends net.wg.gui.lobby.hangar.crew.CrewItemRenderer
    {
        public function CrewItemRenderer()
        {
            super();
            addFrameScript(9, this.frame10, 19, this.frame20, 29, this.frame30, 39, this.frame40, 49, this.frame50, 59, this.frame60, 69, this.frame70, 79, this.frame80, 89, this.frame90, 99, this.frame100, 109, this.frame110, 119, this.frame120, 129, this.frame130, 139, this.frame140);
            this.__setProp_speed_xp_bg_CrewItemRenderer_speedxpbg_0();
            this.__setProp_icon_CrewItemRenderer_portrait_0();
            this.__setProp_roles_CrewItemRenderer_roles_0();
            this.__setProp_skills_CrewItemRenderer_skillslist_0();
            return;
        }

        internal function __setProp_speed_xp_bg_CrewItemRenderer_speedxpbg_0():*
        {
            try 
            {
                speed_xp_bg["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            speed_xp_bg.enabled = true;
            speed_xp_bg.enableInitCallback = false;
            speed_xp_bg.visible = false;
            try 
            {
                speed_xp_bg["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_icon_CrewItemRenderer_portrait_0():*
        {
            try 
            {
                icon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            icon.autoSize = false;
            icon.enableInitCallback = false;
            icon.maintainAspectRatio = true;
            icon.source = "";
            icon.sourceAlt = "";
            icon.visible = true;
            try 
            {
                icon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_roles_CrewItemRenderer_roles_0():*
        {
            try 
            {
                roles["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            roles.columnWidth = 13;
            roles.direction = "horizontal";
            roles.enabled = true;
            roles.enableInitCallback = false;
            roles.externalColumnCount = 0;
            roles.focusable = true;
            roles.itemRendererName = "RoleItemRenderer";
            roles.itemRendererInstanceName = "";
            roles.margin = 0;
            roles.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            roles.paddingBottom = 0;
            roles.paddingRight = 0;
            roles.rowHeight = 13;
            roles.scrollBar = "";
            roles.showEmptyItems = false;
            roles.visible = true;
            roles.wrapping = "normal";
            try 
            {
                roles["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_skills_CrewItemRenderer_skillslist_0():*
        {
            try 
            {
                skills["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            skills.columnWidth = 14;
            skills.direction = "horizontal";
            skills.enabled = true;
            skills.enableInitCallback = false;
            skills.externalColumnCount = 0;
            skills.focusable = true;
            skills.itemRendererName = "SkillItemRenderer";
            skills.itemRendererInstanceName = "";
            skills.margin = 0;
            skills.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":0};
            skills.paddingBottom = 0;
            skills.paddingRight = 1;
            skills.rowHeight = 14;
            skills.scrollBar = "";
            skills.showEmptyItems = false;
            skills.visible = true;
            skills.wrapping = "normal";
            try 
            {
                skills["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function frame10():*
        {
            stop();
            return;
        }

        internal function frame20():*
        {
            stop();
            return;
        }

        internal function frame30():*
        {
            stop();
            return;
        }

        internal function frame40():*
        {
            stop();
            return;
        }

        internal function frame50():*
        {
            stop();
            return;
        }

        internal function frame60():*
        {
            stop();
            return;
        }

        internal function frame70():*
        {
            stop();
            return;
        }

        internal function frame80():*
        {
            stop();
            return;
        }

        internal function frame90():*
        {
            stop();
            return;
        }

        internal function frame100():*
        {
            stop();
            return;
        }

        internal function frame110():*
        {
            stop();
            return;
        }

        internal function frame120():*
        {
            stop();
            return;
        }

        internal function frame130():*
        {
            stop();
            return;
        }

        internal function frame140():*
        {
            stop();
            return;
        }
    }
}
