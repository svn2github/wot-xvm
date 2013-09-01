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
    
    public dynamic class EmblemGroupViewUICopy extends net.wg.gui.lobby.customization.BaseTimedCustomizationGroupView
    {
        public function EmblemGroupViewUICopy()
        {
            super();
            this.__setProp_list_EmblemGroupViewUICopy_list_0();
            this.__setProp_rentalPackageList_EmblemGroupViewUICopy_list_0();
            return;
        }

        internal function __setProp_list_EmblemGroupViewUICopy_list_0():*
        {
            try 
            {
                list["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            list.columnWidth = 80;
            list.direction = "vertical";
            list.enabled = true;
            list.enableInitCallback = false;
            list.externalColumnCount = 0;
            list.focusable = true;
            list.itemRendererName = "TextureItemRendererUI";
            list.itemRendererInstanceName = "";
            list.margin = 0;
            list.inspectablePadding = {"top":9, "right":1, "bottom":0, "left":14};
            list.paddingBottom = 0;
            list.paddingRight = 0;
            list.rowHeight = 80;
            list.scrollBar = "ScrollBar";
            list.showEmptyItems = false;
            list.visible = true;
            list.wrapping = "stick";
            try 
            {
                list["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_rentalPackageList_EmblemGroupViewUICopy_list_0():*
        {
            try 
            {
                rentalPackageList["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            rentalPackageList.enabled = true;
            rentalPackageList.enableInitCallback = false;
            rentalPackageList.focusable = true;
            rentalPackageList.itemRendererName = "RentalPackageItemRendererUI";
            rentalPackageList.itemRendererInstanceName = "";
            rentalPackageList.margin = 0;
            rentalPackageList.inspectablePadding = {"top":0, "right":0, "bottom":0, "left":4};
            rentalPackageList.rowHeight = 23;
            rentalPackageList.scrollBar = "scrollBar";
            rentalPackageList.visible = true;
            rentalPackageList.wrapping = "normal";
            try 
            {
                rentalPackageList["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
