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
    import net.wg.gui.lobby.techtree.controls.*;
    
    public dynamic class NationNodeNameAndXp extends net.wg.gui.lobby.techtree.controls.NameAndXpField
    {
        public function NationNodeNameAndXp()
        {
            this.__setPropDict = new flash.utils.Dictionary(true);
            super();
            addFrameScript(0, this.frame1, 1, this.frame2, 2, this.frame3, 3, this.frame4, 4, this.frame5);
            return;
        }

        internal function __setProp_xpIcon_NationNodeNameAndXp_xp_0():*
        {
            if (this.__setPropDict[xpIcon] == undefined || !(int(this.__setPropDict[xpIcon]) == 1)) 
            {
                this.__setPropDict[xpIcon] = 1;
                try 
                {
                    xpIcon["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                xpIcon.enabled = true;
                xpIcon.enableInitCallback = false;
                xpIcon.type = "cost";
                xpIcon.visible = true;
                try 
                {
                    xpIcon["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_xpIcon_NationNodeNameAndXp_xp_4():*
        {
            if (this.__setPropDict[xpIcon] == undefined || !(int(this.__setPropDict[xpIcon]) == 5)) 
            {
                this.__setPropDict[xpIcon] = 5;
                try 
                {
                    xpIcon["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                xpIcon.enabled = true;
                xpIcon.enableInitCallback = false;
                xpIcon.type = "elite";
                xpIcon.visible = true;
                try 
                {
                    xpIcon["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function frame1():*
        {
            this.__setProp_xpIcon_NationNodeNameAndXp_xp_0();
            stop();
            return;
        }

        internal function frame2():*
        {
            stop();
            return;
        }

        internal function frame3():*
        {
            stop();
            return;
        }

        internal function frame4():*
        {
            stop();
            return;
        }

        internal function frame5():*
        {
            this.__setProp_xpIcon_NationNodeNameAndXp_xp_4();
            stop();
            return;
        }

        public var __setPropDict:flash.utils.Dictionary;
    }
}
