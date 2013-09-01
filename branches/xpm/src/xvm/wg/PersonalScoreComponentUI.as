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
    import net.wg.gui.lobby.profile.components.*;
    
    public dynamic class PersonalScoreComponentUI extends net.wg.gui.lobby.profile.components.PersonalScoreComponent
    {
        public function PersonalScoreComponentUI()
        {
            super();
            this.__setProp_tfPersonalScore_PersonalScoreComponentUI_tfComponent_0();
            return;
        }

        internal function __setProp_tfPersonalScore_PersonalScoreComponentUI_tfComponent_0():*
        {
            try 
            {
                tfPersonalScore["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tfPersonalScore.description = "Total Battles Description";
            tfPersonalScore.enabled = true;
            tfPersonalScore.enableInitCallback = false;
            tfPersonalScore.iconSource = "../maps/icons/library/proficiency/class_icons_4.png";
            tfPersonalScore.text = "1300000";
            tfPersonalScore.visible = true;
            try 
            {
                tfPersonalScore["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
