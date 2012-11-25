/**
 * ParticipantsModel keeps list of all participating tanks.
 * List is syncronized while gameplay proceeds and new icons appear on map.
 * Sync is performed by means of Players panel highlighting functionality.
 * 
 * @author ilitvinov87@gmail.com
 */
import wot.Minimap.MinimapEvent;
import wot.utils.GlobalEventDispatcher;
    
class wot.Minimap.model.ParticipantsModel
{
    public function ParticipantsModel() 
    {
        GlobalEventDispatcher.dispatchEvent(new MinimapEvent(MinimapEvent.REQUEST_PARTICIPANTS));
    }
    
}