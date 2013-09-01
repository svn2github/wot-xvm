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
    
    public dynamic class pc_SkillsItemRendererUI extends net.wg.gui.lobby.tankman.PersonalCaseSkillsItemRenderer
    {
        public function pc_SkillsItemRendererUI()
        {
            this.__setPropDict = new flash.utils.Dictionary(true);
            super();
            addFrameScript(9, this.frame10, 19, this.frame20, 29, this.frame30, 39, this.frame40, 49, this.frame50, 59, this.frame60, 69, this.frame70, 79, this.frame80, 89, this.frame90, 99, this.frame100, 109, this.frame110, 119, this.frame120, 129, this.frame130, 139, this.frame140);
            addEventListener(flash.events.Event.FRAME_CONSTRUCTED, this.__setProp_handler, false, 0, true);
            return;
        }

        internal function __setProp_icon_pc_SkillsItemRendererUI_Layer10_0(arg1:int):*
        {
            if (!(icon == null) && arg1 >= 1 && arg1 <= 130 && (this.__setPropDict[icon] == undefined || !(int(this.__setPropDict[icon]) >= 1 && int(this.__setPropDict[icon]) <= 130))) 
            {
                this.__setPropDict[icon] = arg1;
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
            }
            return;
        }

        internal function __setProp_handler(arg1:Object):*
        {
            var loc1:*=currentFrame;
            if (this.__lastFrameProp == loc1) 
            {
                return;
            }
            this.__lastFrameProp = loc1;
            this.__setProp_icon_pc_SkillsItemRendererUI_Layer10_0(loc1);
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

        public var __setPropDict:flash.utils.Dictionary;

        public var __lastFrameProp:int=-1;
    }
}
