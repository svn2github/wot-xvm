package net.wg.gui.cyberSport.helpers
{
   import net.wg.infrastructure.helpers.DropListDelegate;
   import flash.display.InteractiveObject;
   import net.wg.infrastructure.interfaces.entity.IUpdatable;
   import net.wg.infrastructure.interfaces.entity.IDropItem;
   import net.wg.data.constants.Errors;
   import net.wg.gui.cyberSport.vo.UnitCandidateVO;
   import net.wg.gui.cyberSport.controls.SlotDropIndicator;


   public class CSDragDropDelegate extends DropListDelegate
   {
          
      public function CSDragDropDelegate(param1:InteractiveObject, param2:String) {
         super(param1,param2);
         this.id = Math.round(Math.random() * 100);
      }

      private static var s_lastFreeSlots:Array = null;

      private var _highlightingHandler:Function = null;

      private var _onEndDropHandler:Function = null;

      private var id:Number = 0;

      override public function onStartDrop(param1:InteractiveObject, param2:InteractiveObject, param3:Number, param4:Number) : Boolean {
         var _loc6_:IUpdatable = null;
         var _loc5_:* = !(IDropItem(param2).data == null);
         if(_loc5_)
         {
            super.onStartDrop(param1,param2,param3,param4);
            if(App.instance)
            {
               _loc6_ = App.cursor.getAttachedSprite() as IUpdatable;
               if(_loc6_)
               {
                  App.utils.asserter.assertNotNull(_loc6_,"cursor.attachedSprite" + Errors.CANT_NULL);
                  IUpdatable(_loc6_).update(IDropItem(param2).data);
               }
               else
               {
                  DebugUtils.LOG_ERROR("attached sprite must implements IUpdatable interface.");
               }
            }
         }
         return _loc5_;
      }

      override public function onBeforeDrop(param1:InteractiveObject, param2:InteractiveObject) : Boolean {
         var _loc3_:IDropItem = param2 as IDropItem;
         if(_loc3_)
         {
            if(!(_loc3_.data == null) && !_loc3_.data.isCommander)
            {
               s_lastFreeSlots = [].concat(this._highlightingHandler(UnitCandidateVO(_loc3_.data).databaseID));
               App.utils.asserter.assertNotNull(s_lastFreeSlots,"_lastFreeSlots" + Errors.CANT_NULL);
               return super.onBeforeDrop(param1,param2);
            }
            return false;
         }
         return false;
      }

      override public function onEndDrop(param1:InteractiveObject, param2:InteractiveObject, param3:InteractiveObject, param4:InteractiveObject) : void {
         var _loc5_:* = NaN;
         super.onEndDrop(param1,param2,param3,param4);
         trace(param1,param2,param3,param4.parent);
         App.utils.asserter.assertNotNull(s_lastFreeSlots,"_lastFreeSlots" + Errors.CANT_NULL);
         if(param4  is  SlotDropIndicator)
         {
            _loc5_ = SlotDropIndicator(param4).index;
            if(s_lastFreeSlots.indexOf(SlotDropIndicator(param4).index) != -1)
            {
               this._onEndDropHandler(_loc5_,IDropItem(param3).data.databaseID);
            }
         }
      }

      override public function dispose() : void {
         this._highlightingHandler = null;
         this._onEndDropHandler = null;
         super.dispose();
      }

      public function setHandlers(param1:Function, param2:Function) : void {
         this._highlightingHandler = param1;
         this._onEndDropHandler = param2;
      }
   }

}