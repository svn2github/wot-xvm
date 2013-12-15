package net.wg.infrastructure.base.meta.impl
{
   import net.wg.infrastructure.base.BaseDAAPIModule;
   import net.wg.data.constants.Errors;
   import net.wg.infrastructure.interfaces.IStrCaseProperties;


   public class UtilsManagerMeta extends BaseDAAPIModule
   {
          
      public function UtilsManagerMeta() {
         super();
      }

      public var getNationNames:Function = null;

      public var getNationIndices:Function = null;

      public var getGUINations:Function = null;

      public var changeStringCasing:Function = null;

      public function getNationNamesS() : Array {
         App.utils.asserter.assertNotNull(this.getNationNames,"getNationNames" + Errors.CANT_NULL);
         return this.getNationNames();
      }

      public function getNationIndicesS() : Object {
         App.utils.asserter.assertNotNull(this.getNationIndices,"getNationIndices" + Errors.CANT_NULL);
         return this.getNationIndices();
      }

      public function getGUINationsS() : Array {
         App.utils.asserter.assertNotNull(this.getGUINations,"getGUINations" + Errors.CANT_NULL);
         return this.getGUINations();
      }

      public function changeStringCasingS(param1:String, param2:Boolean, param3:IStrCaseProperties) : String {
         App.utils.asserter.assertNotNull(this.changeStringCasing,"changeStringCasing" + Errors.CANT_NULL);
         return this.changeStringCasing(param1,param2,param3);
      }
   }

}