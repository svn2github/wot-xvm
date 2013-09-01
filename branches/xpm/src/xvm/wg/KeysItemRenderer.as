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
    import net.wg.gui.lobby.settings.components.*;
    
    public dynamic class KeysItemRenderer extends net.wg.gui.lobby.settings.components.KeysItemRenderer
    {
        public function KeysItemRenderer()
        {
            this.__setPropDict = new flash.utils.Dictionary(true);
            super();
            addFrameScript(9, this.frame10, 19, this.frame20, 29, this.frame30, 39, this.frame40, 49, this.frame50, 59, this.frame60, 69, this.frame70, 79, this.frame80, 89, this.frame90, 99, this.frame100, 109, this.frame110, 119, this.frame120);
            addEventListener(flash.events.Event.FRAME_CONSTRUCTED, this.__setProp_handler, false, 0, true);
            return;
        }

        internal function __setProp_keyInput_KeysItemRenderer_key_0(arg1:int):*
        {
            if (!(keyInput == null) && arg1 >= 1 && arg1 <= 60 && (this.__setPropDict[keyInput] == undefined || !(int(this.__setPropDict[keyInput]) >= 1 && int(this.__setPropDict[keyInput]) <= 60))) 
            {
                this.__setPropDict[keyInput] = arg1;
                try 
                {
                    keyInput["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                keyInput.enabled = true;
                keyInput.focusable = true;
                keyInput.soundId = "";
                keyInput.soundType = "normal";
                keyInput.startDefKey = -1;
                keyInput.visible = true;
                try 
                {
                    keyInput["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_keyInput_KeysItemRenderer_key_60(arg1:int):*
        {
            if (!(keyInput == null) && arg1 >= 61 && arg1 <= 120 && (this.__setPropDict[keyInput] == undefined || !(int(this.__setPropDict[keyInput]) >= 61 && int(this.__setPropDict[keyInput]) <= 120))) 
            {
                this.__setPropDict[keyInput] = arg1;
                try 
                {
                    keyInput["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                keyInput.enabled = false;
                keyInput.focusable = false;
                keyInput.soundId = "";
                keyInput.soundType = "normal";
                keyInput.startDefKey = -1;
                keyInput.visible = false;
                try 
                {
                    keyInput["componentInspectorSetting"] = false;
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
            this.__setProp_keyInput_KeysItemRenderer_key_0(loc1);
            this.__setProp_keyInput_KeysItemRenderer_key_60(loc1);
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

        public var __setPropDict:flash.utils.Dictionary;

        public var __lastFrameProp:int=-1;
    }
}
