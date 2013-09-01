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
    import net.wg.gui.lobby.hangar.tcarousel.*;
    
    public dynamic class TankCarouselItemRendererUI extends net.wg.gui.lobby.hangar.tcarousel.TankCarouselItemRenderer
    {
        public function TankCarouselItemRendererUI()
        {
            this.__setPropDict = new flash.utils.Dictionary(true);
            super();
            addFrameScript(9, this.frame10, 19, this.frame20, 29, this.frame30, 39, this.frame40, 49, this.frame50, 59, this.frame60, 69, this.frame70, 79, this.frame80, 89, this.frame90, 99, this.frame100, 109, this.frame110, 119, this.frame120, 129, this.frame130, 139, this.frame140, 149, this.frame150, 159, this.frame160, 169, this.frame170, 179, this.frame180, 189, this.frame190, 199, this.frame200, 209, this.frame210, 219, this.frame220, 229, this.frame230, 239, this.frame240, 249, this.frame250, 259, this.frame260, 269, this.frame270, 279, this.frame280, 289, this.frame290, 299, this.frame300, 309, this.frame310, 319, this.frame320);
            this.__setProp_clanLockUI_TankCarouselItemRendererUI_clanlock_0();
            addEventListener(flash.events.Event.FRAME_CONSTRUCTED, this.__setProp_handler, false, 0, true);
            return;
        }

        internal function frame310():*
        {
            stop();
            return;
        }

        internal function frame320():*
        {
            stop();
            return;
        }

        internal function __setProp_vehicleIcon_TankCarouselItemRendererUI_vehicleIcon_0(arg1:int):*
        {
            if (!(vehicleIcon == null) && arg1 >= 1 && arg1 <= 140 && (this.__setPropDict[vehicleIcon] == undefined || !(int(this.__setPropDict[vehicleIcon]) >= 1 && int(this.__setPropDict[vehicleIcon]) <= 140))) 
            {
                this.__setPropDict[vehicleIcon] = arg1;
                try 
                {
                    vehicleIcon["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                vehicleIcon.enabled = true;
                vehicleIcon.enableInitCallback = false;
                vehicleIcon.favorite = false;
                vehicleIcon.image = "";
                vehicleIcon.isElite = false;
                vehicleIcon.isPremium = false;
                vehicleIcon.level = 1;
                vehicleIcon.multyXpVal = 1;
                vehicleIcon.nation = 0;
                vehicleIcon.nationName = "";
                vehicleIcon.showMultyXp = false;
                vehicleIcon.showName = false;
                vehicleIcon.showXp = false;
                vehicleIcon.tankName = "";
                vehicleIcon.tankType = "lightTank";
                vehicleIcon.visible = true;
                vehicleIcon.xpVal = 0;
                try 
                {
                    vehicleIcon["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_vehicleIcon_TankCarouselItemRendererUI_vehicleIcon_140(arg1:int):*
        {
            if (!(vehicleIcon == null) && arg1 >= 141 && arg1 <= 320 && (this.__setPropDict[vehicleIcon] == undefined || !(int(this.__setPropDict[vehicleIcon]) >= 141 && int(this.__setPropDict[vehicleIcon]) <= 320))) 
            {
                this.__setPropDict[vehicleIcon] = arg1;
                try 
                {
                    vehicleIcon["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                vehicleIcon.enabled = true;
                vehicleIcon.enableInitCallback = false;
                vehicleIcon.favorite = false;
                vehicleIcon.image = "";
                vehicleIcon.isElite = false;
                vehicleIcon.isPremium = false;
                vehicleIcon.level = 1;
                vehicleIcon.multyXpVal = 1;
                vehicleIcon.nation = 0;
                vehicleIcon.nationName = "";
                vehicleIcon.showMultyXp = false;
                vehicleIcon.showName = false;
                vehicleIcon.showXp = false;
                vehicleIcon.tankName = "";
                vehicleIcon.tankType = "lightTank";
                vehicleIcon.visible = false;
                vehicleIcon.xpVal = 0;
                try 
                {
                    vehicleIcon["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_clanLockUI_TankCarouselItemRendererUI_clanlock_0():*
        {
            try 
            {
                clanLockUI["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            clanLockUI.enabled = true;
            clanLockUI.enableInitCallback = false;
            clanLockUI.timer = 0;
            clanLockUI.visible = false;
            try 
            {
                clanLockUI["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_slotPrice_TankCarouselItemRendererUI_icontext_200(arg1:int):*
        {
            if (!(slotPrice == null) && arg1 >= 201 && arg1 <= 260 && (this.__setPropDict[slotPrice] == undefined || !(int(this.__setPropDict[slotPrice]) >= 201 && int(this.__setPropDict[slotPrice]) <= 260))) 
            {
                this.__setPropDict[slotPrice] = arg1;
                try 
                {
                    slotPrice["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                slotPrice.enabled = true;
                slotPrice.enableInitCallback = false;
                slotPrice.fitIconPosition = false;
                slotPrice.icon = "gold";
                slotPrice.iconPosition = "right";
                slotPrice.text = "";
                slotPrice.textAlign = "right";
                slotPrice.textColor = 16761699;
                slotPrice.textFont = "$FieldFont";
                slotPrice.textSize = 12;
                slotPrice.toolTip = "";
                slotPrice.visible = true;
                try 
                {
                    slotPrice["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_handler(arg1:Object):*
        {
            var loc1:*=currentFrame;
            if (this.__lastFrameProp == loc1) 
            {
                return;
            }
            this.__lastFrameProp = loc1;
            this.__setProp_vehicleIcon_TankCarouselItemRendererUI_vehicleIcon_0(loc1);
            this.__setProp_vehicleIcon_TankCarouselItemRendererUI_vehicleIcon_140(loc1);
            this.__setProp_slotPrice_TankCarouselItemRendererUI_icontext_200(loc1);
            return;
        }

        internal function frame10():*
        {
            stop();
            return;
        }

        internal function frame20():*
        {
            stop();
            return;
        }

        internal function frame30():*
        {
            stop();
            return;
        }

        internal function frame40():*
        {
            stop();
            return;
        }

        internal function frame50():*
        {
            stop();
            return;
        }

        internal function frame60():*
        {
            stop();
            return;
        }

        internal function frame70():*
        {
            stop();
            return;
        }

        internal function frame80():*
        {
            stop();
            return;
        }

        internal function frame90():*
        {
            stop();
            return;
        }

        internal function frame100():*
        {
            stop();
            return;
        }

        internal function frame110():*
        {
            stop();
            return;
        }

        internal function frame120():*
        {
            stop();
            return;
        }

        internal function frame130():*
        {
            stop();
            return;
        }

        internal function frame140():*
        {
            stop();
            return;
        }

        internal function frame150():*
        {
            stop();
            return;
        }

        internal function frame160():*
        {
            stop();
            return;
        }

        internal function frame170():*
        {
            stop();
            return;
        }

        internal function frame180():*
        {
            stop();
            return;
        }

        internal function frame190():*
        {
            stop();
            return;
        }

        internal function frame200():*
        {
            stop();
            return;
        }

        internal function frame210():*
        {
            stop();
            return;
        }

        internal function frame220():*
        {
            stop();
            return;
        }

        internal function frame230():*
        {
            stop();
            return;
        }

        internal function frame240():*
        {
            stop();
            return;
        }

        internal function frame250():*
        {
            stop();
            return;
        }

        internal function frame260():*
        {
            stop();
            return;
        }

        internal function frame270():*
        {
            stop();
            return;
        }

        internal function frame280():*
        {
            stop();
            return;
        }

        internal function frame290():*
        {
            stop();
            return;
        }

        internal function frame300():*
        {
            stop();
            return;
        }

        public var __setPropDict:flash.utils.Dictionary;

        public var __lastFrameProp:int=-1;
    }
}
