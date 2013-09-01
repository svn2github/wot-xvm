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
    
    public dynamic class shellViewUI extends net.wg.gui.lobby.store.views.ShellView
    {
        public function shellViewUI()
        {
            super();
            addFrameScript(0, this.frame1, 1, this.frame2);
            this.__setProp_highExplosiveChkBox_shellView_highExplosiveChkBox_0();
            this.__setProp_hollowChargeChkBox_shellView_hollowChargeChkBox_0();
            this.__setProp_armorPiercingCRChkBox_shellView_armorPiercingCRChkBox_0();
            this.__setProp_armorPiercingChkBox_shellView_armorPiercingChkBox_0();
            this.__setProp_myVehicleRadioBtn_shellView_myVehicleGun_0();
            this.__setProp_fitsSelectDropDn_shellView_fitsSelect_0();
            this.__setProp_myInventoryGunsRadioBtn_shellView_myInventoryGuns_0();
            this.__setProp_myVehiclesInventoryGunsRadioBtn_shellView_myVehiclesInventoryGuns_0();
            this.__setProp_otherGunsRadioBtn_shellView_otherGuns_0();
            return;
        }

        internal function __setProp_highExplosiveChkBox_shellView_highExplosiveChkBox_0():*
        {
            try 
            {
                highExplosiveChkBox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            highExplosiveChkBox.autoSize = "none";
            highExplosiveChkBox.data = "";
            highExplosiveChkBox.enabled = true;
            highExplosiveChkBox.enableInitCallback = false;
            highExplosiveChkBox.focusable = true;
            highExplosiveChkBox.label = "checkBox";
            highExplosiveChkBox.selected = false;
            highExplosiveChkBox.soundId = "";
            highExplosiveChkBox.soundType = "";
            highExplosiveChkBox.visible = true;
            try 
            {
                highExplosiveChkBox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_hollowChargeChkBox_shellView_hollowChargeChkBox_0():*
        {
            try 
            {
                hollowChargeChkBox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            hollowChargeChkBox.autoSize = "none";
            hollowChargeChkBox.data = "";
            hollowChargeChkBox.enabled = true;
            hollowChargeChkBox.enableInitCallback = false;
            hollowChargeChkBox.focusable = true;
            hollowChargeChkBox.label = "checkBox";
            hollowChargeChkBox.selected = false;
            hollowChargeChkBox.soundId = "";
            hollowChargeChkBox.soundType = "";
            hollowChargeChkBox.visible = true;
            try 
            {
                hollowChargeChkBox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_armorPiercingCRChkBox_shellView_armorPiercingCRChkBox_0():*
        {
            try 
            {
                armorPiercingCRChkBox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            armorPiercingCRChkBox.autoSize = "none";
            armorPiercingCRChkBox.data = "";
            armorPiercingCRChkBox.enabled = true;
            armorPiercingCRChkBox.enableInitCallback = false;
            armorPiercingCRChkBox.focusable = true;
            armorPiercingCRChkBox.label = "checkBox";
            armorPiercingCRChkBox.selected = false;
            armorPiercingCRChkBox.soundId = "";
            armorPiercingCRChkBox.soundType = "";
            armorPiercingCRChkBox.visible = true;
            try 
            {
                armorPiercingCRChkBox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_armorPiercingChkBox_shellView_armorPiercingChkBox_0():*
        {
            try 
            {
                armorPiercingChkBox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            armorPiercingChkBox.autoSize = "none";
            armorPiercingChkBox.data = "";
            armorPiercingChkBox.enabled = true;
            armorPiercingChkBox.enableInitCallback = false;
            armorPiercingChkBox.focusable = true;
            armorPiercingChkBox.label = "checkBox";
            armorPiercingChkBox.selected = false;
            armorPiercingChkBox.soundId = "";
            armorPiercingChkBox.soundType = "";
            armorPiercingChkBox.visible = true;
            try 
            {
                armorPiercingChkBox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_myVehicleRadioBtn_shellView_myVehicleGun_0():*
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
            myVehicleRadioBtn.groupName = "shellGroup";
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

        internal function __setProp_fitsSelectDropDn_shellView_fitsSelect_0():*
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

        internal function __setProp_myInventoryGunsRadioBtn_shellView_myInventoryGuns_0():*
        {
            try 
            {
                myInventoryGunsRadioBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            myInventoryGunsRadioBtn.autoSize = "none";
            myInventoryGunsRadioBtn.data = "";
            myInventoryGunsRadioBtn.enabled = true;
            myInventoryGunsRadioBtn.enableInitCallback = false;
            myInventoryGunsRadioBtn.focusable = true;
            myInventoryGunsRadioBtn.groupName = "fitsGroup";
            myInventoryGunsRadioBtn.label = "";
            myInventoryGunsRadioBtn.selected = false;
            myInventoryGunsRadioBtn.soundId = "";
            myInventoryGunsRadioBtn.soundType = "";
            myInventoryGunsRadioBtn.visible = false;
            try 
            {
                myInventoryGunsRadioBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_myVehiclesInventoryGunsRadioBtn_shellView_myVehiclesInventoryGuns_0():*
        {
            try 
            {
                myVehiclesInventoryGunsRadioBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            myVehiclesInventoryGunsRadioBtn.autoSize = "none";
            myVehiclesInventoryGunsRadioBtn.data = "";
            myVehiclesInventoryGunsRadioBtn.enabled = true;
            myVehiclesInventoryGunsRadioBtn.enableInitCallback = false;
            myVehiclesInventoryGunsRadioBtn.focusable = true;
            myVehiclesInventoryGunsRadioBtn.groupName = "shellGroup";
            myVehiclesInventoryGunsRadioBtn.label = "";
            myVehiclesInventoryGunsRadioBtn.selected = false;
            myVehiclesInventoryGunsRadioBtn.soundId = "";
            myVehiclesInventoryGunsRadioBtn.soundType = "";
            myVehiclesInventoryGunsRadioBtn.visible = true;
            try 
            {
                myVehiclesInventoryGunsRadioBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_otherGunsRadioBtn_shellView_otherGuns_0():*
        {
            try 
            {
                otherGunsRadioBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            otherGunsRadioBtn.autoSize = "none";
            otherGunsRadioBtn.data = "";
            otherGunsRadioBtn.enabled = true;
            otherGunsRadioBtn.enableInitCallback = false;
            otherGunsRadioBtn.focusable = true;
            otherGunsRadioBtn.groupName = "shellGroup";
            otherGunsRadioBtn.label = "";
            otherGunsRadioBtn.selected = false;
            otherGunsRadioBtn.soundId = "";
            otherGunsRadioBtn.soundType = "";
            otherGunsRadioBtn.visible = true;
            try 
            {
                otherGunsRadioBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function frame1():*
        {
            stop();
            return;
        }

        internal function frame2():*
        {
            stop();
            return;
        }
    }
}
