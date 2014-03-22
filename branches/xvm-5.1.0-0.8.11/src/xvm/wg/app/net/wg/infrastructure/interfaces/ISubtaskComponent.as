package net.wg.infrastructure.interfaces
{
   import scaleform.clik.interfaces.IUIComponent;
   import net.wg.infrastructure.interfaces.entity.IDisposable;
   import __AS3__.vec.Vector;


   public interface ISubtaskComponent extends IUIComponent, IDisposable
   {
          
      function setData(param1:Object) : void;

      function disableLinkBtns(param1:Vector.<String>) : void;
   }

}