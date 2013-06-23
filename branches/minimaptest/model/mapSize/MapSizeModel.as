import com.xvm.Logger;
import com.xvm.Config;
import wot.Minimap.model.mapSize.MapSizeBase;

/**
 * Defines real map side size in meters.
 * Common values are 1km, 800m
 */

class wot.Minimap.model.mapSize.MapSizeModel
{
    private static var _instance:MapSizeModel;
    
    private var cellSide:Number;
    
    public static function get instance():MapSizeModel
    {
        if (!_instance)
        {
            _instance = new MapSizeModel();
        }
        
        return _instance;
    }

    public function MapSizeModel()
    {
        /**
         * Read map name previously written by Battleloading.setMapBG().
         * Best method to define map size without Python so far.
         * Method does not depend on locale,
         * but depends on xvm-stat.exe presence.
         */
        Logger.add("Minimap: Config.s_vars " + Config.s_vars.map_name);
        cellSide = MapSizeBase.sizeBySytemMapName(Config.s_vars.map_name);
        Logger.add("Minimap: cellSide " + cellSide);

        if (!cellSide)
        {
            Logger.add("Minimap: system map name not set: " + Config.s_vars.map_name);
            /**
             * Map is not recognized with xvm-stat.exe.
             * Possibly due to xvm-stat.exe absence or new map name with old XVM.
             * Method does not depend on xvm-stat.exe,
             * but depends on localilized map names in Base.
             */
            cellSide = MapSizeBase.sizeByLocalizedMapName(_root.statsData.arenaData.mapText);
            Logger.add("Minimap: localized map name: " + _root.statsData.arenaData.mapText);

            if (!cellSide)
            {
                /** This can be seen only for new maps */
                Logger.add("Minimap ERROR: map no recognized");
            }
        }


    }

    public function getCellSide():Number
    {
        return cellSide;
    }
    
    public function getFullSide():Number
    {
        return cellSide * 10;
    }
}
