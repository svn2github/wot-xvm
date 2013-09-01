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
    import net.wg.gui.lobby.customization.*;
    
    public dynamic class EmblemLeftSectionViewUI extends net.wg.gui.lobby.customization.EmblemLeftSectionView
    {
        public function EmblemLeftSectionViewUI()
        {
            super();
            this.__setProp_list_EmblemLeftSectionViewUI_list_0();
            this.__setProp_currentItemRenderer_EmblemLeftSectionViewUI_current();
            this.__setProp_newItemRenderer_EmblemLeftSectionViewUI_current();
            return;
        }

        internal function __setProp_list_EmblemLeftSectionViewUI_list_0():*
        {
            try 
            {
                list["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            list.enabled = true;
            list.enableInitCallback = false;
            list.focusable = true;
            list.itemRendererName = "SectionItemRendererUI";
            list.itemRendererInstanceName = "";
            list.margin = 0;
            list.inspectablePadding = {"top":2, "right":0, "bottom":0, "left":0};
            list.rowHeight = 23;
            list.scrollBar = "";
            list.visible = true;
            list.wrapping = "normal";
            try 
            {
                list["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_currentItemRenderer_EmblemLeftSectionViewUI_current():*
        {
            try 
            {
                currentItemRenderer["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            currentItemRenderer.autoRepeat = false;
            currentItemRenderer.autoSize = "none";
            currentItemRenderer.data = "";
            currentItemRenderer.demoMode = "current";
            currentItemRenderer.enabled = true;
            currentItemRenderer.enableInitCallback = false;
            currentItemRenderer.label = "";
            currentItemRenderer.selected = false;
            currentItemRenderer.soundId = "textureRenderer";
            currentItemRenderer.soundType = "customizationItemRenderer";
            currentItemRenderer.toggle = false;
            currentItemRenderer.useHandCursorForse = false;
            currentItemRenderer.useRightButton = false;
            currentItemRenderer.visible = true;
            try 
            {
                currentItemRenderer["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_newItemRenderer_EmblemLeftSectionViewUI_current():*
        {
            try 
            {
                newItemRenderer["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            newItemRenderer.autoRepeat = false;
            newItemRenderer.autoSize = "none";
            newItemRenderer.data = "";
            newItemRenderer.demoMode = "new";
            newItemRenderer.enabled = true;
            newItemRenderer.enableInitCallback = false;
            newItemRenderer.label = "";
            newItemRenderer.selected = false;
            newItemRenderer.soundId = "textureRenderer";
            newItemRenderer.soundType = "customizationItemRenderer";
            newItemRenderer.toggle = false;
            newItemRenderer.useHandCursorForse = false;
            newItemRenderer.useRightButton = false;
            newItemRenderer.visible = true;
            try 
            {
                newItemRenderer["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
