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
    import net.wg.gui.lobby.store.inventory.*;
    
    public dynamic class InventoryUI extends net.wg.gui.lobby.store.inventory.Inventory
    {
        public function InventoryUI()
        {
            super();
            this.__setProp_menu_inventory_menu_0();
            this.__setProp_storeTable_inventory_storeTable_0();
            this.__setProp_title_inventory_title_0();
            return;
        }

        internal function __setProp_menu_inventory_menu_0():*
        {
            try 
            {
                menu["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            menu.backgroundType = "gray";
            menu.enabled = true;
            menu.enableHeaderConstraints = true;
            menu.enableInitCallback = false;
            menu.focusable = true;
            menu.itemRendererName = "BigAccrodionSoundRenderer";
            menu.margin = 0;
            menu.paddingBottom = 0;
            menu.paddingLeft = 0;
            menu.paddingTop = 0;
            menu.rowHeight = 33;
            menu.showBackground = true;
            menu.visible = true;
            try 
            {
                menu["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_storeTable_inventory_storeTable_0():*
        {
            try 
            {
                storeTable["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            storeTable.enabled = true;
            storeTable.enableInitCallback = false;
            storeTable.rightOrientedCount = true;
            storeTable.visible = true;
            try 
            {
                storeTable["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_title_inventory_title_0():*
        {
            try 
            {
                title["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            title.enabled = true;
            title.label = "#menu:headerButtons/inventory";
            title.shadowColor = "Black";
            title.textAlign = "left";
            title.textColor = 15329754;
            title.textFont = "$TitleFont";
            title.textSize = 18;
            title.useHtml = false;
            title.visible = true;
            try 
            {
                title["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
