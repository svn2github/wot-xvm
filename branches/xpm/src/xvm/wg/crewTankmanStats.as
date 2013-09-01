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
    
    public dynamic class crewTankmanStats extends net.wg.gui.lobby.tankman.PersonalCaseStats
    {
        public function crewTankmanStats()
        {
            super();
            this.__setProp_achievements_crewTankmanStats_carousel_0();
            return;
        }

        internal function __setProp_achievements_crewTankmanStats_carousel_0():*
        {
            try 
            {
                achievements["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            achievements.carouselType = "horizontal";
            achievements.countVisibleSlots = 6;
            achievements.enabled = true;
            achievements.enableInitCallback = false;
            achievements.focusable = true;
            achievements.itemRendererName = "AchievementDivision_UI";
            achievements.itemRendererInstanceName = "";
            achievements.margin = 3;
            achievements.offsetArrowHeight = 0;
            achievements.padding = {"top":1, "right":0, "bottom":0, "left":0};
            achievements.slotImageHeight = 72;
            achievements.slotImageWidth = 75;
            achievements.useShadow = true;
            achievements.visible = false;
            try 
            {
                achievements["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
