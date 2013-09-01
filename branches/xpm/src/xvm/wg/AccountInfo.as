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
    import net.wg.gui.lobby.header.*;
    
    public dynamic class AccountInfo extends net.wg.gui.lobby.header.AccountInfo
    {
        public function AccountInfo()
        {
            super();
            this.__setProp_gold_AccountInfo_name_0();
            this.__setProp_credits_AccountInfo_name_0();
            this.__setProp_experience_AccountInfo_name_0();
            this.__setProp_expGatheringBtn_AccountInfo_exchangeXP_0();
            this.__setProp_goldExchangeBtn_AccountInfo_exchangeGold_0();
            this.__setProp_accountRefillBtn_AccountInfo_accountRefill_0();
            this.__setProp_premiumBtn_AccountInfo_premiumbutton_0();
            return;
        }

        internal function __setProp_gold_AccountInfo_name_0():*
        {
            var loc1:*;
            try 
            {
                gold["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            gold.enabled = true;
            gold.enableInitCallback = false;
            gold.fitIconPosition = false;
            gold.icon = "gold";
            gold.iconPosition = "right";
            gold.text = "";
            gold.textAlign = "right";
            gold.textColor = 16761699;
            gold.textFont = "$FieldFont";
            gold.textSize = 13;
            gold.toolTip = "#tooltips:gold";
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

        internal function __setProp_credits_AccountInfo_name_0():*
        {
            var loc1:*;
            try 
            {
                credits["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            credits.enabled = true;
            credits.enableInitCallback = false;
            credits.fitIconPosition = false;
            credits.icon = "credits";
            credits.iconPosition = "right";
            credits.text = "";
            credits.textAlign = "right";
            credits.textColor = 13556185;
            credits.textFont = "$FieldFont";
            credits.textSize = 13;
            credits.toolTip = "#tooltips:credits";
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

        internal function __setProp_experience_AccountInfo_name_0():*
        {
            var loc1:*;
            try 
            {
                experience["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            experience.enabled = true;
            experience.enableInitCallback = false;
            experience.fitIconPosition = false;
            experience.icon = "freeXp";
            experience.iconPosition = "right";
            experience.text = "";
            experience.textAlign = "right";
            experience.textColor = 13224374;
            experience.textFont = "$FieldFont";
            experience.textSize = 13;
            experience.toolTip = "#tooltips:freeXP";
            experience.visible = true;
            try 
            {
                experience["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_expGatheringBtn_AccountInfo_exchangeXP_0():*
        {
            var loc1:*;
            try 
            {
                expGatheringBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            expGatheringBtn.autoRepeat = false;
            expGatheringBtn.autoSize = "none";
            expGatheringBtn.caps = true;
            expGatheringBtn.data = "";
            expGatheringBtn.enabled = true;
            expGatheringBtn.enableInitCallback = false;
            expGatheringBtn.fillPadding = 0;
            expGatheringBtn.focusable = true;
            expGatheringBtn.helpConnectorLength = 12;
            expGatheringBtn.helpDirection = "L";
            expGatheringBtn.helpText = "#lobby_help:header/gathering-experience-button";
            expGatheringBtn.iconOffsetLeft = 0;
            expGatheringBtn.iconOffsetTop = 0;
            expGatheringBtn.iconSource = "exp_gathering.png";
            expGatheringBtn.label = "#menu:headerButtons/account/expGathering";
            expGatheringBtn.paddingHorizontal = 5;
            expGatheringBtn.selected = false;
            expGatheringBtn.soundId = "expGatheringBtn";
            expGatheringBtn.soundType = "iconTextButton";
            expGatheringBtn.toggle = false;
            expGatheringBtn.tooltip = "#tooltips:header/xp_gathering";
            expGatheringBtn.visible = true;
            try 
            {
                expGatheringBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_goldExchangeBtn_AccountInfo_exchangeGold_0():*
        {
            var loc1:*;
            try 
            {
                goldExchangeBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            goldExchangeBtn.autoRepeat = false;
            goldExchangeBtn.autoSize = "none";
            goldExchangeBtn.caps = true;
            goldExchangeBtn.data = "";
            goldExchangeBtn.enabled = true;
            goldExchangeBtn.enableInitCallback = false;
            goldExchangeBtn.fillPadding = 0;
            goldExchangeBtn.focusable = true;
            goldExchangeBtn.helpConnectorLength = 12;
            goldExchangeBtn.helpDirection = "L";
            goldExchangeBtn.helpText = "#lobby_help:header/exchange-gold-button";
            goldExchangeBtn.iconOffsetLeft = 0;
            goldExchangeBtn.iconOffsetTop = 0;
            goldExchangeBtn.iconSource = "gold_exchanging.png";
            goldExchangeBtn.label = "#menu:headerButtons/account/goldExchange";
            goldExchangeBtn.paddingHorizontal = 5;
            goldExchangeBtn.selected = false;
            goldExchangeBtn.soundId = "goldExchangeBtn";
            goldExchangeBtn.soundType = "iconTextButton";
            goldExchangeBtn.toggle = false;
            goldExchangeBtn.tooltip = "#tooltips:header/gold_exchange";
            goldExchangeBtn.visible = true;
            try 
            {
                goldExchangeBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_accountRefillBtn_AccountInfo_accountRefill_0():*
        {
            var loc1:*;
            try 
            {
                accountRefillBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            accountRefillBtn.autoRepeat = false;
            accountRefillBtn.autoSize = "none";
            accountRefillBtn.caps = true;
            accountRefillBtn.data = "";
            accountRefillBtn.enabled = true;
            accountRefillBtn.enableInitCallback = false;
            accountRefillBtn.fillPadding = 0;
            accountRefillBtn.focusable = true;
            accountRefillBtn.helpConnectorLength = 12;
            accountRefillBtn.helpDirection = "L";
            accountRefillBtn.helpText = "#lobby_help:header/buy-gold-button";
            accountRefillBtn.iconOffsetLeft = 0;
            accountRefillBtn.iconOffsetTop = 0;
            accountRefillBtn.iconSource = "refill_account.png";
            accountRefillBtn.label = "#menu:headerButtons/account/accountRefill";
            accountRefillBtn.paddingHorizontal = 5;
            accountRefillBtn.selected = false;
            accountRefillBtn.soundId = "accountRefillBtn";
            accountRefillBtn.soundType = "iconTextButton";
            accountRefillBtn.toggle = false;
            accountRefillBtn.tooltip = "#tooltips:header/refill";
            accountRefillBtn.visible = true;
            try 
            {
                accountRefillBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_premiumBtn_AccountInfo_premiumbutton_0():*
        {
            var loc1:*;
            try 
            {
                premiumBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            premiumBtn.autoRepeat = false;
            premiumBtn.autoSize = "none";
            premiumBtn.caps = true;
            premiumBtn.data = "";
            premiumBtn.enabled = true;
            premiumBtn.enableInitCallback = false;
            premiumBtn.fillPadding = 0;
            premiumBtn.focusable = true;
            premiumBtn.helpConnectorLength = 9;
            premiumBtn.helpDirection = "L";
            premiumBtn.helpText = "#lobby_help:header/premium-button";
            premiumBtn.iconOffsetLeft = 0;
            premiumBtn.iconOffsetTop = 0;
            premiumBtn.iconSource = "premium.png";
            premiumBtn.label = "#menu:common/premiumBuy";
            premiumBtn.paddingHorizontal = 5;
            premiumBtn.selected = false;
            premiumBtn.soundId = "premiumBtn";
            premiumBtn.soundType = "iconTextButton";
            premiumBtn.toggle = false;
            premiumBtn.tooltip = "";
            premiumBtn.visible = true;
            try 
            {
                premiumBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
