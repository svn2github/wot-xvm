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
    import net.wg.gui.components.tooltips.*;
    
    public dynamic class AchievmentsCustomBlockItem extends net.wg.gui.components.tooltips.AchievmentsCustomBlockItem
    {
        public function AchievmentsCustomBlockItem()
        {
            super();
            this.__setProp_nationIco_AchievmentsCustomBlockItem_nationIco_0();
            this.__setProp_vehicleType_AchievmentsCustomBlockItem_vehicleType_0();
            return;
        }

        internal function __setProp_nationIco_AchievmentsCustomBlockItem_nationIco_0():*
        {
            try 
            {
                nationIco["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            nationIco.autoSize = true;
            nationIco.enableInitCallback = false;
            nationIco.maintainAspectRatio = true;
            nationIco.source = "";
            nationIco.sourceAlt = "../maps/icons/filters/empty.png";
            nationIco.visible = true;
            try 
            {
                nationIco["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }

        internal function __setProp_vehicleType_AchievmentsCustomBlockItem_vehicleType_0():*
        {
            try 
            {
                vehicleType["componentInspectorSetting"] = true;
            }
            catch (e:Error)
            {
            };
            vehicleType.autoSize = true;
            vehicleType.enableInitCallback = false;
            vehicleType.maintainAspectRatio = true;
            vehicleType.source = "";
            vehicleType.sourceAlt = "../maps/icons/filters/empty.png";
            vehicleType.visible = true;
            try 
            {
                vehicleType["componentInspectorSetting"] = false;
            }
            catch (e:Error)
            {
            };
            return;
        }
    }
}
