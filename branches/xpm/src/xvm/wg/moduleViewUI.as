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
    import net.wg.gui.lobby.store.views.*;
    
    public dynamic class moduleViewUI extends net.wg.gui.lobby.store.views.ModuleView
    {
        public function moduleViewUI()
        {
            this.__setPropDict = new flash.utils.Dictionary(true);
            super();
            addFrameScript(0, this.frame1, 1, this.frame2);
            this.__setProp_myVehicleRadioBtn_moduleView_myVehicle_0();
            this.__setProp_fitsSelectDropDn_moduleView_fitsSelect_0();
            this.__setProp_myVehiclesRadioBtn_moduleView_myVehicles_0();
            this.__setProp_otherVehiclesRadioBtn_moduleView_otherVehicles_0();
            return;
        }

        internal function __setProp_lockedChkBx_moduleView_locked_0():*
        {
            if (this.__setPropDict[lockedChkBx] == undefined || !(int(this.__setPropDict[lockedChkBx]) == 1)) 
            {
                this.__setPropDict[lockedChkBx] = 1;
                try 
                {
                    lockedChkBx["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                lockedChkBx.autoSize = "none";
                lockedChkBx.data = "";
                lockedChkBx.enabled = true;
                lockedChkBx.enableInitCallback = false;
                lockedChkBx.focusable = true;
                lockedChkBx.label = "";
                lockedChkBx.selected = false;
                lockedChkBx.soundId = "";
                lockedChkBx.soundType = "";
                lockedChkBx.visible = true;
                try 
                {
                    lockedChkBx["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_lockedChkBx_moduleView_locked_1():*
        {
            if (this.__setPropDict[lockedChkBx] == undefined || !(int(this.__setPropDict[lockedChkBx]) == 2)) 
            {
                this.__setPropDict[lockedChkBx] = 2;
                try 
                {
                    lockedChkBx["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                lockedChkBx.autoSize = "none";
                lockedChkBx.data = "";
                lockedChkBx.enabled = true;
                lockedChkBx.enableInitCallback = false;
                lockedChkBx.focusable = true;
                lockedChkBx.label = "";
                lockedChkBx.selected = false;
                lockedChkBx.soundId = "";
                lockedChkBx.soundType = "";
                lockedChkBx.visible = false;
                try 
                {
                    lockedChkBx["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_inHangarChkBx_moduleView_inHangar_0():*
        {
            if (this.__setPropDict[inHangarChkBx] == undefined || !(int(this.__setPropDict[inHangarChkBx]) == 1)) 
            {
                this.__setPropDict[inHangarChkBx] = 1;
                try 
                {
                    inHangarChkBx["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                inHangarChkBx.autoSize = "none";
                inHangarChkBx.data = "";
                inHangarChkBx.enabled = true;
                inHangarChkBx.enableInitCallback = false;
                inHangarChkBx.focusable = true;
                inHangarChkBx.label = "";
                inHangarChkBx.selected = false;
                inHangarChkBx.soundId = "";
                inHangarChkBx.soundType = "";
                inHangarChkBx.visible = true;
                try 
                {
                    inHangarChkBx["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_inHangarChkBx_moduleView_inHangar_1():*
        {
            if (this.__setPropDict[inHangarChkBx] == undefined || !(int(this.__setPropDict[inHangarChkBx]) == 2)) 
            {
                this.__setPropDict[inHangarChkBx] = 2;
                try 
                {
                    inHangarChkBx["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                inHangarChkBx.autoSize = "none";
                inHangarChkBx.data = "";
                inHangarChkBx.enabled = true;
                inHangarChkBx.enableInitCallback = false;
                inHangarChkBx.focusable = true;
                inHangarChkBx.label = "";
                inHangarChkBx.selected = false;
                inHangarChkBx.soundId = "";
                inHangarChkBx.soundType = "";
                inHangarChkBx.visible = false;
                try 
                {
                    inHangarChkBx["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_myVehicleRadioBtn_moduleView_myVehicle_0():*
        {
            try 
            {
                myVehicleRadioBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            myVehicleRadioBtn.autoSize = "none";
            myVehicleRadioBtn.data = "";
            myVehicleRadioBtn.enabled = true;
            myVehicleRadioBtn.enableInitCallback = false;
            myVehicleRadioBtn.focusable = true;
            myVehicleRadioBtn.groupName = "moduleFitsGroup";
            myVehicleRadioBtn.label = "";
            myVehicleRadioBtn.selected = false;
            myVehicleRadioBtn.soundId = "";
            myVehicleRadioBtn.soundType = "";
            myVehicleRadioBtn.visible = true;
            try 
            {
                myVehicleRadioBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_fitsSelectDropDn_moduleView_fitsSelect_0():*
        {
            try 
            {
                fitsSelectDropDn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            fitsSelectDropDn.autoSize = "none";
            fitsSelectDropDn.dropdown = "DropdownMenu_ScrollingList";
            fitsSelectDropDn.enabled = true;
            fitsSelectDropDn.enableInitCallback = false;
            fitsSelectDropDn.focusable = true;
            fitsSelectDropDn.itemRenderer = "DropDownListItemRendererSound";
            fitsSelectDropDn.menuDirection = "down";
            fitsSelectDropDn.menuMargin = 3;
            fitsSelectDropDn.inspectableMenuOffset = {"top":-5, "right":0, "bottom":0, "left":3};
            fitsSelectDropDn.inspectableMenuPadding = {"top":0, "right":0, "bottom":0, "left":0};
            fitsSelectDropDn.rowCount = 13;
            fitsSelectDropDn.menuRowsFixed = false;
            fitsSelectDropDn.menuWidth = -1;
            fitsSelectDropDn.menuWrapping = "normal";
            fitsSelectDropDn.scrollBar = "";
            fitsSelectDropDn.showEmptyItems = false;
            fitsSelectDropDn.soundId = "";
            fitsSelectDropDn.soundType = "";
            fitsSelectDropDn.inspectableThumbOffset = {"top":0, "bottom":0};
            fitsSelectDropDn.visible = true;
            try 
            {
                fitsSelectDropDn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_myVehiclesRadioBtn_moduleView_myVehicles_0():*
        {
            try 
            {
                myVehiclesRadioBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            myVehiclesRadioBtn.autoSize = "none";
            myVehiclesRadioBtn.data = "";
            myVehiclesRadioBtn.enabled = true;
            myVehiclesRadioBtn.enableInitCallback = false;
            myVehiclesRadioBtn.focusable = true;
            myVehiclesRadioBtn.groupName = "moduleFitsGroup";
            myVehiclesRadioBtn.label = "";
            myVehiclesRadioBtn.selected = false;
            myVehiclesRadioBtn.soundId = "";
            myVehiclesRadioBtn.soundType = "";
            myVehiclesRadioBtn.visible = true;
            try 
            {
                myVehiclesRadioBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_otherVehiclesRadioBtn_moduleView_otherVehicles_0():*
        {
            try 
            {
                otherVehiclesRadioBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            otherVehiclesRadioBtn.autoSize = "none";
            otherVehiclesRadioBtn.data = "";
            otherVehiclesRadioBtn.enabled = true;
            otherVehiclesRadioBtn.enableInitCallback = false;
            otherVehiclesRadioBtn.focusable = true;
            otherVehiclesRadioBtn.groupName = "moduleFitsGroup";
            otherVehiclesRadioBtn.label = "";
            otherVehiclesRadioBtn.selected = false;
            otherVehiclesRadioBtn.soundId = "";
            otherVehiclesRadioBtn.soundType = "";
            otherVehiclesRadioBtn.visible = true;
            try 
            {
                otherVehiclesRadioBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function frame1():*
        {
            this.__setProp_inHangarChkBx_moduleView_inHangar_0();
            this.__setProp_lockedChkBx_moduleView_locked_0();
            stop();
            return;
        }

        internal function frame2():*
        {
            this.__setProp_inHangarChkBx_moduleView_inHangar_1();
            this.__setProp_lockedChkBx_moduleView_locked_1();
            stop();
            return;
        }

        public var __setPropDict:flash.utils.Dictionary;
    }
}
