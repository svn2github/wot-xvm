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
    import net.wg.gui.lobby.vehicleBuyWindow.*;
    
    public dynamic class BodyMc_UI extends net.wg.gui.lobby.vehicleBuyWindow.BodyMc
    {
        public function BodyMc_UI()
        {
            super();
            this.__setProp_slotPrice_BodyMc_UI_buttons_0();
            this.__setProp_ammoPrice_BodyMc_UI_buttons_0();
            this.__setProp_slotCheckbox_BodyMc_UI_checkboxes_0();
            this.__setProp_ammoCheckbox_BodyMc_UI_checkboxes_0();
            this.__setProp_crewCheckbox_BodyMc_UI_checkboxes_0();
            this.__setProp_academyBtn_BodyMc_UI_slotPrice_0();
            this.__setProp_scoolBtn_BodyMc_UI_slotPrice_0();
            return;
        }

        internal function __setProp_slotPrice_BodyMc_UI_buttons_0():*
        {
            try 
            {
                slotPrice["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            slotPrice.antiAliasing = "advanced";
            slotPrice.enabled = true;
            slotPrice.enableInitCallback = false;
            slotPrice.fitIconPosition = false;
            slotPrice.icon = "gold";
            slotPrice.iconPosition = "right";
            slotPrice.text = "300";
            slotPrice.textAlign = "right";
            slotPrice.textColor = 16314069;
            slotPrice.textFont = "$FieldFont";
            slotPrice.textSize = 14;
            slotPrice.toolTip = "";
            slotPrice.visible = true;
            try 
            {
                slotPrice["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_ammoPrice_BodyMc_UI_buttons_0():*
        {
            try 
            {
                ammoPrice["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            ammoPrice.antiAliasing = "advanced";
            ammoPrice.enabled = true;
            ammoPrice.enableInitCallback = false;
            ammoPrice.fitIconPosition = false;
            ammoPrice.icon = "credits";
            ammoPrice.iconPosition = "right";
            ammoPrice.text = "1000";
            ammoPrice.textAlign = "right";
            ammoPrice.textColor = 13556185;
            ammoPrice.textFont = "$FieldFont";
            ammoPrice.textSize = 14;
            ammoPrice.toolTip = "";
            ammoPrice.visible = true;
            try 
            {
                ammoPrice["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_slotCheckbox_BodyMc_UI_checkboxes_0():*
        {
            try 
            {
                slotCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            slotCheckbox.autoSize = "none";
            slotCheckbox.data = "";
            slotCheckbox.enabled = true;
            slotCheckbox.enableInitCallback = false;
            slotCheckbox.focusable = true;
            slotCheckbox.label = "checkBox";
            slotCheckbox.selected = false;
            slotCheckbox.soundId = "";
            slotCheckbox.soundType = "";
            slotCheckbox.textColor = 11315626;
            slotCheckbox.textFont = "$FieldFont";
            slotCheckbox.textSize = 13;
            slotCheckbox.visible = true;
            try 
            {
                slotCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_ammoCheckbox_BodyMc_UI_checkboxes_0():*
        {
            try 
            {
                ammoCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            ammoCheckbox.autoSize = "none";
            ammoCheckbox.data = "";
            ammoCheckbox.enabled = true;
            ammoCheckbox.enableInitCallback = false;
            ammoCheckbox.focusable = true;
            ammoCheckbox.label = "checkBox";
            ammoCheckbox.selected = false;
            ammoCheckbox.soundId = "";
            ammoCheckbox.soundType = "";
            ammoCheckbox.textColor = 11315626;
            ammoCheckbox.textFont = "$FieldFont";
            ammoCheckbox.textSize = 13;
            ammoCheckbox.visible = true;
            try 
            {
                ammoCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_crewCheckbox_BodyMc_UI_checkboxes_0():*
        {
            try 
            {
                crewCheckbox["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            crewCheckbox.autoSize = "none";
            crewCheckbox.data = "";
            crewCheckbox.enabled = true;
            crewCheckbox.enableInitCallback = false;
            crewCheckbox.focusable = true;
            crewCheckbox.label = "checkBox";
            crewCheckbox.selected = false;
            crewCheckbox.soundId = "";
            crewCheckbox.soundType = "";
            crewCheckbox.textColor = 11315626;
            crewCheckbox.textFont = "$FieldFont";
            crewCheckbox.textSize = 13;
            crewCheckbox.visible = true;
            try 
            {
                crewCheckbox["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_academyBtn_BodyMc_UI_slotPrice_0():*
        {
            try 
            {
                academyBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            academyBtn.autoRepeat = false;
            academyBtn.autoSize = "none";
            academyBtn.buy = false;
            academyBtn.data = "";
            academyBtn.enabled = true;
            academyBtn.enableInitCallback = false;
            academyBtn.focusable = true;
            academyBtn.label = "";
            academyBtn.selected = false;
            academyBtn.soundId = "";
            academyBtn.soundType = "normal";
            academyBtn.toggle = false;
            academyBtn.type = "academy";
            academyBtn.visible = true;
            try 
            {
                academyBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_scoolBtn_BodyMc_UI_slotPrice_0():*
        {
            try 
            {
                scoolBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            scoolBtn.autoRepeat = false;
            scoolBtn.autoSize = "none";
            scoolBtn.buy = false;
            scoolBtn.data = "";
            scoolBtn.enabled = true;
            scoolBtn.enableInitCallback = false;
            scoolBtn.focusable = true;
            scoolBtn.label = "";
            scoolBtn.selected = false;
            scoolBtn.soundId = "";
            scoolBtn.soundType = "normal";
            scoolBtn.toggle = false;
            scoolBtn.type = "scool";
            scoolBtn.visible = true;
            try 
            {
                scoolBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
