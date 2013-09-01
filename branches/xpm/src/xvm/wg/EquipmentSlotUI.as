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
    import net.wg.gui.lobby.hangar.ammunitionPanel.*;
    
    public dynamic class EquipmentSlotUI extends net.wg.gui.lobby.hangar.ammunitionPanel.EquipmentSlot
    {
        public function EquipmentSlotUI()
        {
            super();
            this.__setProp_select_EquipmentSlotUI_select_0();
            this.__setProp_icon_EquipmentSlotUI_icon_0();
            return;
        }

        internal function __setProp_select_EquipmentSlotUI_select_0():*
        {
            try 
            {
                select["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            select.autoSize = "none";
            select.dropdown = "";
            select.enabled = true;
            select.enableInitCallback = false;
            select.focusable = true;
            select.itemRenderer = "";
            select.menuDirection = "up";
            select.menuMargin = 1;
            select.inspectableMenuOffset = {"top":-1, "right":-363, "bottom":0, "left":0};
            select.inspectableMenuPadding = {"top":4, "right":4, "bottom":5, "left":4};
            select.rowCount = 5;
            select.menuRowsFixed = false;
            select.menuWidth = 431;
            select.menuWrapping = "normal";
            select.scrollBar = "";
            select.showEmptyItems = true;
            select.soundId = "tankEquipment";
            select.soundType = "fittingButton";
            select.inspectableThumbOffset = {"top":0, "bottom":0};
            select.visible = true;
            try 
            {
                select["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_icon_EquipmentSlotUI_icon_0():*
        {
            try 
            {
                icon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            icon.autoSize = true;
            icon.enableInitCallback = false;
            icon.maintainAspectRatio = true;
            icon.source = "";
            icon.sourceAlt = "../maps/icons/artefact/notFound.png";
            icon.visible = true;
            try 
            {
                icon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
