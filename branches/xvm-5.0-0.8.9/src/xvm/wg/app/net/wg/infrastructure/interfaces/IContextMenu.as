package net.wg.infrastructure.interfaces
{
   import __AS3__.vec.Vector;


   public interface IContextMenu
   {
          
      function build(param1:Vector.<IContextItem>, param2:Number, param3:Number) : void;

      function setMemberItemData(param1:Object) : void;
   }

}