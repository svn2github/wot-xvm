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
    import net.wg.gui.lobby.vehicleInfo.*;
    
    public dynamic class vehicleInfoUI extends net.wg.gui.lobby.vehicleInfo.VehicleInfo
    {
        public function vehicleInfoUI()
        {
            super();
            this.__setProp_closeBtn_vehicleInfoUI_btn_0();
            this.__setProp_view_vehicleInfoUI_viewStack_0();
            this.__setProp_tabs_vehicleInfoUI_tabs_0();
            this.__setProp_vehicleIcon_vehicleInfoUI_vehicleIcon_0();
            this.__setProp_descriptionField_vehicleInfoUI_descriptionField_0();
            return;
        }

        internal function __setProp_closeBtn_vehicleInfoUI_btn_0():*
        {
            try 
            {
                closeBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            closeBtn.autoRepeat = false;
            closeBtn.autoSize = "none";
            closeBtn.data = "";
            closeBtn.enabled = true;
            closeBtn.enableInitCallback = false;
            closeBtn.fillPadding = 0;
            closeBtn.focusable = true;
            closeBtn.label = "#menu:moduleInfo/closeBtn";
            closeBtn.paddingHorizontal = 5;
            closeBtn.selected = false;
            closeBtn.soundId = "";
            closeBtn.soundType = "closeWindow";
            closeBtn.toggle = false;
            closeBtn.visible = true;
            try 
            {
                closeBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_view_vehicleInfoUI_viewStack_0():*
        {
            try 
            {
                view["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            view.cache = true;
            view.enabled = true;
            view.enableInitCallback = false;
            view.targetGroup = "tabs";
            view.visible = true;
            try 
            {
                view["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_tabs_vehicleInfoUI_tabs_0():*
        {
            try 
            {
                tabs["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tabs.autoSize = "right";
            tabs.buttonWidth = 0;
            tabs.direction = "horizontal";
            tabs.enabled = true;
            tabs.enableInitCallback = false;
            tabs.focusable = true;
            tabs.itemRendererName = "TabButton";
            tabs.paddingHorizontal = 10;
            tabs.spacing = 0;
            tabs.visible = true;
            try 
            {
                tabs["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vehicleIcon_vehicleInfoUI_vehicleIcon_0():*
        {
            try 
            {
                vehicleIcon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vehicleIcon.enabled = true;
            vehicleIcon.enableInitCallback = false;
            vehicleIcon.favorite = false;
            vehicleIcon.image = "../maps/icons/vehicle/ussr-PzIV_capt.png";
            vehicleIcon.isElite = false;
            vehicleIcon.isPremium = false;
            vehicleIcon.level = 1;
            vehicleIcon.multyXpVal = 1;
            vehicleIcon.nation = 0;
            vehicleIcon.nationName = "ussr";
            vehicleIcon.showMultyXp = true;
            vehicleIcon.showName = true;
            vehicleIcon.showXp = false;
            vehicleIcon.tankName = "";
            vehicleIcon.tankType = "lightTank";
            vehicleIcon.visible = true;
            vehicleIcon.xpVal = 0;
            try 
            {
                vehicleIcon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_descriptionField_vehicleInfoUI_descriptionField_0():*
        {
            try 
            {
                descriptionField["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            descriptionField.actAsButton = false;
            descriptionField.autoScroll = false;
            descriptionField.defaultText = "";
            descriptionField.displayAsPassword = false;
            descriptionField.editable = false;
            descriptionField.enabled = true;
            descriptionField.enableInitCallback = false;
            descriptionField.focusable = true;
            descriptionField.maxChars = 0;
            descriptionField.minThumbSize = 1;
            descriptionField.scrollBar = "ScrollBar";
            descriptionField.showBgForm = false;
            descriptionField.text = "";
            descriptionField.thumbOffset = {"top":0, "bottom":0};
            descriptionField.visible = true;
            try 
            {
                descriptionField["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
