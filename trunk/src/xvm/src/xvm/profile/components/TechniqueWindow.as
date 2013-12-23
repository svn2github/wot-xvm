package xvm.profile.components
{
    import com.xvm.*;
    import com.xvm.misc.*;
    import com.xvm.types.dossier.*;
    import net.wg.gui.lobby.profile.pages.summary.*;
    import net.wg.gui.lobby.profile.pages.technique.*;

    public class TechniqueWindow extends Technique
    {
        public function TechniqueWindow(window:ProfileTechniqueWindow, summary:ProfileSummary, playerName:String, playerId:int):void
        {
            super(window, summary, playerName);

            _playerId = playerId;
            Dossier.loadDossier(this, dossierLoaded, playerId);
        }

        override protected function createFilters():void
        {
            super.createFilters();

            filter.visible = false;
            filter.x = 680;
            filter.y = -47;
        }

        private function dossierLoaded(dossier:AccountDossier):void
        {
            // TODO
        }
    }
}
