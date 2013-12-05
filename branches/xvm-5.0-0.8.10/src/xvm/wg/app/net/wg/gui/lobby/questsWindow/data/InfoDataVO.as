package net.wg.gui.lobby.questsWindow.data
{
   import net.wg.data.daapi.base.DAAPIDataClass;


   public class InfoDataVO extends DAAPIDataClass
   {
          
      public function InfoDataVO(param1:Object) {
         this._subtasks = [];
         this._conditions = [];
         super(param1);
      }

      private var _descr:DescriptionVO = null;

      private var _subtasks:Array;

      private var _conditions:Array;

      override protected function onDataWrite(param1:String, param2:Object) : Boolean {
         switch(param1)
         {
            case "descr":
               this._descr = param2?new DescriptionVO(param2):null;
               return false;
            default:
               return true;
         }
      }

      public function get descr() : DescriptionVO {
         return this._descr;
      }

      public function set descr(param1:DescriptionVO) : void {
         this._descr = param1;
      }

      public function get subtasks() : Array {
         return this._subtasks;
      }

      public function set subtasks(param1:Array) : void {
         this._subtasks = param1;
      }

      public function get conditions() : Array {
         return this._conditions;
      }

      public function set conditions(param1:Array) : void {
         this._conditions = param1;
      }
   }

}