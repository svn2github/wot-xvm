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
    import net.wg.gui.lobby.techtree.nodes.*;
    
    public dynamic class ResearchRootNode extends net.wg.gui.lobby.techtree.nodes.ResearchRoot
    {
        public function ResearchRootNode()
        {
            this.__setPropDict = new flash.utils.Dictionary(true);
            super();
            addFrameScript(7, this.frame8, 15, this.frame16, 23, this.frame24, 31, this.frame32, 39, this.frame40, 47, this.frame48, 55, this.frame56, 63, this.frame64, 71, this.frame72, 79, this.frame80, 88, this.frame89, 96, this.frame97, 104, this.frame105, 112, this.frame113, 120, this.frame121, 129, this.frame130, 137, this.frame138, 145, this.frame146, 153, this.frame154, 161, this.frame162, 169, this.frame170, 178, this.frame179, 186, this.frame187, 194, this.frame195, 203, this.frame204, 212, this.frame213, 221, this.frame222, 230, this.frame231, 238, this.frame239, 247, this.frame248, 256, this.frame257, 264, this.frame265, 273, this.frame274, 283, this.frame284, 291, this.frame292, 300, this.frame301, 308, this.frame309, 316, this.frame317, 325, this.frame326, 333, this.frame334, 341, this.frame342, 349, this.frame350, 357, this.frame358, 365, this.frame366, 373, this.frame374, 382, this.frame383);
            this.__setProp_vIconLoader_ResearchRootNode_tankico_0();
            addEventListener(flash.events.Event.FRAME_CONSTRUCTED, this.__setProp_handler, false, 0, true);
            return;
        }

        internal function frame374():*
        {
            stop();
            return;
        }

        internal function frame383():*
        {
            stop();
            return;
        }

        internal function __setProp_vIconLoader_ResearchRootNode_tankico_0():*
        {
            try 
            {
                vIconLoader["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vIconLoader.autoSize = true;
            vIconLoader.enableInitCallback = false;
            vIconLoader.maintainAspectRatio = true;
            vIconLoader.source = "";
            vIconLoader.sourceAlt = "../maps/icons/vehicle/noImage.png";
            vIconLoader.visible = true;
            try 
            {
                vIconLoader["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_nameAndXp_ResearchRootNode_nameAndXp_0(arg1:int):*
        {
            if (!(nameAndXp == null) && arg1 >= 1 && arg1 <= 48 && (this.__setPropDict[nameAndXp] == undefined || !(int(this.__setPropDict[nameAndXp]) >= 1 && int(this.__setPropDict[nameAndXp]) <= 48))) 
            {
                this.__setPropDict[nameAndXp] = arg1;
                try 
                {
                    nameAndXp["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                nameAndXp.changeXpIconToElite = true;
                nameAndXp.enabled = true;
                nameAndXp.enableInitCallback = false;
                nameAndXp.state = "locked";
                nameAndXp.visible = true;
                nameAndXp.xpLabel = "xpCostLabel";
                try 
                {
                    nameAndXp["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_nameAndXp_ResearchRootNode_nameAndXp_48(arg1:int):*
        {
            if (!(nameAndXp == null) && arg1 >= 49 && arg1 <= 89 && (this.__setPropDict[nameAndXp] == undefined || !(int(this.__setPropDict[nameAndXp]) >= 49 && int(this.__setPropDict[nameAndXp]) <= 89))) 
            {
                this.__setPropDict[nameAndXp] = arg1;
                try 
                {
                    nameAndXp["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                nameAndXp.changeXpIconToElite = false;
                nameAndXp.enabled = true;
                nameAndXp.enableInitCallback = false;
                nameAndXp.state = "normal";
                nameAndXp.visible = true;
                nameAndXp.xpLabel = "earnedXPLabel";
                try 
                {
                    nameAndXp["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_nameAndXp_ResearchRootNode_nameAndXp_89(arg1:int):*
        {
            if (!(nameAndXp == null) && arg1 >= 90 && arg1 <= 130 && (this.__setPropDict[nameAndXp] == undefined || !(int(this.__setPropDict[nameAndXp]) >= 90 && int(this.__setPropDict[nameAndXp]) <= 130))) 
            {
                this.__setPropDict[nameAndXp] = arg1;
                try 
                {
                    nameAndXp["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                nameAndXp.changeXpIconToElite = true;
                nameAndXp.enabled = true;
                nameAndXp.enableInitCallback = false;
                nameAndXp.state = "normal";
                nameAndXp.visible = true;
                nameAndXp.xpLabel = "earnedXPLabel";
                try 
                {
                    nameAndXp["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_nameAndXp_ResearchRootNode_nameAndXp_130(arg1:int):*
        {
            if (!(nameAndXp == null) && arg1 >= 131 && arg1 <= 170 && (this.__setPropDict[nameAndXp] == undefined || !(int(this.__setPropDict[nameAndXp]) >= 131 && int(this.__setPropDict[nameAndXp]) <= 170))) 
            {
                this.__setPropDict[nameAndXp] = arg1;
                try 
                {
                    nameAndXp["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                nameAndXp.changeXpIconToElite = false;
                nameAndXp.enabled = true;
                nameAndXp.enableInitCallback = false;
                nameAndXp.state = "premium";
                nameAndXp.visible = true;
                nameAndXp.xpLabel = "earnedXPLabel";
                try 
                {
                    nameAndXp["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_nameAndXp_ResearchRootNode_nameAndXp_170(arg1:int):*
        {
            if (!(nameAndXp == null) && arg1 >= 171 && arg1 <= 257 && (this.__setPropDict[nameAndXp] == undefined || !(int(this.__setPropDict[nameAndXp]) >= 171 && int(this.__setPropDict[nameAndXp]) <= 257))) 
            {
                this.__setPropDict[nameAndXp] = arg1;
                try 
                {
                    nameAndXp["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                nameAndXp.changeXpIconToElite = true;
                nameAndXp.enabled = true;
                nameAndXp.enableInitCallback = false;
                nameAndXp.state = "normal";
                nameAndXp.visible = true;
                nameAndXp.xpLabel = "earnedXPLabel";
                try 
                {
                    nameAndXp["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_nameAndXp_ResearchRootNode_nameAndXp_257(arg1:int):*
        {
            if (!(nameAndXp == null) && arg1 >= 258 && arg1 <= 342 && (this.__setPropDict[nameAndXp] == undefined || !(int(this.__setPropDict[nameAndXp]) >= 258 && int(this.__setPropDict[nameAndXp]) <= 342))) 
            {
                this.__setPropDict[nameAndXp] = arg1;
                try 
                {
                    nameAndXp["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                nameAndXp.changeXpIconToElite = false;
                nameAndXp.enabled = true;
                nameAndXp.enableInitCallback = false;
                nameAndXp.state = "premium";
                nameAndXp.visible = true;
                nameAndXp.xpLabel = "earnedXPLabel";
                try 
                {
                    nameAndXp["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_nameAndXp_ResearchRootNode_nameAndXp_342(arg1:int):*
        {
            if (!(nameAndXp == null) && arg1 >= 343 && arg1 <= 383 && (this.__setPropDict[nameAndXp] == undefined || !(int(this.__setPropDict[nameAndXp]) >= 343 && int(this.__setPropDict[nameAndXp]) <= 383))) 
            {
                this.__setPropDict[nameAndXp] = arg1;
                try 
                {
                    nameAndXp["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                nameAndXp.changeXpIconToElite = true;
                nameAndXp.enabled = true;
                nameAndXp.enableInitCallback = false;
                nameAndXp.state = "normal";
                nameAndXp.visible = true;
                nameAndXp.xpLabel = "earnedXPLabel";
                try 
                {
                    nameAndXp["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_typeAndLevel_ResearchRootNode_typeAndLevel_0(arg1:int):*
        {
            if (!(typeAndLevel == null) && arg1 >= 1 && arg1 <= 170 && (this.__setPropDict[typeAndLevel] == undefined || !(int(this.__setPropDict[typeAndLevel]) >= 1 && int(this.__setPropDict[typeAndLevel]) <= 170))) 
            {
                this.__setPropDict[typeAndLevel] = arg1;
                try 
                {
                    typeAndLevel["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                typeAndLevel.enabled = true;
                typeAndLevel.enableInitCallback = false;
                typeAndLevel.visible = true;
                try 
                {
                    typeAndLevel["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_typeAndLevel_ResearchRootNode_typeAndLevel_170(arg1:int):*
        {
            if (!(typeAndLevel == null) && arg1 >= 171 && arg1 <= 383 && (this.__setPropDict[typeAndLevel] == undefined || !(int(this.__setPropDict[typeAndLevel]) >= 171 && int(this.__setPropDict[typeAndLevel]) <= 383))) 
            {
                this.__setPropDict[typeAndLevel] = arg1;
                try 
                {
                    typeAndLevel["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                typeAndLevel.disabled = false;
                typeAndLevel.visible = true;
                try 
                {
                    typeAndLevel["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_button_ResearchRootNode_buy(arg1:int):*
        {
            if (!(button == null) && arg1 >= 49 && arg1 <= 89 && (this.__setPropDict[button] == undefined || !(int(this.__setPropDict[button]) >= 49 && int(this.__setPropDict[button]) <= 89))) 
            {
                this.__setPropDict[button] = arg1;
                try 
                {
                    button["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                button.action = "unlock";
                button.autoRepeat = false;
                button.autoSize = "none";
                button.data = "";
                button.enabled = true;
                button.enableInitCallback = false;
                button.focusable = true;
                button.imgSubstitution = {"subString":"{icon}", "source":"button_xp_cost_icon", "baseLineY":13, "width":16, "height":16};
                button.label = "";
                button.selected = false;
                button.soundId = "";
                button.soundType = "normal";
                button.toggle = false;
                button.visible = true;
                try 
                {
                    button["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_button_ResearchRootNode_buy_1(arg1:int):*
        {
            if (!(button == null) && arg1 >= 90 && arg1 <= 130 && (this.__setPropDict[button] == undefined || !(int(this.__setPropDict[button]) >= 90 && int(this.__setPropDict[button]) <= 130))) 
            {
                this.__setPropDict[button] = arg1;
                try 
                {
                    button["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                button.action = "buy";
                button.autoRepeat = false;
                button.autoSize = "none";
                button.data = "";
                button.enabled = true;
                button.enableInitCallback = false;
                button.focusable = true;
                button.imgSubstitution = {"subString":"{icon}", "source":"button_credits_icon", "baseLineY":13, "width":16, "height":16};
                button.label = "";
                button.selected = false;
                button.soundId = "";
                button.soundType = "normal";
                button.toggle = false;
                button.visible = true;
                try 
                {
                    button["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_button_ResearchRootNode_buy_2(arg1:int):*
        {
            if (!(button == null) && arg1 >= 131 && arg1 <= 170 && (this.__setPropDict[button] == undefined || !(int(this.__setPropDict[button]) >= 131 && int(this.__setPropDict[button]) <= 170))) 
            {
                this.__setPropDict[button] = arg1;
                try 
                {
                    button["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                button.action = "buy";
                button.autoRepeat = false;
                button.autoSize = "none";
                button.data = "";
                button.enabled = true;
                button.enableInitCallback = false;
                button.focusable = true;
                button.imgSubstitution = {"subString":"{icon}", "source":"button_gold_icon", "baseLineY":13, "width":16, "height":16};
                button.label = "";
                button.selected = false;
                button.soundId = "";
                button.soundType = "normal";
                button.toggle = false;
                button.visible = true;
                try 
                {
                    button["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_button_ResearchRootNode_buy_3(arg1:int):*
        {
            if (!(button == null) && arg1 >= 343 && arg1 <= 383 && (this.__setPropDict[button] == undefined || !(int(this.__setPropDict[button]) >= 343 && int(this.__setPropDict[button]) <= 383))) 
            {
                this.__setPropDict[button] = arg1;
                try 
                {
                    button["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                button.action = "buy";
                button.autoRepeat = false;
                button.autoSize = "none";
                button.data = "";
                button.enabled = true;
                button.enableInitCallback = false;
                button.focusable = true;
                button.imgSubstitution = {"subString":"{icon}", "source":"button_credits_icon", "baseLineY":13, "width":16, "height":16};
                button.label = "";
                button.selected = false;
                button.soundId = "";
                button.soundType = "normal";
                button.toggle = false;
                button.visible = true;
                try 
                {
                    button["componentInspectorSetting"] = false;
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
            this.__setProp_nameAndXp_ResearchRootNode_nameAndXp_0(loc1);
            this.__setProp_nameAndXp_ResearchRootNode_nameAndXp_48(loc1);
            this.__setProp_nameAndXp_ResearchRootNode_nameAndXp_89(loc1);
            this.__setProp_nameAndXp_ResearchRootNode_nameAndXp_130(loc1);
            this.__setProp_nameAndXp_ResearchRootNode_nameAndXp_170(loc1);
            this.__setProp_nameAndXp_ResearchRootNode_nameAndXp_257(loc1);
            this.__setProp_nameAndXp_ResearchRootNode_nameAndXp_342(loc1);
            this.__setProp_typeAndLevel_ResearchRootNode_typeAndLevel_0(loc1);
            this.__setProp_typeAndLevel_ResearchRootNode_typeAndLevel_170(loc1);
            this.__setProp_button_ResearchRootNode_buy(loc1);
            this.__setProp_button_ResearchRootNode_buy_1(loc1);
            this.__setProp_button_ResearchRootNode_buy_2(loc1);
            this.__setProp_button_ResearchRootNode_buy_3(loc1);
            return;
        }

        internal function frame8():*
        {
            stop();
            return;
        }

        internal function frame16():*
        {
            stop();
            return;
        }

        internal function frame24():*
        {
            stop();
            return;
        }

        internal function frame32():*
        {
            stop();
            return;
        }

        internal function frame40():*
        {
            stop();
            return;
        }

        internal function frame48():*
        {
            stop();
            return;
        }

        internal function frame56():*
        {
            stop();
            return;
        }

        internal function frame64():*
        {
            stop();
            return;
        }

        internal function frame72():*
        {
            stop();
            return;
        }

        internal function frame80():*
        {
            stop();
            return;
        }

        internal function frame89():*
        {
            stop();
            return;
        }

        internal function frame97():*
        {
            stop();
            return;
        }

        internal function frame105():*
        {
            stop();
            return;
        }

        internal function frame113():*
        {
            stop();
            return;
        }

        internal function frame121():*
        {
            stop();
            return;
        }

        internal function frame130():*
        {
            stop();
            return;
        }

        internal function frame138():*
        {
            stop();
            return;
        }

        internal function frame146():*
        {
            stop();
            return;
        }

        internal function frame154():*
        {
            stop();
            return;
        }

        internal function frame162():*
        {
            stop();
            return;
        }

        internal function frame170():*
        {
            stop();
            return;
        }

        internal function frame179():*
        {
            stop();
            return;
        }

        internal function frame187():*
        {
            stop();
            return;
        }

        internal function frame195():*
        {
            stop();
            return;
        }

        internal function frame204():*
        {
            stop();
            return;
        }

        internal function frame213():*
        {
            stop();
            return;
        }

        internal function frame222():*
        {
            stop();
            return;
        }

        internal function frame231():*
        {
            stop();
            return;
        }

        internal function frame239():*
        {
            stop();
            return;
        }

        internal function frame248():*
        {
            stop();
            return;
        }

        internal function frame257():*
        {
            stop();
            return;
        }

        internal function frame265():*
        {
            stop();
            return;
        }

        internal function frame274():*
        {
            stop();
            return;
        }

        internal function frame284():*
        {
            stop();
            return;
        }

        internal function frame292():*
        {
            stop();
            return;
        }

        internal function frame301():*
        {
            stop();
            return;
        }

        internal function frame309():*
        {
            stop();
            return;
        }

        internal function frame317():*
        {
            stop();
            return;
        }

        internal function frame326():*
        {
            stop();
            return;
        }

        internal function frame334():*
        {
            stop();
            return;
        }

        internal function frame342():*
        {
            stop();
            return;
        }

        internal function frame350():*
        {
            stop();
            return;
        }

        internal function frame358():*
        {
            stop();
            return;
        }

        internal function frame366():*
        {
            stop();
            return;
        }

        public var __setPropDict:flash.utils.Dictionary;

        public var __lastFrameProp:int=-1;
    }
}
