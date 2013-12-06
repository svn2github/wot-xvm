package net.wg.gui.components.controls
{
   import flash.display.Loader;
   import flash.net.URLRequest;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.utils.getQualifiedClassName;
   import net.wg.data.constants.SoundTypes;


   public class IconButton extends SoundButtonEx
   {
          
      public function IconButton() {
         super();
         soundType = SoundTypes.ICON_BTN;
      }

      protected var _iconOffsetTop:Number = 0;

      protected var _iconOffsetLeft:Number = 0;

      protected var loader:Loader;

      private var _iconSource:String;

      private var isIconSourceChanged:Boolean;

      private var arrangeLayout:Boolean;

      private var updateNestedChild:Boolean = false;

      override public function dispose() : void {
         if(this.loader)
         {
            this.removeIconListeners(this.loader.contentLoaderInfo);
            this.loader.unloadAndStop();
            this.loader.unload();
            removeChild(this.loader);
            this.loader = null;
         }
         super.dispose();
      }

      override public function set enabled(param1:Boolean) : void {
         super.enabled = param1;
         this.updateNestedChild = true;
      }

      public function get iconSource() : String {
         return this._iconSource;
      }

      public function set iconSource(param1:String) : void {
         if(this._iconSource != param1)
         {
            this._iconSource = param1;
            this.isIconSourceChanged = true;
            invalidate();
         }
      }

      public function get iconOffsetTop() : Number {
         return this._iconOffsetTop;
      }

      public function set iconOffsetTop(param1:Number) : void {
         this._iconOffsetTop = param1;
         this.arrangeLayout = true;
         invalidate();
      }

      public function get iconOffsetLeft() : Number {
         return this._iconOffsetLeft;
      }

      public function set iconOffsetLeft(param1:Number) : void {
         this._iconOffsetLeft = param1;
         this.arrangeLayout = true;
         invalidate();
      }

      override protected function draw() : void {
         var _loc1_:URLRequest = null;
         super.draw();
         if(this.isIconSourceChanged)
         {
            this.isIconSourceChanged = false;
            if(this.loader)
            {
               this.loader.unload();
               this.removeIconListeners(this.loader.contentLoaderInfo);
               removeChild(this.loader);
               this.loader = null;
            }
            if(!(this._iconSource == null) && !(this._iconSource == ""))
            {
               _loc1_ = new URLRequest(this._iconSource);
               this.loader = new Loader();
               this.addIconListeners(this.loader.contentLoaderInfo);
               this.loader.load(_loc1_);
               this.loader.visible = false;
               addChild(this.loader);
            }
         }
         if((this.loader) && (this.contains(this.loader)) && (this.updateNestedChild))
         {
            this.setChildIndex(this.loader,this.numChildren-1);
            this.updateNestedChild = false;
         }
         if(this.arrangeLayout)
         {
            this.arrangeLayout = false;
            this.configIcon();
         }
      }

      protected function addIconListeners(param1:LoaderInfo) : void {
         param1.addEventListener(Event.COMPLETE,this.iconLoadingCompleteHandler);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.iconLoadingIOErrorHandler);
      }

      protected function configIcon() : void {
         if(this.loader)
         {
            this.loader.x = this._iconOffsetLeft;
            this.loader.y = this._iconOffsetTop;
            this.loader.tabEnabled = this.loader.mouseEnabled = false;
            this.loader.visible = true;
            this.loader.scaleX = 1 / this.scaleX;
            this.loader.scaleY = 1 / this.scaleY;
         }
      }

      private function removeIconListeners(param1:LoaderInfo) : void {
         param1.removeEventListener(Event.COMPLETE,this.iconLoadingCompleteHandler);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.iconLoadingIOErrorHandler);
      }

      protected function iconLoadingIOErrorHandler(param1:IOErrorEvent) : void {
         DebugUtils.LOG_WARNING("Flash :: Icon Loading IO Error!",getQualifiedClassName(this),param1.toString());
         this.removeIconListeners(LoaderInfo(param1.target));
      }

      protected function iconLoadingCompleteHandler(param1:Event) : void {
         this.removeIconListeners(LoaderInfo(param1.target));
         this.arrangeLayout = true;
         invalidate();
      }
   }

}