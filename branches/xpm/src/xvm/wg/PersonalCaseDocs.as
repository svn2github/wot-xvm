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
    import net.wg.gui.lobby.tankman.*;
    
    public dynamic class PersonalCaseDocs extends net.wg.gui.lobby.tankman.PersonalCaseDocs
    {
        public function PersonalCaseDocs()
        {
            super();
            this.__setProp_credits_PersonalCaseDocs_Layer1_0();
            this.__setProp_gold_PersonalCaseDocs_Layer1_0();
            this.__setProp_submitBtn_PersonalCaseDocs_Layer1_0();
            this.__setProp_portraitsCarousel_PersonalCaseDocs_Layer4_0();
            return;
        }

        internal function __setProp_credits_PersonalCaseDocs_Layer1_0():*
        {
            try 
            {
                credits["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            credits.antiAliasing = "advanced";
            credits.enabled = true;
            credits.enableInitCallback = false;
            credits.fitIconPosition = false;
            credits.icon = "credits";
            credits.iconPosition = "right";
            credits.text = "";
            credits.textAlign = "right";
            credits.textColor = 52224;
            credits.textFont = "$TextFont";
            credits.textSize = 14;
            credits.toolTip = "";
            credits.visible = true;
            try 
            {
                credits["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_gold_PersonalCaseDocs_Layer1_0():*
        {
            try 
            {
                gold["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            gold.antiAliasing = "advanced";
            gold.enabled = true;
            gold.enableInitCallback = false;
            gold.fitIconPosition = false;
            gold.icon = "gold";
            gold.iconPosition = "right";
            gold.text = "";
            gold.textAlign = "right";
            gold.textColor = 14540253;
            gold.textFont = "$TextFont";
            gold.textSize = 14;
            gold.toolTip = "";
            gold.visible = true;
            try 
            {
                gold["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_submitBtn_PersonalCaseDocs_Layer1_0():*
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
            submitBtn.label = "#menu:tankmanPersonalCase/changeDocsBtn";
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

        internal function __setProp_portraitsCarousel_PersonalCaseDocs_Layer4_0():*
        {
            try 
            {
                portraitsCarousel["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            portraitsCarousel.carouselType = "horizontal";
            portraitsCarousel.countVisibleSlots = 3;
            portraitsCarousel.enabled = true;
            portraitsCarousel.enableInitCallback = false;
            portraitsCarousel.focusable = true;
            portraitsCarousel.itemRendererName = "PortraitsItemRendererUI";
            portraitsCarousel.itemRendererInstanceName = "";
            portraitsCarousel.margin = 3;
            portraitsCarousel.offsetArrowHeight = 1;
            portraitsCarousel.padding = {"top":2, "right":1, "bottom":0, "left":1};
            portraitsCarousel.slotImageHeight = 63;
            portraitsCarousel.slotImageWidth = 102;
            portraitsCarousel.visible = true;
            try 
            {
                portraitsCarousel["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
