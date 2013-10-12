package net.wg.gui.components.common.waiting
{
   import scaleform.clik.core.UIComponent;
   import net.wg.infrastructure.interfaces.entity.IDisposable;
   import scaleform.clik.constants.InvalidationType;
   import net.wg.data.constants.Linkages;


   public class Waiting extends UIComponent implements IDisposable
   {
          
      public function Waiting() {
         super();
      }

      private static var TEXT_INVALID:String = "txtInv";

      private var waitingComponent:WaitingComponent;

      private var _text:String;

      override protected function draw() : void {
         super.draw();
         if(isInvalid(InvalidationType.SIZE))
         {
            if(this.waitingComponent)
            {
               this.waitingComponent.setSize(_width,_height);
            }
         }
         if(isInvalid(TEXT_INVALID))
         {
            if(this.waitingComponent)
            {
               this.waitingComponent.setMessage(this._text);
            }
         }
      }

      public function setMessage(param1:String) : void {
         this._text = param1;
         invalidate(TEXT_INVALID);
      }

      public function show() : void {
         visible = true;
         if(!this.waitingComponent)
         {
            this.waitingComponent = WaitingComponent(App.utils.classFactory.getObject(Linkages.WAITING_COMPONENT));
            addChild(this.waitingComponent);
            invalidate(TEXT_INVALID,InvalidationType.SIZE);
         }
      }

      public function hide() : void {
         visible = false;
      }

      override public function dispose() : void {
         super.dispose();
         if(this.waitingComponent)
         {
            if(this.waitingComponent.parent)
            {
               this.waitingComponent.parent.removeChild(this.waitingComponent);
            }
            this.waitingComponent = null;
         }
         if(this.waitingComponent)
         {
            this.waitingComponent.dispose();
            if(this.waitingComponent.parent)
            {
               this.waitingComponent.parent.removeChild(this.waitingComponent);
               this.waitingComponent = null;
            }
         }
      }
   }

}