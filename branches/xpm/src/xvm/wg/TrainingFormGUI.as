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
    import net.wg.gui.lobby.training.*;
    
    public dynamic class TrainingFormGUI extends net.wg.gui.lobby.training.TrainingForm
    {
        public function TrainingFormGUI()
        {
            super();
            this.__setProp_battleIconBig_main_bg_0();
            this.__setProp_battleIcon_main_battleIcon_0();
            this.__setProp_createButon_main_createButton_0();
            this.__setProp_list_main_list_0();
            return;
        }

        internal function __setProp_battleIconBig_main_bg_0():*
        {
            try 
            {
                battleIconBig["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            battleIconBig.enabled = true;
            battleIconBig.enableInitCallback = false;
            battleIconBig.type = "training";
            battleIconBig.visible = true;
            try 
            {
                battleIconBig["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_battleIcon_main_battleIcon_0():*
        {
            try 
            {
                battleIcon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            battleIcon.enabled = true;
            battleIcon.enableInitCallback = false;
            battleIcon.type = "training";
            battleIcon.visible = true;
            try 
            {
                battleIcon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_createButon_main_createButton_0():*
        {
            try 
            {
                createButon["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            createButon.autoRepeat = false;
            createButon.autoSize = "none";
            createButon.data = "";
            createButon.enabled = true;
            createButon.enableInitCallback = false;
            createButon.fillPadding = 0;
            createButon.focusable = true;
            createButon.label = "#menu:training/createButton";
            createButon.paddingHorizontal = 5;
            createButon.selected = false;
            createButon.soundId = "";
            createButon.soundType = "normal";
            createButon.toggle = false;
            createButon.visible = true;
            try 
            {
                createButon["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_list_main_list_0():*
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
            list.itemRendererName = "RoomsListItemRenderer";
            list.itemRendererInstanceName = "";
            list.margin = 0;
            list.inspectablePadding = {"top":1, "right":0, "bottom":0, "left":0};
            list.rowHeight = 0;
            list.scrollBar = "sb";
            list.showEmptyItems = false;
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
    }
}
