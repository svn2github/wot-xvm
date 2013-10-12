package net.wg.infrastructure.base.meta.impl
{
   import net.wg.data.constants.Errors;


   public class CyberSportUnitsListMeta extends CyberSportBaseViewMeta
   {
          
      public function CyberSportUnitsListMeta() {
         super();
      }

      public var getTeamData:Function = null;

      public var refreshTeams:Function = null;

      public var filterVehicles:Function = null;

      public var showMore:Function = null;

      public function getTeamDataS(param1:Number) : void {
         App.utils.asserter.assertNotNull(this.getTeamData,"getTeamData" + Errors.CANT_NULL);
         this.getTeamData(param1);
      }

      public function refreshTeamsS() : void {
         App.utils.asserter.assertNotNull(this.refreshTeams,"refreshTeams" + Errors.CANT_NULL);
         this.refreshTeams();
      }

      public function filterVehiclesS() : void {
         App.utils.asserter.assertNotNull(this.filterVehicles,"filterVehicles" + Errors.CANT_NULL);
         this.filterVehicles();
      }

      public function showMoreS() : void {
         App.utils.asserter.assertNotNull(this.showMore,"showMore" + Errors.CANT_NULL);
         this.showMore();
      }
   }

}