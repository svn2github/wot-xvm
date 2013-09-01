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
    import net.wg.gui.lobby.profile.pages.summary.*;
    
    public dynamic class SignificantAwards_UI extends net.wg.gui.lobby.profile.pages.summary.AwardsListComponent
    {
        public function SignificantAwards_UI()
        {
            super();
            this.__setProp_medalsList_SignificantAwards_UI_Layer2_0();
            return;
        }

        internal function __setProp_medalsList_SignificantAwards_UI_Layer2_0():*
        {
            try 
            {
                medalsList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            medalsList._align = "center";
            medalsList._colorDodgeMulty = 1.3;
            medalsList._gap = 10;
            medalsList._itemRenderer = "AchievementCommon_UI";
            medalsList._stripeRenderer = "";
            medalsList.visible = true;
            try 
            {
                medalsList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
