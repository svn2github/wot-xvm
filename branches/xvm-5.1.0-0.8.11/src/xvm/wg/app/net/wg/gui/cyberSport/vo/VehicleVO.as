package net.wg.gui.cyberSport.vo
{
   import net.wg.data.daapi.base.DAAPIDataClass;


   public class VehicleVO extends DAAPIDataClass
   {
          
      public function VehicleVO(param1:Object) {
         super(param1);
      }

      public var intCD:uint;

      public var nationID:uint;

      public var name:String = "";

      public var userName:String = "";

      public var shortUserName:String = "";

      public var level:uint;

      public var smallIconPath:String = "";

      public var type:String = "";

      public var isReadyToFight:Boolean = false;
   }

}