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
    import net.wg.gui.lobby.premiumForm.*;
    
    public dynamic class PremiumFormItemRendererUI extends net.wg.gui.lobby.premiumForm.PremiumFormItemRenderer
    {
        public function PremiumFormItemRendererUI()
        {
            super();
            this.__setProp_price_PremiumFormItemRendererUI_price_0();
            this.__setProp_pdays_PremiumFormItemRendererUI_radioButton_0();
            return;
        }

        internal function __setProp_price_PremiumFormItemRendererUI_price_0():*
        {
            try 
            {
                price["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            price.antiAliasing = "normal";
            price.enabled = true;
            price.enableInitCallback = false;
            price.fitIconPosition = true;
            price.icon = "goldDiscount";
            price.iconPosition = "right";
            price.text = "";
            price.textAlign = "right";
            price.textColor = 16761699;
            price.textFont = "$TextFont";
            price.textSize = 12;
            price.toolTip = "adasdasd";
            price.visible = true;
            try 
            {
                price["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_pdays_PremiumFormItemRendererUI_radioButton_0():*
        {
            try 
            {
                pdays["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            pdays.autoSize = "left";
            pdays.data = "";
            pdays.enabled = true;
            pdays.enableInitCallback = false;
            pdays.focusable = true;
            pdays.groupName = "";
            pdays.label = "";
            pdays.selected = false;
            pdays.soundId = "";
            pdays.soundType = "";
            pdays.visible = true;
            try 
            {
                pdays["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
