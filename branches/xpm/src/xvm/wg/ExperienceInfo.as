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
    
    public dynamic class ExperienceInfo extends net.wg.gui.lobby.techtree.controls.ExperienceInformation
    {
        public function ExperienceInfo()
        {
            super();
            this.__setProp___id3__ExperienceInfo_freexpicon_0();
            this.__setProp___id4__ExperienceInfo_freexp_0();
            return;
        }

        internal function __setProp___id3__ExperienceInfo_freexpicon_0():*
        {
            try 
            {
                this.__id3_["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            this.__id3_.enabled = true;
            this.__id3_.enableInitCallback = false;
            this.__id3_.type = "free";
            this.__id3_.visible = true;
            try 
            {
                this.__id3_["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp___id4__ExperienceInfo_freexp_0():*
        {
            try 
            {
                this.__id4_["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            this.__id4_.enabled = true;
            this.__id4_.enableInitCallback = false;
            this.__id4_.type = "free";
            this.__id4_.visible = true;
            try 
            {
                this.__id4_["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        public var __id3_:XPIcon;

        public var __id4_:XPIcon;
    }
}
