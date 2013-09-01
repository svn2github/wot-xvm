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
    import net.wg.gui.lobby.customization.renderers.*;
    
    public dynamic class PriceItemRendererUI extends net.wg.gui.lobby.customization.renderers.PriceItemRenderer
    {
        public function PriceItemRendererUI()
        {
            this.__setPropDict = new flash.utils.Dictionary(true);
            super();
            addFrameScript(9, this.frame10, 19, this.frame20, 29, this.frame30, 39, this.frame40, 49, this.frame50, 59, this.frame60, 69, this.frame70, 79, this.frame80);
            addEventListener(flash.events.Event.FRAME_CONSTRUCTED, this.__setProp_handler, false, 0, true);
            return;
        }

        internal function __setProp_costField_PriceItemRendererUI_cost_0(arg1:int):*
        {
            if (!(costField == null) && arg1 >= 1 && arg1 <= 30 && (this.__setPropDict[costField] == undefined || !(int(this.__setPropDict[costField]) >= 1 && int(this.__setPropDict[costField]) <= 30))) 
            {
                this.__setPropDict[costField] = arg1;
                try 
                {
                    costField["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                costField.antiAliasing = "advanced";
                costField.enabled = true;
                costField.enableInitCallback = false;
                costField.fitIconPosition = false;
                costField.icon = "credits";
                costField.iconPosition = "right";
                costField.text = "";
                costField.textAlign = "right";
                costField.textColor = 16314069;
                costField.textFieldYOffset = 0;
                costField.textFont = "$FieldFont";
                costField.textSize = 14;
                costField.toolTip = "";
                costField.visible = true;
                try 
                {
                    costField["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_costField_PriceItemRendererUI_cost_30(arg1:int):*
        {
            if (!(costField == null) && arg1 >= 31 && arg1 <= 40 && (this.__setPropDict[costField] == undefined || !(int(this.__setPropDict[costField]) >= 31 && int(this.__setPropDict[costField]) <= 40))) 
            {
                this.__setPropDict[costField] = arg1;
                try 
                {
                    costField["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                costField.antiAliasing = "advanced";
                costField.enabled = true;
                costField.enableInitCallback = false;
                costField.fitIconPosition = false;
                costField.icon = "credits";
                costField.iconPosition = "right";
                costField.text = "";
                costField.textAlign = "right";
                costField.textColor = 16314069;
                costField.textFont = "$FieldFont";
                costField.textSize = 14;
                costField.toolTip = "";
                costField.visible = false;
                try 
                {
                    costField["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_costField_PriceItemRendererUI_cost_40(arg1:int):*
        {
            if (!(costField == null) && arg1 >= 41 && arg1 <= 70 && (this.__setPropDict[costField] == undefined || !(int(this.__setPropDict[costField]) >= 41 && int(this.__setPropDict[costField]) <= 70))) 
            {
                this.__setPropDict[costField] = arg1;
                try 
                {
                    costField["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                costField.antiAliasing = "advanced";
                costField.enabled = true;
                costField.enableInitCallback = false;
                costField.fitIconPosition = false;
                costField.icon = "credits";
                costField.iconPosition = "right";
                costField.text = "";
                costField.textAlign = "right";
                costField.textColor = 16314069;
                costField.textFont = "$FieldFont";
                costField.textSize = 14;
                costField.toolTip = "";
                costField.visible = true;
                try 
                {
                    costField["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_costField_PriceItemRendererUI_cost_70(arg1:int):*
        {
            if (!(costField == null) && arg1 >= 71 && arg1 <= 80 && (this.__setPropDict[costField] == undefined || !(int(this.__setPropDict[costField]) >= 71 && int(this.__setPropDict[costField]) <= 80))) 
            {
                this.__setPropDict[costField] = arg1;
                try 
                {
                    costField["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                costField.antiAliasing = "advanced";
                costField.enabled = true;
                costField.enableInitCallback = false;
                costField.fitIconPosition = false;
                costField.icon = "credits";
                costField.iconPosition = "right";
                costField.text = "";
                costField.textAlign = "right";
                costField.textColor = 16314069;
                costField.textFont = "$FieldFont";
                costField.textSize = 14;
                costField.toolTip = "";
                costField.visible = false;
                try 
                {
                    costField["componentInspectorSetting"] = false;
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
            this.__setProp_costField_PriceItemRendererUI_cost_0(loc1);
            this.__setProp_costField_PriceItemRendererUI_cost_30(loc1);
            this.__setProp_costField_PriceItemRendererUI_cost_40(loc1);
            this.__setProp_costField_PriceItemRendererUI_cost_70(loc1);
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

        public var __setPropDict:flash.utils.Dictionary;

        public var __lastFrameProp:int=-1;
    }
}
