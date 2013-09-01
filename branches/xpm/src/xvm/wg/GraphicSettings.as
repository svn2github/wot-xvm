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
    import net.wg.gui.lobby.settings.*;
    
    public dynamic class GraphicSettings extends net.wg.gui.lobby.settings.GraphicSettings
    {
        public function GraphicSettings()
        {
            super();
            this.__setProp_graficsFieldSet_GraphicSettings_fieldset_0();
            this.__setProp_monitorLabel_GraphicSettings_ui_0();
            this.__setProp_sizesLabel_GraphicSettings_ui_0();
            this.__setProp_aspectRatioLabel_GraphicSettings_ui_0();
            this.__setProp_smoothingLabel_GraphicSettings_ui_0();
            this.__setProp_gammaLabel_GraphicSettings_ui_0();
            this.__setProp_graphicsQualityLabel_GraphicSettings_ui_0();
            this.__setProp_monitorDropDown_GraphicSettings_ui_0();
            this.__setProp_sizesDropDown_GraphicSettings_ui_0();
            this.__setProp_aspectRatioDropDown_GraphicSettings_ui_0();
            this.__setProp_smoothingDropDown_GraphicSettings_ui_0();
            this.__setProp_graphicsQualityDropDown_GraphicSettings_ui_0();
            this.__setProp_gammaSlider_GraphicSettings_ui_0();
            this.__setProp_RENDER_PIPELINELabel_GraphicSettings_ui_0();
            this.__setProp_RENDER_PIPELINEDropDown_GraphicSettings_ui_0();
            this.__setProp_TEXTURE_QUALITYLabel_GraphicSettings_ui_0();
            this.__setProp_TEXTURE_QUALITYDropDown_GraphicSettings_ui_0();
            this.__setProp_DECALS_QUALITYLabel_GraphicSettings_ui_0();
            this.__setProp_DECALS_QUALITYDropDown_GraphicSettings_ui_0();
            this.__setProp_SHADOWS_QUALITYLabel_GraphicSettings_ui_0();
            this.__setProp_SHADOWS_QUALITYDropDown_GraphicSettings_ui_0();
            this.__setProp_TERRAIN_QUALITYLabel_GraphicSettings_ui_0();
            this.__setProp_TERRAIN_QUALITYDropDown_GraphicSettings_ui_0();
            this.__setProp_WATER_QUALITYLabel_GraphicSettings_ui_0();
            this.__setProp_WATER_QUALITYDropDown_GraphicSettings_ui_0();
            this.__setProp_LIGHTING_QUALITYLabel_GraphicSettings_ui_0();
            this.__setProp_LIGHTING_QUALITYDropDown_GraphicSettings_ui_0();
            this.__setProp_SPEEDTREE_QUALITYLabel_GraphicSettings_ui_0();
            this.__setProp_SPEEDTREE_QUALITYDropDown_GraphicSettings_ui_0();
            this.__setProp_FLORA_QUALITYLabel_GraphicSettings_ui_0();
            this.__setProp_FLORA_QUALITYDropDown_GraphicSettings_ui_0();
            this.__setProp_EFFECTS_QUALITYLabel_GraphicSettings_ui_0();
            this.__setProp_EFFECTS_QUALITYDropDown_GraphicSettings_ui_0();
            this.__setProp_POST_PROCESSING_QUALITYLabel_GraphicSettings_ui_0();
            this.__setProp_POST_PROCESSING_QUALITYDropDown_GraphicSettings_ui_0();
            this.__setProp_FAR_PLANELabel_GraphicSettings_ui_0();
            this.__setProp_FAR_PLANEDropDown_GraphicSettings_ui_0();
            this.__setProp_OBJECT_LODLabel_GraphicSettings_ui_0();
            this.__setProp_OBJECT_LODDropDown_GraphicSettings_ui_0();
            this.__setProp_SNIPER_MODE_EFFECTS_QUALITYLabel_GraphicSettings_ui_0();
            this.__setProp_SNIPER_MODE_EFFECTS_QUALITYDropDown_GraphicSettings_ui_0();
            return;
        }

        internal function __setProp_graficsFieldSet_GraphicSettings_fieldset_0():*
        {
            try 
            {
                graficsFieldSet["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            graficsFieldSet.enabled = true;
            graficsFieldSet.enableInitCallback = false;
            graficsFieldSet.label = "";
            graficsFieldSet.margin = 5;
            graficsFieldSet.showLabel = false;
            graficsFieldSet.visible = true;
            try 
            {
                graficsFieldSet["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_monitorLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                monitorLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            monitorLabel.autoSize = "none";
            monitorLabel.enabled = true;
            monitorLabel.enableInitCallback = false;
            monitorLabel.text = "n/a";
            monitorLabel.textAlign = "none";
            monitorLabel.visible = true;
            try 
            {
                monitorLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_sizesLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                sizesLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            sizesLabel.autoSize = "none";
            sizesLabel.enabled = true;
            sizesLabel.enableInitCallback = false;
            sizesLabel.text = "n/a";
            sizesLabel.textAlign = "none";
            sizesLabel.visible = true;
            try 
            {
                sizesLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_aspectRatioLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                aspectRatioLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            aspectRatioLabel.autoSize = "none";
            aspectRatioLabel.enabled = true;
            aspectRatioLabel.enableInitCallback = false;
            aspectRatioLabel.text = "n/a";
            aspectRatioLabel.textAlign = "none";
            aspectRatioLabel.visible = true;
            try 
            {
                aspectRatioLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_smoothingLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                smoothingLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            smoothingLabel.autoSize = "none";
            smoothingLabel.enabled = true;
            smoothingLabel.enableInitCallback = false;
            smoothingLabel.text = "n/a";
            smoothingLabel.textAlign = "none";
            smoothingLabel.visible = true;
            try 
            {
                smoothingLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_gammaLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                gammaLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            gammaLabel.autoSize = "none";
            gammaLabel.enabled = true;
            gammaLabel.enableInitCallback = false;
            gammaLabel.text = "n/a";
            gammaLabel.textAlign = "none";
            gammaLabel.visible = true;
            try 
            {
                gammaLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_graphicsQualityLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                graphicsQualityLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            graphicsQualityLabel.autoSize = "none";
            graphicsQualityLabel.enabled = true;
            graphicsQualityLabel.enableInitCallback = false;
            graphicsQualityLabel.text = "n/a";
            graphicsQualityLabel.textAlign = "none";
            graphicsQualityLabel.visible = true;
            try 
            {
                graphicsQualityLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_monitorDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                monitorDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            monitorDropDown.autoSize = "none";
            monitorDropDown.dropdown = "DropdownMenu_ScrollingList";
            monitorDropDown.enabled = true;
            monitorDropDown.enableInitCallback = false;
            monitorDropDown.focusable = true;
            monitorDropDown.itemRenderer = "DropDownListItemRendererSound";
            monitorDropDown.menuDirection = "down";
            monitorDropDown.menuMargin = 1;
            monitorDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            monitorDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            monitorDropDown.rowCount = 15;
            monitorDropDown.menuRowsFixed = false;
            monitorDropDown.menuWidth = -1;
            monitorDropDown.menuWrapping = "normal";
            monitorDropDown.scrollBar = "";
            monitorDropDown.showEmptyItems = false;
            monitorDropDown.soundId = "";
            monitorDropDown.soundType = "";
            monitorDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            monitorDropDown.visible = true;
            try 
            {
                monitorDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_sizesDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                sizesDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            sizesDropDown.autoSize = "none";
            sizesDropDown.dropdown = "DropdownMenu_ScrollingList";
            sizesDropDown.enabled = true;
            sizesDropDown.enableInitCallback = false;
            sizesDropDown.focusable = true;
            sizesDropDown.itemRenderer = "DropDownListItemRendererSound";
            sizesDropDown.menuDirection = "down";
            sizesDropDown.menuMargin = 1;
            sizesDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            sizesDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            sizesDropDown.rowCount = 15;
            sizesDropDown.menuRowsFixed = false;
            sizesDropDown.menuWidth = -1;
            sizesDropDown.menuWrapping = "normal";
            sizesDropDown.scrollBar = "ScrollBar";
            sizesDropDown.showEmptyItems = false;
            sizesDropDown.soundId = "";
            sizesDropDown.soundType = "";
            sizesDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            sizesDropDown.visible = true;
            try 
            {
                sizesDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_aspectRatioDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                aspectRatioDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            aspectRatioDropDown.autoSize = "none";
            aspectRatioDropDown.dropdown = "DropdownMenu_ScrollingList";
            aspectRatioDropDown.enabled = true;
            aspectRatioDropDown.enableInitCallback = false;
            aspectRatioDropDown.focusable = true;
            aspectRatioDropDown.itemRenderer = "DropDownListItemRendererSound";
            aspectRatioDropDown.menuDirection = "down";
            aspectRatioDropDown.menuMargin = 1;
            aspectRatioDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            aspectRatioDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            aspectRatioDropDown.rowCount = 15;
            aspectRatioDropDown.menuRowsFixed = false;
            aspectRatioDropDown.menuWidth = -1;
            aspectRatioDropDown.menuWrapping = "normal";
            aspectRatioDropDown.scrollBar = "ScrollBar";
            aspectRatioDropDown.showEmptyItems = false;
            aspectRatioDropDown.soundId = "";
            aspectRatioDropDown.soundType = "";
            aspectRatioDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            aspectRatioDropDown.visible = true;
            try 
            {
                aspectRatioDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_smoothingDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                smoothingDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            smoothingDropDown.autoSize = "none";
            smoothingDropDown.dropdown = "DropdownMenu_ScrollingList";
            smoothingDropDown.enabled = true;
            smoothingDropDown.enableInitCallback = false;
            smoothingDropDown.focusable = true;
            smoothingDropDown.itemRenderer = "DropDownListItemRendererSound";
            smoothingDropDown.menuDirection = "down";
            smoothingDropDown.menuMargin = 1;
            smoothingDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            smoothingDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            smoothingDropDown.rowCount = 15;
            smoothingDropDown.menuRowsFixed = false;
            smoothingDropDown.menuWidth = -1;
            smoothingDropDown.menuWrapping = "normal";
            smoothingDropDown.scrollBar = "ScrollBar";
            smoothingDropDown.showEmptyItems = false;
            smoothingDropDown.soundId = "";
            smoothingDropDown.soundType = "";
            smoothingDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            smoothingDropDown.visible = true;
            try 
            {
                smoothingDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_graphicsQualityDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                graphicsQualityDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            graphicsQualityDropDown.autoSize = "none";
            graphicsQualityDropDown.dropdown = "DropdownMenu_ScrollingList";
            graphicsQualityDropDown.enabled = true;
            graphicsQualityDropDown.enableInitCallback = false;
            graphicsQualityDropDown.focusable = true;
            graphicsQualityDropDown.itemRenderer = "DropDownListItemRendererSound";
            graphicsQualityDropDown.menuDirection = "down";
            graphicsQualityDropDown.menuMargin = 1;
            graphicsQualityDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            graphicsQualityDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            graphicsQualityDropDown.rowCount = 15;
            graphicsQualityDropDown.menuRowsFixed = false;
            graphicsQualityDropDown.menuWidth = -1;
            graphicsQualityDropDown.menuWrapping = "normal";
            graphicsQualityDropDown.scrollBar = "";
            graphicsQualityDropDown.showEmptyItems = false;
            graphicsQualityDropDown.soundId = "";
            graphicsQualityDropDown.soundType = "";
            graphicsQualityDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            graphicsQualityDropDown.visible = true;
            try 
            {
                graphicsQualityDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_gammaSlider_GraphicSettings_ui_0():*
        {
            try 
            {
                gammaSlider["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            gammaSlider.enabled = true;
            gammaSlider.enableInitCallback = false;
            gammaSlider.focusable = true;
            gammaSlider.liveDragging = true;
            gammaSlider.maximum = 2;
            gammaSlider.minimum = 0.5;
            gammaSlider.snapInterval = 1;
            gammaSlider.snapping = false;
            gammaSlider.undefinedDisabled = false;
            gammaSlider.value = 1;
            gammaSlider.visible = true;
            try 
            {
                gammaSlider["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_RENDER_PIPELINELabel_GraphicSettings_ui_0():*
        {
            try 
            {
                RENDER_PIPELINELabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            RENDER_PIPELINELabel.autoSize = "none";
            RENDER_PIPELINELabel.enabled = true;
            RENDER_PIPELINELabel.enableInitCallback = false;
            RENDER_PIPELINELabel.text = "n/a";
            RENDER_PIPELINELabel.textAlign = "none";
            RENDER_PIPELINELabel.visible = true;
            try 
            {
                RENDER_PIPELINELabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_RENDER_PIPELINEDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                RENDER_PIPELINEDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            RENDER_PIPELINEDropDown.autoSize = "none";
            RENDER_PIPELINEDropDown.dropdown = "DropdownMenu_ScrollingList";
            RENDER_PIPELINEDropDown.enabled = true;
            RENDER_PIPELINEDropDown.enableInitCallback = false;
            RENDER_PIPELINEDropDown.focusable = true;
            RENDER_PIPELINEDropDown.itemRenderer = "DropDownListItemRendererSound";
            RENDER_PIPELINEDropDown.menuDirection = "down";
            RENDER_PIPELINEDropDown.menuMargin = 1;
            RENDER_PIPELINEDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            RENDER_PIPELINEDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            RENDER_PIPELINEDropDown.rowCount = 15;
            RENDER_PIPELINEDropDown.menuRowsFixed = false;
            RENDER_PIPELINEDropDown.menuWidth = -1;
            RENDER_PIPELINEDropDown.menuWrapping = "normal";
            RENDER_PIPELINEDropDown.scrollBar = "";
            RENDER_PIPELINEDropDown.showEmptyItems = false;
            RENDER_PIPELINEDropDown.soundId = "";
            RENDER_PIPELINEDropDown.soundType = "";
            RENDER_PIPELINEDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            RENDER_PIPELINEDropDown.visible = true;
            try 
            {
                RENDER_PIPELINEDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_TEXTURE_QUALITYLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                TEXTURE_QUALITYLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            TEXTURE_QUALITYLabel.autoSize = "none";
            TEXTURE_QUALITYLabel.enabled = true;
            TEXTURE_QUALITYLabel.enableInitCallback = false;
            TEXTURE_QUALITYLabel.text = "n/a";
            TEXTURE_QUALITYLabel.textAlign = "none";
            TEXTURE_QUALITYLabel.visible = true;
            try 
            {
                TEXTURE_QUALITYLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_TEXTURE_QUALITYDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                TEXTURE_QUALITYDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            TEXTURE_QUALITYDropDown.autoSize = "none";
            TEXTURE_QUALITYDropDown.dropdown = "DropdownMenu_ScrollingList";
            TEXTURE_QUALITYDropDown.enabled = true;
            TEXTURE_QUALITYDropDown.enableInitCallback = false;
            TEXTURE_QUALITYDropDown.focusable = true;
            TEXTURE_QUALITYDropDown.itemRenderer = "DropDownListItemRendererSound";
            TEXTURE_QUALITYDropDown.menuDirection = "down";
            TEXTURE_QUALITYDropDown.menuMargin = 1;
            TEXTURE_QUALITYDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            TEXTURE_QUALITYDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            TEXTURE_QUALITYDropDown.rowCount = 15;
            TEXTURE_QUALITYDropDown.menuRowsFixed = false;
            TEXTURE_QUALITYDropDown.menuWidth = -1;
            TEXTURE_QUALITYDropDown.menuWrapping = "normal";
            TEXTURE_QUALITYDropDown.scrollBar = "";
            TEXTURE_QUALITYDropDown.showEmptyItems = false;
            TEXTURE_QUALITYDropDown.soundId = "";
            TEXTURE_QUALITYDropDown.soundType = "";
            TEXTURE_QUALITYDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            TEXTURE_QUALITYDropDown.visible = true;
            try 
            {
                TEXTURE_QUALITYDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_DECALS_QUALITYLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                DECALS_QUALITYLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            DECALS_QUALITYLabel.autoSize = "none";
            DECALS_QUALITYLabel.enabled = true;
            DECALS_QUALITYLabel.enableInitCallback = false;
            DECALS_QUALITYLabel.text = "n/a";
            DECALS_QUALITYLabel.textAlign = "none";
            DECALS_QUALITYLabel.visible = true;
            try 
            {
                DECALS_QUALITYLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_DECALS_QUALITYDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                DECALS_QUALITYDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            DECALS_QUALITYDropDown.autoSize = "none";
            DECALS_QUALITYDropDown.dropdown = "DropdownMenu_ScrollingList";
            DECALS_QUALITYDropDown.enabled = true;
            DECALS_QUALITYDropDown.enableInitCallback = false;
            DECALS_QUALITYDropDown.focusable = true;
            DECALS_QUALITYDropDown.itemRenderer = "DropDownListItemRendererSound";
            DECALS_QUALITYDropDown.menuDirection = "down";
            DECALS_QUALITYDropDown.menuMargin = 1;
            DECALS_QUALITYDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            DECALS_QUALITYDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            DECALS_QUALITYDropDown.rowCount = 15;
            DECALS_QUALITYDropDown.menuRowsFixed = false;
            DECALS_QUALITYDropDown.menuWidth = -1;
            DECALS_QUALITYDropDown.menuWrapping = "normal";
            DECALS_QUALITYDropDown.scrollBar = "";
            DECALS_QUALITYDropDown.showEmptyItems = false;
            DECALS_QUALITYDropDown.soundId = "";
            DECALS_QUALITYDropDown.soundType = "";
            DECALS_QUALITYDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            DECALS_QUALITYDropDown.visible = true;
            try 
            {
                DECALS_QUALITYDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_SHADOWS_QUALITYLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                SHADOWS_QUALITYLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            SHADOWS_QUALITYLabel.autoSize = "none";
            SHADOWS_QUALITYLabel.enabled = true;
            SHADOWS_QUALITYLabel.enableInitCallback = false;
            SHADOWS_QUALITYLabel.text = "n/a";
            SHADOWS_QUALITYLabel.textAlign = "none";
            SHADOWS_QUALITYLabel.visible = true;
            try 
            {
                SHADOWS_QUALITYLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_SHADOWS_QUALITYDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                SHADOWS_QUALITYDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            SHADOWS_QUALITYDropDown.autoSize = "none";
            SHADOWS_QUALITYDropDown.dropdown = "DropdownMenu_ScrollingList";
            SHADOWS_QUALITYDropDown.enabled = true;
            SHADOWS_QUALITYDropDown.enableInitCallback = false;
            SHADOWS_QUALITYDropDown.focusable = true;
            SHADOWS_QUALITYDropDown.itemRenderer = "DropDownListItemRendererSound";
            SHADOWS_QUALITYDropDown.menuDirection = "down";
            SHADOWS_QUALITYDropDown.menuMargin = 1;
            SHADOWS_QUALITYDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            SHADOWS_QUALITYDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            SHADOWS_QUALITYDropDown.rowCount = 15;
            SHADOWS_QUALITYDropDown.menuRowsFixed = false;
            SHADOWS_QUALITYDropDown.menuWidth = -1;
            SHADOWS_QUALITYDropDown.menuWrapping = "normal";
            SHADOWS_QUALITYDropDown.scrollBar = "";
            SHADOWS_QUALITYDropDown.showEmptyItems = false;
            SHADOWS_QUALITYDropDown.soundId = "";
            SHADOWS_QUALITYDropDown.soundType = "";
            SHADOWS_QUALITYDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            SHADOWS_QUALITYDropDown.visible = true;
            try 
            {
                SHADOWS_QUALITYDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_TERRAIN_QUALITYLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                TERRAIN_QUALITYLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            TERRAIN_QUALITYLabel.autoSize = "none";
            TERRAIN_QUALITYLabel.enabled = true;
            TERRAIN_QUALITYLabel.enableInitCallback = false;
            TERRAIN_QUALITYLabel.text = "n/a";
            TERRAIN_QUALITYLabel.textAlign = "none";
            TERRAIN_QUALITYLabel.visible = true;
            try 
            {
                TERRAIN_QUALITYLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_TERRAIN_QUALITYDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                TERRAIN_QUALITYDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            TERRAIN_QUALITYDropDown.autoSize = "none";
            TERRAIN_QUALITYDropDown.dropdown = "DropdownMenu_ScrollingList";
            TERRAIN_QUALITYDropDown.enabled = true;
            TERRAIN_QUALITYDropDown.enableInitCallback = false;
            TERRAIN_QUALITYDropDown.focusable = true;
            TERRAIN_QUALITYDropDown.itemRenderer = "DropDownListItemRendererSound";
            TERRAIN_QUALITYDropDown.menuDirection = "down";
            TERRAIN_QUALITYDropDown.menuMargin = 1;
            TERRAIN_QUALITYDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            TERRAIN_QUALITYDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            TERRAIN_QUALITYDropDown.rowCount = 15;
            TERRAIN_QUALITYDropDown.menuRowsFixed = false;
            TERRAIN_QUALITYDropDown.menuWidth = -1;
            TERRAIN_QUALITYDropDown.menuWrapping = "normal";
            TERRAIN_QUALITYDropDown.scrollBar = "";
            TERRAIN_QUALITYDropDown.showEmptyItems = false;
            TERRAIN_QUALITYDropDown.soundId = "";
            TERRAIN_QUALITYDropDown.soundType = "";
            TERRAIN_QUALITYDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            TERRAIN_QUALITYDropDown.visible = true;
            try 
            {
                TERRAIN_QUALITYDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_WATER_QUALITYLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                WATER_QUALITYLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            WATER_QUALITYLabel.autoSize = "none";
            WATER_QUALITYLabel.enabled = true;
            WATER_QUALITYLabel.enableInitCallback = false;
            WATER_QUALITYLabel.text = "n/a";
            WATER_QUALITYLabel.textAlign = "none";
            WATER_QUALITYLabel.visible = true;
            try 
            {
                WATER_QUALITYLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_WATER_QUALITYDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                WATER_QUALITYDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            WATER_QUALITYDropDown.autoSize = "none";
            WATER_QUALITYDropDown.dropdown = "DropdownMenu_ScrollingList";
            WATER_QUALITYDropDown.enabled = true;
            WATER_QUALITYDropDown.enableInitCallback = false;
            WATER_QUALITYDropDown.focusable = true;
            WATER_QUALITYDropDown.itemRenderer = "DropDownListItemRendererSound";
            WATER_QUALITYDropDown.menuDirection = "down";
            WATER_QUALITYDropDown.menuMargin = 1;
            WATER_QUALITYDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            WATER_QUALITYDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            WATER_QUALITYDropDown.rowCount = 15;
            WATER_QUALITYDropDown.menuRowsFixed = false;
            WATER_QUALITYDropDown.menuWidth = -1;
            WATER_QUALITYDropDown.menuWrapping = "normal";
            WATER_QUALITYDropDown.scrollBar = "";
            WATER_QUALITYDropDown.showEmptyItems = false;
            WATER_QUALITYDropDown.soundId = "";
            WATER_QUALITYDropDown.soundType = "";
            WATER_QUALITYDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            WATER_QUALITYDropDown.visible = true;
            try 
            {
                WATER_QUALITYDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_LIGHTING_QUALITYLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                LIGHTING_QUALITYLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            LIGHTING_QUALITYLabel.autoSize = "none";
            LIGHTING_QUALITYLabel.enabled = true;
            LIGHTING_QUALITYLabel.enableInitCallback = false;
            LIGHTING_QUALITYLabel.text = "n/a";
            LIGHTING_QUALITYLabel.textAlign = "none";
            LIGHTING_QUALITYLabel.visible = true;
            try 
            {
                LIGHTING_QUALITYLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_LIGHTING_QUALITYDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                LIGHTING_QUALITYDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            LIGHTING_QUALITYDropDown.autoSize = "none";
            LIGHTING_QUALITYDropDown.dropdown = "DropdownMenu_ScrollingList";
            LIGHTING_QUALITYDropDown.enabled = true;
            LIGHTING_QUALITYDropDown.enableInitCallback = false;
            LIGHTING_QUALITYDropDown.focusable = true;
            LIGHTING_QUALITYDropDown.itemRenderer = "DropDownListItemRendererSound";
            LIGHTING_QUALITYDropDown.menuDirection = "down";
            LIGHTING_QUALITYDropDown.menuMargin = 1;
            LIGHTING_QUALITYDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            LIGHTING_QUALITYDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            LIGHTING_QUALITYDropDown.rowCount = 15;
            LIGHTING_QUALITYDropDown.menuRowsFixed = false;
            LIGHTING_QUALITYDropDown.menuWidth = -1;
            LIGHTING_QUALITYDropDown.menuWrapping = "normal";
            LIGHTING_QUALITYDropDown.scrollBar = "";
            LIGHTING_QUALITYDropDown.showEmptyItems = false;
            LIGHTING_QUALITYDropDown.soundId = "";
            LIGHTING_QUALITYDropDown.soundType = "";
            LIGHTING_QUALITYDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            LIGHTING_QUALITYDropDown.visible = true;
            try 
            {
                LIGHTING_QUALITYDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_SPEEDTREE_QUALITYLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                SPEEDTREE_QUALITYLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            SPEEDTREE_QUALITYLabel.autoSize = "none";
            SPEEDTREE_QUALITYLabel.enabled = true;
            SPEEDTREE_QUALITYLabel.enableInitCallback = false;
            SPEEDTREE_QUALITYLabel.text = "n/a";
            SPEEDTREE_QUALITYLabel.textAlign = "none";
            SPEEDTREE_QUALITYLabel.visible = true;
            try 
            {
                SPEEDTREE_QUALITYLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_SPEEDTREE_QUALITYDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                SPEEDTREE_QUALITYDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            SPEEDTREE_QUALITYDropDown.autoSize = "none";
            SPEEDTREE_QUALITYDropDown.dropdown = "DropdownMenu_ScrollingList";
            SPEEDTREE_QUALITYDropDown.enabled = true;
            SPEEDTREE_QUALITYDropDown.enableInitCallback = false;
            SPEEDTREE_QUALITYDropDown.focusable = true;
            SPEEDTREE_QUALITYDropDown.itemRenderer = "DropDownListItemRendererSound";
            SPEEDTREE_QUALITYDropDown.menuDirection = "down";
            SPEEDTREE_QUALITYDropDown.menuMargin = 1;
            SPEEDTREE_QUALITYDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            SPEEDTREE_QUALITYDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            SPEEDTREE_QUALITYDropDown.rowCount = 15;
            SPEEDTREE_QUALITYDropDown.menuRowsFixed = false;
            SPEEDTREE_QUALITYDropDown.menuWidth = -1;
            SPEEDTREE_QUALITYDropDown.menuWrapping = "normal";
            SPEEDTREE_QUALITYDropDown.scrollBar = "";
            SPEEDTREE_QUALITYDropDown.showEmptyItems = false;
            SPEEDTREE_QUALITYDropDown.soundId = "";
            SPEEDTREE_QUALITYDropDown.soundType = "";
            SPEEDTREE_QUALITYDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            SPEEDTREE_QUALITYDropDown.visible = true;
            try 
            {
                SPEEDTREE_QUALITYDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_FLORA_QUALITYLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                FLORA_QUALITYLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            FLORA_QUALITYLabel.autoSize = "none";
            FLORA_QUALITYLabel.enabled = true;
            FLORA_QUALITYLabel.enableInitCallback = false;
            FLORA_QUALITYLabel.text = "n/a";
            FLORA_QUALITYLabel.textAlign = "none";
            FLORA_QUALITYLabel.visible = true;
            try 
            {
                FLORA_QUALITYLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_FLORA_QUALITYDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                FLORA_QUALITYDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            FLORA_QUALITYDropDown.autoSize = "none";
            FLORA_QUALITYDropDown.dropdown = "DropdownMenu_ScrollingList";
            FLORA_QUALITYDropDown.enabled = true;
            FLORA_QUALITYDropDown.enableInitCallback = false;
            FLORA_QUALITYDropDown.focusable = true;
            FLORA_QUALITYDropDown.itemRenderer = "DropDownListItemRendererSound";
            FLORA_QUALITYDropDown.menuDirection = "down";
            FLORA_QUALITYDropDown.menuMargin = 1;
            FLORA_QUALITYDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            FLORA_QUALITYDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            FLORA_QUALITYDropDown.rowCount = 15;
            FLORA_QUALITYDropDown.menuRowsFixed = false;
            FLORA_QUALITYDropDown.menuWidth = -1;
            FLORA_QUALITYDropDown.menuWrapping = "normal";
            FLORA_QUALITYDropDown.scrollBar = "";
            FLORA_QUALITYDropDown.showEmptyItems = false;
            FLORA_QUALITYDropDown.soundId = "";
            FLORA_QUALITYDropDown.soundType = "";
            FLORA_QUALITYDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            FLORA_QUALITYDropDown.visible = true;
            try 
            {
                FLORA_QUALITYDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_EFFECTS_QUALITYLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                EFFECTS_QUALITYLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            EFFECTS_QUALITYLabel.autoSize = "none";
            EFFECTS_QUALITYLabel.enabled = true;
            EFFECTS_QUALITYLabel.enableInitCallback = false;
            EFFECTS_QUALITYLabel.text = "n/a";
            EFFECTS_QUALITYLabel.textAlign = "none";
            EFFECTS_QUALITYLabel.visible = true;
            try 
            {
                EFFECTS_QUALITYLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_EFFECTS_QUALITYDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                EFFECTS_QUALITYDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            EFFECTS_QUALITYDropDown.autoSize = "none";
            EFFECTS_QUALITYDropDown.dropdown = "DropdownMenu_ScrollingList";
            EFFECTS_QUALITYDropDown.enabled = true;
            EFFECTS_QUALITYDropDown.enableInitCallback = false;
            EFFECTS_QUALITYDropDown.focusable = true;
            EFFECTS_QUALITYDropDown.itemRenderer = "DropDownListItemRendererSound";
            EFFECTS_QUALITYDropDown.menuDirection = "down";
            EFFECTS_QUALITYDropDown.menuMargin = 1;
            EFFECTS_QUALITYDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            EFFECTS_QUALITYDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            EFFECTS_QUALITYDropDown.rowCount = 15;
            EFFECTS_QUALITYDropDown.menuRowsFixed = false;
            EFFECTS_QUALITYDropDown.menuWidth = -1;
            EFFECTS_QUALITYDropDown.menuWrapping = "normal";
            EFFECTS_QUALITYDropDown.scrollBar = "";
            EFFECTS_QUALITYDropDown.showEmptyItems = false;
            EFFECTS_QUALITYDropDown.soundId = "";
            EFFECTS_QUALITYDropDown.soundType = "";
            EFFECTS_QUALITYDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            EFFECTS_QUALITYDropDown.visible = true;
            try 
            {
                EFFECTS_QUALITYDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_POST_PROCESSING_QUALITYLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                POST_PROCESSING_QUALITYLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            POST_PROCESSING_QUALITYLabel.autoSize = "none";
            POST_PROCESSING_QUALITYLabel.enabled = true;
            POST_PROCESSING_QUALITYLabel.enableInitCallback = false;
            POST_PROCESSING_QUALITYLabel.text = "n/a";
            POST_PROCESSING_QUALITYLabel.textAlign = "none";
            POST_PROCESSING_QUALITYLabel.visible = true;
            try 
            {
                POST_PROCESSING_QUALITYLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_POST_PROCESSING_QUALITYDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                POST_PROCESSING_QUALITYDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            POST_PROCESSING_QUALITYDropDown.autoSize = "none";
            POST_PROCESSING_QUALITYDropDown.dropdown = "DropdownMenu_ScrollingList";
            POST_PROCESSING_QUALITYDropDown.enabled = true;
            POST_PROCESSING_QUALITYDropDown.enableInitCallback = false;
            POST_PROCESSING_QUALITYDropDown.focusable = true;
            POST_PROCESSING_QUALITYDropDown.itemRenderer = "DropDownListItemRendererSound";
            POST_PROCESSING_QUALITYDropDown.menuDirection = "down";
            POST_PROCESSING_QUALITYDropDown.menuMargin = 1;
            POST_PROCESSING_QUALITYDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            POST_PROCESSING_QUALITYDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            POST_PROCESSING_QUALITYDropDown.rowCount = 15;
            POST_PROCESSING_QUALITYDropDown.menuRowsFixed = false;
            POST_PROCESSING_QUALITYDropDown.menuWidth = -1;
            POST_PROCESSING_QUALITYDropDown.menuWrapping = "normal";
            POST_PROCESSING_QUALITYDropDown.scrollBar = "";
            POST_PROCESSING_QUALITYDropDown.showEmptyItems = false;
            POST_PROCESSING_QUALITYDropDown.soundId = "";
            POST_PROCESSING_QUALITYDropDown.soundType = "";
            POST_PROCESSING_QUALITYDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            POST_PROCESSING_QUALITYDropDown.visible = true;
            try 
            {
                POST_PROCESSING_QUALITYDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_FAR_PLANELabel_GraphicSettings_ui_0():*
        {
            try 
            {
                FAR_PLANELabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            FAR_PLANELabel.autoSize = "none";
            FAR_PLANELabel.enabled = true;
            FAR_PLANELabel.enableInitCallback = false;
            FAR_PLANELabel.text = "n/a";
            FAR_PLANELabel.textAlign = "none";
            FAR_PLANELabel.visible = true;
            try 
            {
                FAR_PLANELabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_FAR_PLANEDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                FAR_PLANEDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            FAR_PLANEDropDown.autoSize = "none";
            FAR_PLANEDropDown.dropdown = "DropdownMenu_ScrollingList";
            FAR_PLANEDropDown.enabled = true;
            FAR_PLANEDropDown.enableInitCallback = false;
            FAR_PLANEDropDown.focusable = true;
            FAR_PLANEDropDown.itemRenderer = "DropDownListItemRendererSound";
            FAR_PLANEDropDown.menuDirection = "down";
            FAR_PLANEDropDown.menuMargin = 1;
            FAR_PLANEDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            FAR_PLANEDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            FAR_PLANEDropDown.rowCount = 15;
            FAR_PLANEDropDown.menuRowsFixed = false;
            FAR_PLANEDropDown.menuWidth = -1;
            FAR_PLANEDropDown.menuWrapping = "normal";
            FAR_PLANEDropDown.scrollBar = "";
            FAR_PLANEDropDown.showEmptyItems = false;
            FAR_PLANEDropDown.soundId = "";
            FAR_PLANEDropDown.soundType = "";
            FAR_PLANEDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            FAR_PLANEDropDown.visible = true;
            try 
            {
                FAR_PLANEDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_OBJECT_LODLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                OBJECT_LODLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            OBJECT_LODLabel.autoSize = "none";
            OBJECT_LODLabel.enabled = true;
            OBJECT_LODLabel.enableInitCallback = false;
            OBJECT_LODLabel.text = "n/a";
            OBJECT_LODLabel.textAlign = "none";
            OBJECT_LODLabel.visible = true;
            try 
            {
                OBJECT_LODLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_OBJECT_LODDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                OBJECT_LODDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            OBJECT_LODDropDown.autoSize = "none";
            OBJECT_LODDropDown.dropdown = "DropdownMenu_ScrollingList";
            OBJECT_LODDropDown.enabled = true;
            OBJECT_LODDropDown.enableInitCallback = false;
            OBJECT_LODDropDown.focusable = true;
            OBJECT_LODDropDown.itemRenderer = "DropDownListItemRendererSound";
            OBJECT_LODDropDown.menuDirection = "down";
            OBJECT_LODDropDown.menuMargin = 1;
            OBJECT_LODDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            OBJECT_LODDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            OBJECT_LODDropDown.rowCount = 15;
            OBJECT_LODDropDown.menuRowsFixed = false;
            OBJECT_LODDropDown.menuWidth = -1;
            OBJECT_LODDropDown.menuWrapping = "normal";
            OBJECT_LODDropDown.scrollBar = "";
            OBJECT_LODDropDown.showEmptyItems = false;
            OBJECT_LODDropDown.soundId = "";
            OBJECT_LODDropDown.soundType = "";
            OBJECT_LODDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            OBJECT_LODDropDown.visible = true;
            try 
            {
                OBJECT_LODDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_SNIPER_MODE_EFFECTS_QUALITYLabel_GraphicSettings_ui_0():*
        {
            try 
            {
                SNIPER_MODE_EFFECTS_QUALITYLabel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            SNIPER_MODE_EFFECTS_QUALITYLabel.autoSize = "none";
            SNIPER_MODE_EFFECTS_QUALITYLabel.enabled = true;
            SNIPER_MODE_EFFECTS_QUALITYLabel.enableInitCallback = false;
            SNIPER_MODE_EFFECTS_QUALITYLabel.text = "n/a";
            SNIPER_MODE_EFFECTS_QUALITYLabel.textAlign = "none";
            SNIPER_MODE_EFFECTS_QUALITYLabel.visible = true;
            try 
            {
                SNIPER_MODE_EFFECTS_QUALITYLabel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_SNIPER_MODE_EFFECTS_QUALITYDropDown_GraphicSettings_ui_0():*
        {
            try 
            {
                SNIPER_MODE_EFFECTS_QUALITYDropDown["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            SNIPER_MODE_EFFECTS_QUALITYDropDown.autoSize = "none";
            SNIPER_MODE_EFFECTS_QUALITYDropDown.dropdown = "DropdownMenu_ScrollingList";
            SNIPER_MODE_EFFECTS_QUALITYDropDown.enabled = true;
            SNIPER_MODE_EFFECTS_QUALITYDropDown.enableInitCallback = false;
            SNIPER_MODE_EFFECTS_QUALITYDropDown.focusable = true;
            SNIPER_MODE_EFFECTS_QUALITYDropDown.itemRenderer = "DropDownListItemRendererSound";
            SNIPER_MODE_EFFECTS_QUALITYDropDown.menuDirection = "down";
            SNIPER_MODE_EFFECTS_QUALITYDropDown.menuMargin = 1;
            SNIPER_MODE_EFFECTS_QUALITYDropDown.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            SNIPER_MODE_EFFECTS_QUALITYDropDown.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            SNIPER_MODE_EFFECTS_QUALITYDropDown.rowCount = 15;
            SNIPER_MODE_EFFECTS_QUALITYDropDown.menuRowsFixed = false;
            SNIPER_MODE_EFFECTS_QUALITYDropDown.menuWidth = -1;
            SNIPER_MODE_EFFECTS_QUALITYDropDown.menuWrapping = "normal";
            SNIPER_MODE_EFFECTS_QUALITYDropDown.scrollBar = "";
            SNIPER_MODE_EFFECTS_QUALITYDropDown.showEmptyItems = false;
            SNIPER_MODE_EFFECTS_QUALITYDropDown.soundId = "";
            SNIPER_MODE_EFFECTS_QUALITYDropDown.soundType = "";
            SNIPER_MODE_EFFECTS_QUALITYDropDown.inspectableThumbOffset = {"top":0, "bottom":0};
            SNIPER_MODE_EFFECTS_QUALITYDropDown.visible = true;
            try 
            {
                SNIPER_MODE_EFFECTS_QUALITYDropDown["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
