package net.wg.gui.lobby.questsWindow.components
{
   import net.wg.infrastructure.interfaces.ISortable;
   import __AS3__.vec.Vector;
   import scaleform.clik.motion.Tween;
   import net.wg.gui.events.ResizableBlockEvent;
   import net.wg.infrastructure.interfaces.IResizableContent;
   import flash.display.DisplayObject;
   import fl.transitions.easing.Strong;


   public class MovableBlocksContainer extends ResizableContainer implements ISortable
   {
          
      public function MovableBlocksContainer() {
         this.tweens = new Vector.<Tween>();
         super();
      }

      private static const ANIMATION_DURATION:int = 500;

      private var _sortingFunction:Function = null;

      private var tweens:Vector.<Tween>;

      override protected function configUI() : void {
         super.configUI();
      }

      override protected function onDispose() : void {
         var _loc1_:Tween = null;
         for each (_loc1_ in this.tweens)
         {
            _loc1_.onComplete = null;
            _loc1_.onChange = null;
            _loc1_.paused = true;
            _loc1_ = null;
         }
         this.tweens = null;
         this._sortingFunction = null;
         super.onDispose();
      }

      override protected function clearBlocks() : void {
         var _loc1_:* = 0;
         while(_loc1_ < _blocks.length)
         {
            _blocks[_loc1_].removeEventListener(ResizableBlockEvent.READY_FOR_ANIMATION,this.startAnimation);
            _loc1_++;
         }
         super.clearBlocks();
      }

      override protected function addBlock(param1:Object) : void {
         var _loc2_:IResizableContent = App.utils.classFactory.getComponent(param1.linkage,IResizableContent);
         _loc2_.addEventListener(ResizableBlockEvent.READY_FOR_ANIMATION,this.startAnimation);
         _loc2_.isReadyForLayout = false;
         if(_loc2_  is  ISortable)
         {
            ISortable(_loc2_).sortingFunction = this._sortingFunction;
         }
         _loc2_.availableWidth = this.availableWidth;
         _loc2_.contentAlign = this.contentAlign;
         _loc2_.isNumerated = isNumerated;
         _loc2_.setData(param1);
         _loc2_.validateNow();
         _blocks.push(_loc2_);
         addChild(DisplayObject(_loc2_));
      }

      public function get sortingFunction() : Function {
         return this._sortingFunction;
      }

      public function set sortingFunction(param1:Function) : void {
         this._sortingFunction = param1;
      }

      private function startAnimation(param1:ResizableBlockEvent) : void {
         var _loc2_:Tween = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:Tween = null;
         for each (_loc2_ in this.tweens)
         {
            _loc2_.onComplete = null;
            _loc2_.paused = true;
            _loc2_ = null;
         }
         this.tweens.splice(0,this.tweens.length);
         _loc3_ = _blocks.indexOf(IResizableContent(param1.currentTarget)) + 1;
         _loc4_ = _loc3_;
         while(_loc4_ < _blocks.length)
         {
            _loc5_ = _blocks[_loc4_].y + param1.heightDiff;
            _loc6_ = new Tween(ANIMATION_DURATION,_blocks[_loc4_],{"y":_loc5_},
               {
                  "paused":false,
                  "ease":Strong.easeInOut,
                  "onComplete":null
               }
            );
            _loc6_.fastTransform = false;
            this.tweens.push(_loc6_);
            _loc4_++;
         }
      }
   }

}