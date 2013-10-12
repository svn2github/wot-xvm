package net.wg.gui.cyberSport.controls
{
   import scaleform.clik.core.UIComponent;
   import net.wg.infrastructure.interfaces.entity.IDropItem;
   import net.wg.infrastructure.interfaces.entity.IUpdatable;
   import net.wg.gui.cyberSport.vo.UnitCandidateVO;
   import flash.events.MouseEvent;
   import net.wg.gui.cyberSport.helpers.CSPlayerCIGenerator;
   import net.wg.gui.cyberSport.views.unit.SlotRenderer;
   import net.wg.infrastructure.interfaces.IContextItem;
   import net.wg.data.components.UserContextItem;
   import net.wg.gui.events.ContextMenuEvent;
   import net.wg.gui.cyberSport.controls.events.CSComponentEvent;


   public class SlotDropIndicator extends UIComponent implements IDropItem, IUpdatable
   {
          
      public function SlotDropIndicator() {
         super();
         addEventListener(MouseEvent.CLICK,this.onClickHandler);
      }

      private var _data:UnitCandidateVO = null;

      private var _index:Number = -1;

      private var _isCurrentUserCommander:Boolean = false;

      private var _playerStatus:int = -1;

      private var _isHighlighted:Boolean = false;

      override public function dispose() : void {
         this._data = null;
         removeEventListener(MouseEvent.CLICK,this.onClickHandler);
         super.dispose();
      }

      public function setHighlightState(param1:Boolean) : void {
         this._isHighlighted = param1;
         alpha = this._isHighlighted?1:0;
         this.updateMouseEnabled();
      }

      public function update(param1:Object) : void {
         this._data = param1?UnitCandidateVO(param1):null;
         this.updateMouseEnabled();
      }

      private function updateMouseEnabled() : void {
         if(this._isCurrentUserCommander)
         {
            mouseEnabled = this._index > 0 && (((this._isHighlighted) || (this._data)) || this._index >= 5);
         }
         else
         {
            mouseEnabled = (this._data) && !this._data.isSelf;
         }
         buttonMode = useHandCursor = mouseEnabled;
      }

      public function get index() : Number {
         return this._index;
      }

      public function set index(param1:Number) : void {
         this._index = param1;
      }

      public function get data() : Object {
         return this._data;
      }

      public function set isCurrentUserCommander(param1:Boolean) : void {
         this._isCurrentUserCommander = param1;
      }

      public function set playerStatus(param1:int) : void {
         this._playerStatus = param1;
      }

      private function onClickHandler(param1:MouseEvent) : void {
         var _loc2_:UnitCandidateVO = null;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:CSPlayerCIGenerator = null;
         if(App.utils.commons.isRightButton(param1))
         {
            _loc2_ = this._data?this._data.isSelf?null:this._data:null;
            _loc3_ = (this._isCurrentUserCommander) && this._index >= 5;
            _loc4_ = this._playerStatus == SlotRenderer.STATUSES.indexOf(SlotRenderer.STATUS_LOCKED);
            _loc5_ = new CSPlayerCIGenerator(this._isCurrentUserCommander);
            if(_loc2_)
            {
               App.contextMenuMgr.showUserContextMenu(this,this._data,_loc5_,this.onContextMenuAction);
            }
            else
            {
               if(_loc3_)
               {
                  App.contextMenuMgr.show(Vector.<IContextItem>([new UserContextItem(_loc4_?"unlockSlot":"lockSlot")]),this,this.onContextMenuAction);
               }
            }
         }
      }

      private function onContextMenuAction(param1:ContextMenuEvent) : void {
         switch(param1.id)
         {
            case "lockSlot":
            case "unlockSlot":
               dispatchEvent(new CSComponentEvent(CSComponentEvent.LOCK_SLOT_REQUEST,this._index));
               break;
            case "addToIgnored":
               dispatchEvent(new CSComponentEvent(CSComponentEvent.IGNORE_USER_REQUEST,this._data.databaseID));
               break;
         }
      }
   }

}