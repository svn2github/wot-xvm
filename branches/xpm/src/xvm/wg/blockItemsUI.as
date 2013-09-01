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
    
    public dynamic class blockItemsUI extends net.wg.gui.lobby.tankman.PersonalCaseBlockItem
    {
        public function blockItemsUI()
        {
            super();
            this.__setProp_skills_blockItemsUI_skill_0();
            return;
        }

        internal function __setProp_skills_blockItemsUI_skill_0():*
        {
            try 
            {
                skills["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            skills.autoSize = false;
            skills.enableInitCallback = false;
            skills.maintainAspectRatio = true;
            skills.source = "";
            skills.sourceAlt = "";
            skills.visible = true;
            try 
            {
                skills["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
