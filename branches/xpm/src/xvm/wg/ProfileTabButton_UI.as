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
    import net.wg.gui.lobby.profile.headerBar.*;
    
    public dynamic class ProfileTabButton_UI extends net.wg.gui.lobby.profile.headerBar.ProfileTabButton
    {
        public function ProfileTabButton_UI()
        {
            this.__setPropDict = new flash.utils.Dictionary(true);
            super();
            addFrameScript(5, this.frame6, 19, this.frame20, 31, this.frame32, 37, this.frame38, 45, this.frame46, 82, this.frame83, 92, this.frame93, 105, this.frame106);
            addEventListener(flash.events.Event.FRAME_CONSTRUCTED, this.__setProp_handler, false, 0, true);
            return;
        }

        internal function __setProp_highLight_ProfileTabButton_UI_highLight_0(arg1:int):*
        {
            if (!(highLight == null) && arg1 >= 1 && arg1 <= 46 && (this.__setPropDict[highLight] == undefined || !(int(this.__setPropDict[highLight]) >= 1 && int(this.__setPropDict[highLight]) <= 46))) 
            {
                this.__setPropDict[highLight] = arg1;
                try 
                {
                    highLight["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                highLight.enabled = false;
                highLight.enableInitCallback = false;
                highLight.visible = false;
                try 
                {
                    highLight["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_highLight_ProfileTabButton_UI_highLight_46(arg1:int):*
        {
            if (!(highLight == null) && arg1 >= 47 && arg1 <= 106 && (this.__setPropDict[highLight] == undefined || !(int(this.__setPropDict[highLight]) >= 47 && int(this.__setPropDict[highLight]) <= 106))) 
            {
                this.__setPropDict[highLight] = arg1;
                try 
                {
                    highLight["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                highLight.enabled = false;
                highLight.enableInitCallback = false;
                highLight.visible = true;
                try 
                {
                    highLight["componentInspectorSetting"] = false;
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
            this.__setProp_highLight_ProfileTabButton_UI_highLight_0(loc1);
            this.__setProp_highLight_ProfileTabButton_UI_highLight_46(loc1);
            return;
        }

        internal function frame6():*
        {
            stop();
            return;
        }

        internal function frame20():*
        {
            stop();
            return;
        }

        internal function frame32():*
        {
            stop();
            return;
        }

        internal function frame38():*
        {
            stop();
            return;
        }

        internal function frame46():*
        {
            stop();
            return;
        }

        internal function frame83():*
        {
            stop();
            return;
        }

        internal function frame93():*
        {
            stop();
            return;
        }

        internal function frame106():*
        {
            stop();
            return;
        }

        public var __setPropDict:flash.utils.Dictionary;

        public var __lastFrameProp:int=-1;
    }
}
