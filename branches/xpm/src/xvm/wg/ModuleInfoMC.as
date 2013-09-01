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
    import net.wg.gui.components.windows.*;
    
    public dynamic class ModuleInfoMC extends net.wg.gui.components.windows.ModuleInfo
    {
        public function ModuleInfoMC()
        {
            super();
            this.__setProp_closeBottomBtn_ModuleInfoMC_bg_0();
            this.__setProp_moduleParams_ModuleInfoMC_moduleParams_0();
            return;
        }

        internal function __setProp_closeBottomBtn_ModuleInfoMC_bg_0():*
        {
            try 
            {
                closeBottomBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            closeBottomBtn.autoRepeat = false;
            closeBottomBtn.autoSize = "none";
            closeBottomBtn.data = "";
            closeBottomBtn.enabled = true;
            closeBottomBtn.enableInitCallback = false;
            closeBottomBtn.fillPadding = 0;
            closeBottomBtn.focusable = true;
            closeBottomBtn.label = "#menu:moduleInfo/closeBtn";
            closeBottomBtn.paddingHorizontal = 5;
            closeBottomBtn.selected = false;
            closeBottomBtn.soundId = "";
            closeBottomBtn.soundType = "normal";
            closeBottomBtn.toggle = false;
            closeBottomBtn.visible = true;
            try 
            {
                closeBottomBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_moduleParams_ModuleInfoMC_moduleParams_0():*
        {
            try 
            {
                moduleParams["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            moduleParams.bottomMargin = 20;
            moduleParams.enabled = true;
            moduleParams.enableInitCallback = false;
            moduleParams.visible = true;
            try 
            {
                moduleParams["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
