/**
 * XVM Config
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.vehinfo
{
    import com.xvm.cfg.CVehicleNames;

    public class VehicleInfo
    {
/*        // icon = "../maps/icons/vehicle/contour/ussr-IS-3.png"
        // return: "ussr-IS-3"
        public static function getVehicleName(icon: String): String
        {
            icon = icon.slice(icon.lastIndexOf("/") + 1, icon.lastIndexOf("."));
            icon = Strings.trim(icon);
            return icon;
        }

        // icon = "../maps/icons/vehicle/contour/ussr-IS-3.png"
        // return: "IS-3"
        public static function getVName(icon: String): String
        {
            icon = getVehicleName(icon);
            icon = icon.slice(icon.indexOf("-") + 1);
            icon = Strings.trim(icon);
            return icon;
        }

        // icon = "../maps/icons/vehicle/contour/ussr-IS-3.png"
        public static function getInfo1(icon: String): Object
        {
            return VehicleInfoData.data[getName1(icon)] || null;
        }

        // icon = "../maps/icons/vehicle/contour/ussr-IS-3.png"
        public static function getInfo2(icon: String): Object
        {
            return _getInfo2(getName2(icon));
        }

        public static function getInfo2ByVid(vid:Number):Object
        {
            return _getInfo2(VehicleInfoData2.vidToVname["_" + vid]);
        }

        private static function _getInfo2(vn:String):Object
        {
            var res = VehicleInfoData2.data[vn];
            if (!res)
                return null;
            res.avg = VehicleInfoDataAvg.data[vn] || null;
            res.top = VehicleInfoDataTop.data[vn] || null;
            return res;
        }
*/
        public static function getVehicleNamesData():CVehicleNames
        {
            var result:CVehicleNames = new CVehicleNames();
            for (var vname:String in VehicleInfoData.data)
                result[vname] = {name:VehicleInfoData.data[vname].name, short:VehicleInfoData.data[vname].short};
            return result;
        }
/*
        public static function mapVehicleName(iconSource:String, originalName:String):String
        {
            try
            {
                return Config.s_config.vehicleNames[getName1(iconSource)].name || originalName;
            }
            catch (ex:Error)
            {
                return originalName;
            }
        }

        public static function mapVehicleName2(tankName:String, originalName:String):String
        {
                return Config.s_config.vehicleNames[tankName].name || originalName;
        }

        public static function mapVehicleShortName(vehicleShortName:String,originalName:String):String
        {
            try
            {
                return Config.s_config.vehicleNames[vehicleShortName].short || VehicleInfoData.data[vehicleShortName].short || originalName;
            }
            catch (ex:Error)
            {
                return originalName;
            }
        }

        public static function GetVTypeValue(iconSource:String): String
        {
            var vi2 = com.xvm.VehicleInfo.getInfo2(iconSource);
            if (vi2 == null)
                return "";
            var vtype = vi2.type;
            if (!vtype || !Config.s_config.texts.vtype[vtype])
                return "";
            return Config.s_config.texts.vtype[vtype];
        }

        public static function GetVTypeValue2(iconSource:String): String
        {
            var vi2 = com.xvm.VehicleInfo.getInfo2(iconSource);
            if (vi2 == null)
                return "";
            var vtype = vi2.type;
            if (!vtype)
                return "";
            return vtype;
        }

        // icon = "../maps/icons/vehicle/contour/ussr-IS-3.png"
        // return: "is_3"
        public static function getName2(icon: String): String
        {
            icon = icon.slice(icon.lastIndexOf("/") + 1, icon.lastIndexOf("."));
            icon = icon.slice(icon.indexOf("-") + 1);
            icon = Strings.trim(icon);
            icon = icon.split("-").join("_").toLowerCase();
            return icon;
        }

        // icon = "../maps/icons/vehicle/contour/ussr-IS-3.png"
        // return: "ussr_IS_3"
        public static function getName1(icon: String): String
        {
            icon = icon.slice(icon.lastIndexOf("/") + 1, icon.lastIndexOf("."));
            icon = icon.split("-").join("_");
            icon = Strings.trim(icon);
            return icon;
        }*/
    }
}
