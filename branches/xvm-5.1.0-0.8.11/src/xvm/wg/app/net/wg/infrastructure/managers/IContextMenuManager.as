package net.wg.infrastructure.managers
{
   import net.wg.infrastructure.interfaces.entity.IDisposable;
   import net.wg.infrastructure.interfaces.IContextMenu;
   import __AS3__.vec.Vector;
   import net.wg.infrastructure.interfaces.IContextItem;
   import flash.display.DisplayObject;
   import net.wg.infrastructure.interfaces.IUserContextMenuGenerator;


   public interface IContextMenuManager extends IDisposable
   {
          
      function show(param1:Vector.<IContextItem>, param2:DisplayObject, param3:Function=null, param4:Object=null) : IContextMenu;

      function showUserContextMenu(param1:DisplayObject, param2:Object, param3:IUserContextMenuGenerator, param4:Function=null) : IContextMenu;

      function hide() : void;
   }

}