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
    
    public dynamic class HeaderMc_UI extends net.wg.gui.lobby.vehicleBuyWindow.HeaderMc
    {
        public function HeaderMc_UI()
        {
            super();
            this.__setProp_descriptionScrollBar_HeaderMc_UI_descr_0();
            this.__setProp_tankDescr_HeaderMc_UI_descrTF_0();
            this.__setProp_tankPrice_HeaderMc_UI_tankPrice_0();
            return;
        }

        internal function __setProp_descriptionScrollBar_HeaderMc_UI_descr_0():*
        {
            try 
            {
                descriptionScrollBar["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            descriptionScrollBar.enabled = true;
            descriptionScrollBar.enableInitCallback = false;
            descriptionScrollBar.minThumbSize = 10;
            descriptionScrollBar.offsetBottom = 0;
            descriptionScrollBar.offsetTop = 0;
            descriptionScrollBar.scrollTarget = "";
            descriptionScrollBar.trackMode = "scrollPage";
            descriptionScrollBar.visible = false;
            try 
            {
                descriptionScrollBar["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_tankDescr_HeaderMc_UI_descrTF_0():*
        {
            try 
            {
                tankDescr["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tankDescr.actAsButton = false;
            tankDescr.autoScroll = false;
            tankDescr.defaultText = "";
            tankDescr.displayAsPassword = false;
            tankDescr.editable = false;
            tankDescr.enabled = true;
            tankDescr.enableInitCallback = false;
            tankDescr.focusable = true;
            tankDescr.maxChars = 0;
            tankDescr.minThumbSize = 1;
            tankDescr.scrollBar = "descriptionScrollBar";
            tankDescr.showBgForm = false;
            tankDescr.text = "";
            tankDescr.thumbOffset = {"top":0, "bottom":0};
            tankDescr.visible = true;
            try 
            {
                tankDescr["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_tankPrice_HeaderMc_UI_tankPrice_0():*
        {
            try 
            {
                tankPrice["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            tankPrice.antiAliasing = "advanced";
            tankPrice.enabled = true;
            tankPrice.enableInitCallback = false;
            tankPrice.fitIconPosition = false;
            tankPrice.icon = "XP";
            tankPrice.iconPosition = "right";
            tankPrice.text = "125000";
            tankPrice.textAlign = "right";
            tankPrice.textColor = 13556185;
            tankPrice.textFont = "$FieldFont";
            tankPrice.textSize = 14;
            tankPrice.toolTip = "";
            tankPrice.visible = true;
            try 
            {
                tankPrice["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
