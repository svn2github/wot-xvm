package net.wg.dev.base.meta.impl
{
   import net.wg.infrastructure.base.AbstractWindowView;
   import net.wg.data.constants.Errors;


   public class GEInspectWindowMeta extends AbstractWindowView
   {
          
      public function GEInspectWindowMeta() {
         super();
      }

      public var showDesigner:Function = null;

      public function showDesignerS() : void {
         App.utils.asserter.assertNotNull(this.showDesigner,"showDesigner" + Errors.CANT_NULL);
         this.showDesigner();
      }
   }

}