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
    
    public dynamic class rankUI extends net.wg.gui.lobby.tankman.SkillsItemsRendererRankIcon
    {
        public function rankUI()
        {
            super();
            addFrameScript(4, this.frame5, 9, this.frame10);
            this.__setProp_iconRank_rankUI_Layer1_0();
            return;
        }

        internal function __setProp_iconRank_rankUI_Layer1_0():*
        {
            try 
            {
                iconRank["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            iconRank.autoSize = false;
            iconRank.enableInitCallback = false;
            iconRank.maintainAspectRatio = true;
            iconRank.source = "";
            iconRank.sourceAlt = "";
            iconRank.visible = true;
            try 
            {
                iconRank["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function frame5():*
        {
            stop();
            return;
        }

        internal function frame10():*
        {
            stop();
            return;
        }
    }
}
