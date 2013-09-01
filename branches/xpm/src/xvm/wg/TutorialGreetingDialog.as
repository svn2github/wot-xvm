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
    import net.wg.gui.tutorial.windows.*;
    
    public dynamic class TutorialGreetingDialog extends net.wg.gui.tutorial.windows.TutorialGreetingDialog
    {
        public function TutorialGreetingDialog()
        {
            super();
            this.__setProp_submitBtn_TutorialGreetingDialog_buttons_0();
            this.__setProp_cancelBtn_TutorialGreetingDialog_buttons_0();
            this.__setProp_bonusItem_TutorialGreetingDialog_bonusItem_0();
            return;
        }

        internal function __setProp_submitBtn_TutorialGreetingDialog_buttons_0():*
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
            submitBtn.label = "#battle_tutorial:buttons/start";
            submitBtn.paddingHorizontal = 5;
            submitBtn.selected = false;
            submitBtn.soundId = "";
            submitBtn.soundType = "normal";
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

        internal function __setProp_cancelBtn_TutorialGreetingDialog_buttons_0():*
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
            cancelBtn.label = "#battle_tutorial:buttons/cancel";
            cancelBtn.paddingHorizontal = 5;
            cancelBtn.selected = false;
            cancelBtn.soundId = "";
            cancelBtn.soundType = "normal";
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

        internal function __setProp_bonusItem_TutorialGreetingDialog_bonusItem_0():*
        {
            try 
            {
                bonusItem["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            bonusItem.enabled = true;
            bonusItem.enableInitCallback = false;
            bonusItem.hasBonusesTitle = "#battle_tutorial:labels/tutorial-bonuses";
            bonusItem.noBonusesDescription = "";
            bonusItem.noBonusesTitle = "#battle_tutorial:labels/bonuses-already-received";
            bonusItem.visible = true;
            try 
            {
                bonusItem["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
