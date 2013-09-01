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
    
    public dynamic class TeachingSkillWindow_UI extends net.wg.gui.lobby.window.ExchangeFreeToTankmanXpWindow
    {
        public function TeachingSkillWindow_UI()
        {
            super();
            this.__setProp_submitBtn_TeachingSkillWindow_UI_buttons_0();
            this.__setProp_cancelBtn_TeachingSkillWindow_UI_buttons_0();
            this.__setProp_itToPay_TeachingSkillWindow_UI_icons_0();
            return;
        }

        internal function __setProp_submitBtn_TeachingSkillWindow_UI_buttons_0():*
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

        internal function __setProp_cancelBtn_TeachingSkillWindow_UI_buttons_0():*
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

        internal function __setProp_itToPay_TeachingSkillWindow_UI_icons_0():*
        {
            try 
            {
                itToPay["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            itToPay.antiAliasing = "advanced";
            itToPay.enabled = true;
            itToPay.enableInitCallback = false;
            itToPay.fitIconPosition = false;
            itToPay.icon = "eliteXp";
            itToPay.iconPosition = "left";
            itToPay.text = "0";
            itToPay.textAlign = "left";
            itToPay.textColor = 16498786;
            itToPay.textFont = "$TextFont";
            itToPay.textSize = 12;
            itToPay.toolTip = "";
            itToPay.visible = true;
            try 
            {
                itToPay["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
