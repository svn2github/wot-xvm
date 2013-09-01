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
    import net.wg.gui.lobby.store.views.*;
    
    public dynamic class vehicleViewUI extends net.wg.gui.lobby.store.views.VehicleView
    {
        public function vehicleViewUI()
        {
            this.__setPropDict = new flash.utils.Dictionary(true);
            super();
            addFrameScript(0, this.frame1, 1, this.frame2);
            this.__setProp_allRadioBtn_vehicleView_allRadioBtn_0();
            this.__setProp_lightTankRadioBtn_vehicleView_lightTankRadioBtn_0();
            this.__setProp_mediumTankRadioBtn_vehicleView_mediumTankRadioBtn_0();
            this.__setProp_heavyTankRadioBtn_vehicleView_heavyTankRadioBtn_0();
            this.__setProp_at_spgRadioBtn_vehicleView_at_spgRadioBtn_0();
            this.__setProp_spgRadioBtn_vehicleView_spgRadioBtn_0();
            return;
        }

        internal function __setProp_brockenChckBx_vehicleView_brockenChckBx_0():*
        {
            if (this.__setPropDict[brockenChckBx] == undefined || !(int(this.__setPropDict[brockenChckBx]) == 1)) 
            {
                this.__setPropDict[brockenChckBx] = 1;
                try 
                {
                    brockenChckBx["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                brockenChckBx.autoSize = "none";
                brockenChckBx.data = "";
                brockenChckBx.enabled = true;
                brockenChckBx.enableInitCallback = false;
                brockenChckBx.focusable = true;
                brockenChckBx.label = "";
                brockenChckBx.selected = false;
                brockenChckBx.soundId = "";
                brockenChckBx.soundType = "";
                brockenChckBx.visible = false;
                try 
                {
                    brockenChckBx["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_brockenChckBx_vehicleView_brockenChckBx_1():*
        {
            if (this.__setPropDict[brockenChckBx] == undefined || !(int(this.__setPropDict[brockenChckBx]) == 2)) 
            {
                this.__setPropDict[brockenChckBx] = 2;
                try 
                {
                    brockenChckBx["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                brockenChckBx.autoSize = "none";
                brockenChckBx.data = "";
                brockenChckBx.enabled = true;
                brockenChckBx.enableInitCallback = false;
                brockenChckBx.focusable = true;
                brockenChckBx.label = "";
                brockenChckBx.selected = false;
                brockenChckBx.soundId = "";
                brockenChckBx.soundType = "";
                brockenChckBx.visible = true;
                try 
                {
                    brockenChckBx["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_inHangarChkBx_vehicleView_inHangarChkBx_0():*
        {
            if (this.__setPropDict[inHangarChkBx] == undefined || !(int(this.__setPropDict[inHangarChkBx]) == 1)) 
            {
                this.__setPropDict[inHangarChkBx] = 1;
                try 
                {
                    inHangarChkBx["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                inHangarChkBx.autoSize = "none";
                inHangarChkBx.data = "";
                inHangarChkBx.enabled = true;
                inHangarChkBx.enableInitCallback = false;
                inHangarChkBx.focusable = true;
                inHangarChkBx.label = "";
                inHangarChkBx.selected = false;
                inHangarChkBx.soundId = "";
                inHangarChkBx.soundType = "";
                inHangarChkBx.visible = true;
                try 
                {
                    inHangarChkBx["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_inHangarChkBx_vehicleView_inHangarChkBx_1():*
        {
            if (this.__setPropDict[inHangarChkBx] == undefined || !(int(this.__setPropDict[inHangarChkBx]) == 2)) 
            {
                this.__setPropDict[inHangarChkBx] = 2;
                try 
                {
                    inHangarChkBx["componentInspectorSetting"] = true;
                }
                catch (e:Error)
                {
                };
                inHangarChkBx.autoSize = "none";
                inHangarChkBx.data = "";
                inHangarChkBx.enabled = true;
                inHangarChkBx.enableInitCallback = false;
                inHangarChkBx.focusable = true;
                inHangarChkBx.label = "";
                inHangarChkBx.selected = false;
                inHangarChkBx.soundId = "";
                inHangarChkBx.soundType = "";
                inHangarChkBx.visible = false;
                try 
                {
                    inHangarChkBx["componentInspectorSetting"] = false;
                }
                catch (e:Error)
                {
                };
            }
            return;
        }

        internal function __setProp_allRadioBtn_vehicleView_allRadioBtn_0():*
        {
            try 
            {
                allRadioBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            allRadioBtn.autoSize = "none";
            allRadioBtn.data = "";
            allRadioBtn.enabled = true;
            allRadioBtn.enableInitCallback = false;
            allRadioBtn.focusable = true;
            allRadioBtn.groupName = "vehicleGroup";
            allRadioBtn.label = "";
            allRadioBtn.selected = false;
            allRadioBtn.soundId = "";
            allRadioBtn.soundType = "";
            allRadioBtn.visible = true;
            try 
            {
                allRadioBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_lightTankRadioBtn_vehicleView_lightTankRadioBtn_0():*
        {
            try 
            {
                lightTankRadioBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            lightTankRadioBtn.autoSize = "none";
            lightTankRadioBtn.data = "";
            lightTankRadioBtn.enabled = true;
            lightTankRadioBtn.enableInitCallback = false;
            lightTankRadioBtn.focusable = true;
            lightTankRadioBtn.groupName = "vehicleGroup";
            lightTankRadioBtn.label = "";
            lightTankRadioBtn.selected = false;
            lightTankRadioBtn.soundId = "";
            lightTankRadioBtn.soundType = "";
            lightTankRadioBtn.visible = true;
            try 
            {
                lightTankRadioBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_mediumTankRadioBtn_vehicleView_mediumTankRadioBtn_0():*
        {
            try 
            {
                mediumTankRadioBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            mediumTankRadioBtn.autoSize = "none";
            mediumTankRadioBtn.data = "";
            mediumTankRadioBtn.enabled = true;
            mediumTankRadioBtn.enableInitCallback = false;
            mediumTankRadioBtn.focusable = true;
            mediumTankRadioBtn.groupName = "vehicleGroup";
            mediumTankRadioBtn.label = "";
            mediumTankRadioBtn.selected = false;
            mediumTankRadioBtn.soundId = "";
            mediumTankRadioBtn.soundType = "";
            mediumTankRadioBtn.visible = true;
            try 
            {
                mediumTankRadioBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_heavyTankRadioBtn_vehicleView_heavyTankRadioBtn_0():*
        {
            try 
            {
                heavyTankRadioBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            heavyTankRadioBtn.autoSize = "none";
            heavyTankRadioBtn.data = "";
            heavyTankRadioBtn.enabled = true;
            heavyTankRadioBtn.enableInitCallback = false;
            heavyTankRadioBtn.focusable = true;
            heavyTankRadioBtn.groupName = "vehicleGroup";
            heavyTankRadioBtn.label = "";
            heavyTankRadioBtn.selected = false;
            heavyTankRadioBtn.soundId = "";
            heavyTankRadioBtn.soundType = "";
            heavyTankRadioBtn.visible = true;
            try 
            {
                heavyTankRadioBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_at_spgRadioBtn_vehicleView_at_spgRadioBtn_0():*
        {
            try 
            {
                at_spgRadioBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            at_spgRadioBtn.autoSize = "none";
            at_spgRadioBtn.data = "";
            at_spgRadioBtn.enabled = true;
            at_spgRadioBtn.enableInitCallback = false;
            at_spgRadioBtn.focusable = true;
            at_spgRadioBtn.groupName = "vehicleGroup";
            at_spgRadioBtn.label = "";
            at_spgRadioBtn.selected = false;
            at_spgRadioBtn.soundId = "";
            at_spgRadioBtn.soundType = "";
            at_spgRadioBtn.visible = true;
            try 
            {
                at_spgRadioBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_spgRadioBtn_vehicleView_spgRadioBtn_0():*
        {
            try 
            {
                spgRadioBtn["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            spgRadioBtn.autoSize = "none";
            spgRadioBtn.data = "";
            spgRadioBtn.enabled = true;
            spgRadioBtn.enableInitCallback = false;
            spgRadioBtn.focusable = true;
            spgRadioBtn.groupName = "vehicleGroup";
            spgRadioBtn.label = "";
            spgRadioBtn.selected = false;
            spgRadioBtn.soundId = "";
            spgRadioBtn.soundType = "";
            spgRadioBtn.visible = true;
            try 
            {
                spgRadioBtn["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function frame1():*
        {
            this.__setProp_inHangarChkBx_vehicleView_inHangarChkBx_0();
            this.__setProp_brockenChckBx_vehicleView_brockenChckBx_0();
            stop();
            return;
        }

        internal function frame2():*
        {
            this.__setProp_inHangarChkBx_vehicleView_inHangarChkBx_1();
            this.__setProp_brockenChckBx_vehicleView_brockenChckBx_1();
            stop();
            return;
        }

        public var __setPropDict:flash.utils.Dictionary;
    }
}
