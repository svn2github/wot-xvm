package net.wg.gui.lobby.profile.components.chart
{
   import scaleform.clik.core.UIComponent;
   import scaleform.clik.data.ListData;


   public class ChartItemBase extends UIComponent implements IChartItem
   {
          
      public function ChartItemBase() {
         super();
      }

      protected var _data:Object;

      public function get index() : uint {
         return 0;
      }

      public function set index(param1:uint) : void {
          
      }

      public function get owner() : UIComponent {
         return null;
      }

      public function set owner(param1:UIComponent) : void {
          
      }

      public function get selectable() : Boolean {
         return false;
      }

      public function set selectable(param1:Boolean) : void {
          
      }

      public function get selected() : Boolean {
         return false;
      }

      public function set selected(param1:Boolean) : void {
          
      }

      public function setListData(param1:ListData) : void {
          
      }

      public function setData(param1:Object) : void {
         this._data = param1;
      }

      public function getData() : Object {
         return this._data;
      }

      override protected function onDispose() : void {
         super.onDispose();
      }
   }

}