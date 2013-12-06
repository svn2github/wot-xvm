package net.wg.infrastructure.base.meta
{
   import flash.events.IEventDispatcher;


   public interface IVehicleSelectorPopupMeta extends IEventDispatcher
   {
          
      function onFiltersUpdateS(param1:int, param2:String, param3:Boolean) : void;

      function onSelectVehiclesS(param1:Array) : void;

      function as_setFiltersData(param1:Object) : void;

      function as_setListData(param1:Array, param2:Array) : void;

      function as_setListMode(param1:Boolean) : void;

      function as_setInfoText(param1:String) : void;
   }

}