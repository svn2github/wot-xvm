/**
 * Minimap manages all kinds size, border, drawing and clicking.
 * Nothing of interest except icon scaling.
 * Marker scaling adjusts tank and base icon size.
 * 
 * Minimap extends MinimapEntity.
 * 
 * @author ilitvinov87@gmail.com
 */

import wot.utils.Utils;
import wot.utils.Logger;
import wot.Minimap.model.ParticipantsModel;
import wot.Minimap.model.MapConfig;

class wot.Minimap.Minimap extends net.wargaming.ingame.Minimap
{
    private var participants:ParticipantsModel;
    
    function Minimap()
    {
        Utils.TraceXvmModule("Minimap");
        super();
        
        /**
         * Setup minimap icon size.
         * Read val from config.
         * Default by WG is 0.5.
         * 
         * TODO:
         * Default at XVM config is 0.5.
         */
        MARKERS_SCALING = MapConfig.iconScale;
        
        participants = new ParticipantsModel();
    }
    
    function configUI()
    {
        Logger.add("configUI");
        super.configUI();
    }
}