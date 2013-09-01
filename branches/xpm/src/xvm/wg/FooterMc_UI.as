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
    
    public dynamic class FooterMc_UI extends net.wg.gui.lobby.vehicleBuyWindow.FooterMc
    {
        public function FooterMc_UI()
        {
            super();
            this.__setProp_totalGoldPrice_FooterMc_UI_totalprice_0();
            this.__setProp_totalCreditsPrice_FooterMc_UI_totalprice_0();
            return;
        }

        internal function __setProp_totalGoldPrice_FooterMc_UI_totalprice_0():*
        {
            try 
            {
                totalGoldPrice["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            totalGoldPrice.antiAliasing = "advanced";
            totalGoldPrice.enabled = true;
            totalGoldPrice.enableInitCallback = false;
            totalGoldPrice.fitIconPosition = false;
            totalGoldPrice.icon = "gold";
            totalGoldPrice.iconPosition = "right";
            totalGoldPrice.text = "333";
            totalGoldPrice.textAlign = "right";
            totalGoldPrice.textColor = 16314069;
            totalGoldPrice.textFont = "$FieldFont";
            totalGoldPrice.textSize = 14;
            totalGoldPrice.toolTip = "";
            totalGoldPrice.visible = true;
            try 
            {
                totalGoldPrice["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_totalCreditsPrice_FooterMc_UI_totalprice_0():*
        {
            try 
            {
                totalCreditsPrice["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            totalCreditsPrice.antiAliasing = "advanced";
            totalCreditsPrice.enabled = true;
            totalCreditsPrice.enableInitCallback = false;
            totalCreditsPrice.fitIconPosition = false;
            totalCreditsPrice.icon = "credits";
            totalCreditsPrice.iconPosition = "right";
            totalCreditsPrice.text = "444";
            totalCreditsPrice.textAlign = "right";
            totalCreditsPrice.textColor = 13556185;
            totalCreditsPrice.textFont = "$FieldFont";
            totalCreditsPrice.textSize = 14;
            totalCreditsPrice.toolTip = "";
            totalCreditsPrice.visible = true;
            try 
            {
                totalCreditsPrice["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
