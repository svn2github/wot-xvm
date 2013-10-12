package net.wg.gui.lobby.profile.pages.technique
{
   import net.wg.infrastructure.BaseImporter;


   public class _Importer extends BaseImporter
   {
          
      public function _Importer() {
         super();
         importClasses(Vector.<Class>([ProfileSortingBtnInfo,ProfileSortingButton,ProfileTechniquePage,ProfileTechniqueWindow,ProfileTechnique,SortingSettingVO,TechniqueListVehicleVO,TechniqueRenderer,TechniqueStatisticTab,TechniqueAchievementsBlock,TechniqueAchievementTab,TechniqueStackComponent,TechniqueListComponent,AchievementSmall,TechniqueStatisticVO]));
      }
   }

}