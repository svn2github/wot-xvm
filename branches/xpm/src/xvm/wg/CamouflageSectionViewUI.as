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
    
    public dynamic class CamouflageSectionViewUI extends net.wg.gui.lobby.customization.CamouflageSectionView
    {
        public function CamouflageSectionViewUI()
        {
            super();
            this.__setProp_list_CamouflageSectionViewUI_Layer1_0();
            this.__setProp_currentItemRenderer0_CamouflageSectionViewUI_Layer2_0();
            this.__setProp_currentItemRenderer1_CamouflageSectionViewUI_Layer2_0();
            this.__setProp_currentItemRenderer2_CamouflageSectionViewUI_Layer2_0();
            this.__setProp_dropButton0_CamouflageSectionViewUI_dropbuttons_0();
            this.__setProp_dropButton1_CamouflageSectionViewUI_dropbuttons_0();
            this.__setProp_dropButton2_CamouflageSectionViewUI_dropbuttons_0();
            return;
        }

        internal function __setProp_list_CamouflageSectionViewUI_Layer1_0():*
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

        internal function __setProp_currentItemRenderer0_CamouflageSectionViewUI_Layer2_0():*
        {
            try 
            {
                currentItemRenderer0["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            currentItemRenderer0.autoRepeat = false;
            currentItemRenderer0.autoSize = "none";
            currentItemRenderer0.data = "";
            currentItemRenderer0.demoMode = "current";
            currentItemRenderer0.enabled = true;
            currentItemRenderer0.enableInitCallback = false;
            currentItemRenderer0.kind = "winter";
            currentItemRenderer0.label = "";
            currentItemRenderer0.selected = false;
            currentItemRenderer0.soundId = "camouflageDemoRenderer";
            currentItemRenderer0.soundType = "customizationItemRenderer";
            currentItemRenderer0.toggle = false;
            currentItemRenderer0.useHandCursorForse = true;
            currentItemRenderer0.useRightButton = false;
            currentItemRenderer0.visible = true;
            try 
            {
                currentItemRenderer0["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_currentItemRenderer1_CamouflageSectionViewUI_Layer2_0():*
        {
            try 
            {
                currentItemRenderer1["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            currentItemRenderer1.autoRepeat = false;
            currentItemRenderer1.autoSize = "none";
            currentItemRenderer1.data = "";
            currentItemRenderer1.demoMode = "current";
            currentItemRenderer1.enabled = true;
            currentItemRenderer1.enableInitCallback = false;
            currentItemRenderer1.kind = "summer";
            currentItemRenderer1.label = "";
            currentItemRenderer1.selected = false;
            currentItemRenderer1.soundId = "camouflageDemoRenderer";
            currentItemRenderer1.soundType = "customizationItemRenderer";
            currentItemRenderer1.toggle = false;
            currentItemRenderer1.useHandCursorForse = true;
            currentItemRenderer1.useRightButton = false;
            currentItemRenderer1.visible = true;
            try 
            {
                currentItemRenderer1["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_currentItemRenderer2_CamouflageSectionViewUI_Layer2_0():*
        {
            try 
            {
                currentItemRenderer2["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            currentItemRenderer2.autoRepeat = false;
            currentItemRenderer2.autoSize = "none";
            currentItemRenderer2.data = "";
            currentItemRenderer2.demoMode = "current";
            currentItemRenderer2.enabled = true;
            currentItemRenderer2.enableInitCallback = false;
            currentItemRenderer2.kind = "desert";
            currentItemRenderer2.label = "";
            currentItemRenderer2.selected = false;
            currentItemRenderer2.soundId = "camouflageDemoRenderer";
            currentItemRenderer2.soundType = "customizationItemRenderer";
            currentItemRenderer2.toggle = false;
            currentItemRenderer2.useHandCursorForse = true;
            currentItemRenderer2.useRightButton = false;
            currentItemRenderer2.visible = true;
            try 
            {
                currentItemRenderer2["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_dropButton0_CamouflageSectionViewUI_dropbuttons_0():*
        {
            try 
            {
                dropButton0["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            dropButton0.autoRepeat = false;
            dropButton0.autoSize = "none";
            dropButton0.data = "";
            dropButton0.enabled = true;
            dropButton0.enableInitCallback = false;
            dropButton0.focusable = false;
            dropButton0.label = "";
            dropButton0.selected = false;
            dropButton0.toggle = false;
            dropButton0.visible = true;
            try 
            {
                dropButton0["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_dropButton1_CamouflageSectionViewUI_dropbuttons_0():*
        {
            try 
            {
                dropButton1["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            dropButton1.autoRepeat = false;
            dropButton1.autoSize = "none";
            dropButton1.data = "";
            dropButton1.enabled = true;
            dropButton1.enableInitCallback = false;
            dropButton1.focusable = false;
            dropButton1.label = "";
            dropButton1.selected = false;
            dropButton1.toggle = false;
            dropButton1.visible = true;
            try 
            {
                dropButton1["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_dropButton2_CamouflageSectionViewUI_dropbuttons_0():*
        {
            try 
            {
                dropButton2["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            dropButton2.autoRepeat = false;
            dropButton2.autoSize = "none";
            dropButton2.data = "";
            dropButton2.enabled = true;
            dropButton2.enableInitCallback = false;
            dropButton2.focusable = false;
            dropButton2.label = "";
            dropButton2.selected = false;
            dropButton2.toggle = false;
            dropButton2.visible = true;
            try 
            {
                dropButton2["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
