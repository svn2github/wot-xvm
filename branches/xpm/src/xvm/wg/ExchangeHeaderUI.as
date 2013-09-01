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
    import net.wg.gui.lobby.window.*;
    
    public dynamic class ExchangeHeaderUI extends net.wg.gui.lobby.window.ExchangeHeader
    {
        public function ExchangeHeaderUI()
        {
            super();
            this.__setProp_rate_part_1_ExchangeHeaderUI_Layer1_0();
            this.__setProp_rate_part_2_ExchangeHeaderUI_Layer2_0();
            return;
        }

        internal function __setProp_rate_part_1_ExchangeHeaderUI_Layer1_0():*
        {
            try 
            {
                rate_part_1["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            rate_part_1.antiAliasing = "advanced";
            rate_part_1.enabled = true;
            rate_part_1.enableInitCallback = false;
            rate_part_1.fitIconPosition = true;
            rate_part_1.icon = "gold";
            rate_part_1.iconPosition = "left";
            rate_part_1.text = "1";
            rate_part_1.textAlign = "left";
            rate_part_1.textColor = 16765802;
            rate_part_1.textFont = "$TextFont";
            rate_part_1.textSize = 13;
            rate_part_1.toolTip = "";
            rate_part_1.visible = true;
            try 
            {
                rate_part_1["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_rate_part_2_ExchangeHeaderUI_Layer2_0():*
        {
            try 
            {
                rate_part_2["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            rate_part_2.antiAliasing = "advanced";
            rate_part_2.enabled = true;
            rate_part_2.enableInitCallback = false;
            rate_part_2.fitIconPosition = true;
            rate_part_2.icon = "credits";
            rate_part_2.iconPosition = "left";
            rate_part_2.text = "";
            rate_part_2.textAlign = "left";
            rate_part_2.textColor = 13556185;
            rate_part_2.textFont = "$TextFont";
            rate_part_2.textSize = 13;
            rate_part_2.toolTip = "";
            rate_part_2.visible = true;
            try 
            {
                rate_part_2["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
