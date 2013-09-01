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
    
    public dynamic class ExchangeVcoinWindow_UI extends net.wg.gui.lobby.window.ExchangeVcoinWindow
    {
        public function ExchangeVcoinWindow_UI()
        {
            super();
            this.__setProp_onHandPrimaryCurrencyText_ExchangeVcoinWindow_UI_labels_0();
            this.__setProp_onHandSecondaryCurrencyText_ExchangeVcoinWindow_UI_labels_0();
            this.__setProp_resultPrimaryCurrencyText_ExchangeVcoinWindow_UI_labels_0();
            this.__setProp_resultSecondaryCurrencyText_ExchangeVcoinWindow_UI_labels_0();
            this.__setProp_toExchangePrimaryCurrencyIco_ExchangeVcoinWindow_UI_labels_0();
            this.__setProp_toExchangeSecondaryCurrencyIco_ExchangeVcoinWindow_UI_labels_0();
            this.__setProp_submitBtn_ExchangeVcoinWindow_UI_labels_0();
            this.__setProp_cancelBtn_ExchangeVcoinWindow_UI_labels_0();
            this.__setProp_nsPrimaryCurrency_ExchangeVcoinWindow_UI_NumSteppers_0();
            this.__setProp_nsSecondaryCurrency_ExchangeVcoinWindow_UI_NumSteppers_0();
            this.__setProp_buyVcoinBtn_ExchangeVcoinWindow_UI_errorText_0();
            return;
        }

        internal function __setProp_onHandPrimaryCurrencyText_ExchangeVcoinWindow_UI_labels_0():*
        {
            try 
            {
                onHandPrimaryCurrencyText["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            onHandPrimaryCurrencyText.antiAliasing = "advanced";
            onHandPrimaryCurrencyText.enabled = true;
            onHandPrimaryCurrencyText.enableInitCallback = false;
            onHandPrimaryCurrencyText.fitIconPosition = true;
            onHandPrimaryCurrencyText.icon = "gold";
            onHandPrimaryCurrencyText.iconPosition = "left";
            onHandPrimaryCurrencyText.text = "";
            onHandPrimaryCurrencyText.textAlign = "right";
            onHandPrimaryCurrencyText.textColor = 16765802;
            onHandPrimaryCurrencyText.textFont = "$TextFont";
            onHandPrimaryCurrencyText.textSize = 13;
            onHandPrimaryCurrencyText.toolTip = "";
            onHandPrimaryCurrencyText.visible = true;
            try 
            {
                onHandPrimaryCurrencyText["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_onHandSecondaryCurrencyText_ExchangeVcoinWindow_UI_labels_0():*
        {
            try 
            {
                onHandSecondaryCurrencyText["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            onHandSecondaryCurrencyText.antiAliasing = "advanced";
            onHandSecondaryCurrencyText.enabled = true;
            onHandSecondaryCurrencyText.enableInitCallback = false;
            onHandSecondaryCurrencyText.fitIconPosition = true;
            onHandSecondaryCurrencyText.icon = "credits";
            onHandSecondaryCurrencyText.iconPosition = "left";
            onHandSecondaryCurrencyText.text = "";
            onHandSecondaryCurrencyText.textAlign = "left";
            onHandSecondaryCurrencyText.textColor = 13556185;
            onHandSecondaryCurrencyText.textFont = "$TextFont";
            onHandSecondaryCurrencyText.textSize = 13;
            onHandSecondaryCurrencyText.toolTip = "";
            onHandSecondaryCurrencyText.visible = true;
            try 
            {
                onHandSecondaryCurrencyText["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_resultPrimaryCurrencyText_ExchangeVcoinWindow_UI_labels_0():*
        {
            try 
            {
                resultPrimaryCurrencyText["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            resultPrimaryCurrencyText.antiAliasing = "advanced";
            resultPrimaryCurrencyText.enabled = true;
            resultPrimaryCurrencyText.enableInitCallback = false;
            resultPrimaryCurrencyText.fitIconPosition = true;
            resultPrimaryCurrencyText.icon = "gold";
            resultPrimaryCurrencyText.iconPosition = "left";
            resultPrimaryCurrencyText.text = "";
            resultPrimaryCurrencyText.textAlign = "right";
            resultPrimaryCurrencyText.textColor = 16765802;
            resultPrimaryCurrencyText.textFont = "$TextFont";
            resultPrimaryCurrencyText.textSize = 13;
            resultPrimaryCurrencyText.toolTip = "";
            resultPrimaryCurrencyText.visible = true;
            try 
            {
                resultPrimaryCurrencyText["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_resultSecondaryCurrencyText_ExchangeVcoinWindow_UI_labels_0():*
        {
            try 
            {
                resultSecondaryCurrencyText["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            resultSecondaryCurrencyText.antiAliasing = "advanced";
            resultSecondaryCurrencyText.enabled = true;
            resultSecondaryCurrencyText.enableInitCallback = false;
            resultSecondaryCurrencyText.fitIconPosition = true;
            resultSecondaryCurrencyText.icon = "credits";
            resultSecondaryCurrencyText.iconPosition = "left";
            resultSecondaryCurrencyText.text = "";
            resultSecondaryCurrencyText.textAlign = "left";
            resultSecondaryCurrencyText.textColor = 13556185;
            resultSecondaryCurrencyText.textFont = "$TextFont";
            resultSecondaryCurrencyText.textSize = 13;
            resultSecondaryCurrencyText.toolTip = "";
            resultSecondaryCurrencyText.visible = true;
            try 
            {
                resultSecondaryCurrencyText["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_toExchangePrimaryCurrencyIco_ExchangeVcoinWindow_UI_labels_0():*
        {
            try 
            {
                toExchangePrimaryCurrencyIco["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            toExchangePrimaryCurrencyIco.antiAliasing = "advanced";
            toExchangePrimaryCurrencyIco.enabled = true;
            toExchangePrimaryCurrencyIco.enableInitCallback = false;
            toExchangePrimaryCurrencyIco.fitIconPosition = true;
            toExchangePrimaryCurrencyIco.icon = "gold";
            toExchangePrimaryCurrencyIco.iconPosition = "left";
            toExchangePrimaryCurrencyIco.text = "";
            toExchangePrimaryCurrencyIco.textAlign = "left";
            toExchangePrimaryCurrencyIco.textColor = 16767627;
            toExchangePrimaryCurrencyIco.textFont = "$TextFont";
            toExchangePrimaryCurrencyIco.textSize = 13;
            toExchangePrimaryCurrencyIco.toolTip = "";
            toExchangePrimaryCurrencyIco.visible = true;
            try 
            {
                toExchangePrimaryCurrencyIco["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_toExchangeSecondaryCurrencyIco_ExchangeVcoinWindow_UI_labels_0():*
        {
            try 
            {
                toExchangeSecondaryCurrencyIco["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            toExchangeSecondaryCurrencyIco.antiAliasing = "advanced";
            toExchangeSecondaryCurrencyIco.enabled = true;
            toExchangeSecondaryCurrencyIco.enableInitCallback = false;
            toExchangeSecondaryCurrencyIco.fitIconPosition = true;
            toExchangeSecondaryCurrencyIco.icon = "credits";
            toExchangeSecondaryCurrencyIco.iconPosition = "left";
            toExchangeSecondaryCurrencyIco.text = "";
            toExchangeSecondaryCurrencyIco.textAlign = "left";
            toExchangeSecondaryCurrencyIco.textColor = 13556185;
            toExchangeSecondaryCurrencyIco.textFont = "$TextFont";
            toExchangeSecondaryCurrencyIco.textSize = 13;
            toExchangeSecondaryCurrencyIco.toolTip = "";
            toExchangeSecondaryCurrencyIco.visible = true;
            try 
            {
                toExchangeSecondaryCurrencyIco["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_submitBtn_ExchangeVcoinWindow_UI_labels_0():*
        {
            try 
            {
                submitBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            submitBtn.autoRepeat = false;
            submitBtn.autoSize = "none";
            submitBtn.data = "";
            submitBtn.enabled = true;
            submitBtn.enableInitCallback = false;
            submitBtn.fillPadding = 0;
            submitBtn.focusable = true;
            submitBtn.label = "#menu:exchange/submit";
            submitBtn.paddingHorizontal = 5;
            submitBtn.selected = false;
            submitBtn.soundId = "";
            submitBtn.soundType = "okButton";
            submitBtn.toggle = false;
            submitBtn.visible = true;
            try 
            {
                submitBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_cancelBtn_ExchangeVcoinWindow_UI_labels_0():*
        {
            try 
            {
                cancelBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            cancelBtn.autoRepeat = false;
            cancelBtn.autoSize = "none";
            cancelBtn.data = "";
            cancelBtn.enabled = true;
            cancelBtn.enableInitCallback = false;
            cancelBtn.fillPadding = 0;
            cancelBtn.focusable = true;
            cancelBtn.label = "#menu:exchange/cancel";
            cancelBtn.paddingHorizontal = 5;
            cancelBtn.selected = false;
            cancelBtn.soundId = "";
            cancelBtn.soundType = "cancelButton";
            cancelBtn.toggle = false;
            cancelBtn.visible = true;
            try 
            {
                cancelBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_nsPrimaryCurrency_ExchangeVcoinWindow_UI_NumSteppers_0():*
        {
            try 
            {
                nsPrimaryCurrency["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            nsPrimaryCurrency.enabled = true;
            nsPrimaryCurrency.enableInitCallback = false;
            nsPrimaryCurrency.focusable = true;
            nsPrimaryCurrency.integral = true;
            nsPrimaryCurrency.maximum = 0;
            nsPrimaryCurrency.minimum = 0;
            nsPrimaryCurrency.stepSize = 1;
            nsPrimaryCurrency.textColor = 16765802;
            nsPrimaryCurrency.value = 0;
            nsPrimaryCurrency.visible = true;
            try 
            {
                nsPrimaryCurrency["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_nsSecondaryCurrency_ExchangeVcoinWindow_UI_NumSteppers_0():*
        {
            try 
            {
                nsSecondaryCurrency["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            nsSecondaryCurrency.enabled = true;
            nsSecondaryCurrency.enableInitCallback = false;
            nsSecondaryCurrency.focusable = true;
            nsSecondaryCurrency.integral = true;
            nsSecondaryCurrency.maximum = 0;
            nsSecondaryCurrency.minimum = 0;
            nsSecondaryCurrency.stepSize = 1;
            nsSecondaryCurrency.textColor = 16777215;
            nsSecondaryCurrency.value = 0;
            nsSecondaryCurrency.visible = true;
            try 
            {
                nsSecondaryCurrency["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_buyVcoinBtn_ExchangeVcoinWindow_UI_errorText_0():*
        {
            try 
            {
                buyVcoinBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            buyVcoinBtn.autoRepeat = false;
            buyVcoinBtn.autoSize = "none";
            buyVcoinBtn.data = "";
            buyVcoinBtn.enabled = true;
            buyVcoinBtn.enableInitCallback = false;
            buyVcoinBtn.fillPadding = 0;
            buyVcoinBtn.focusable = true;
            buyVcoinBtn.label = "#menu:exchange/submit";
            buyVcoinBtn.paddingHorizontal = 5;
            buyVcoinBtn.selected = false;
            buyVcoinBtn.soundId = "";
            buyVcoinBtn.soundType = "okButton";
            buyVcoinBtn.toggle = false;
            buyVcoinBtn.visible = true;
            try 
            {
                buyVcoinBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
