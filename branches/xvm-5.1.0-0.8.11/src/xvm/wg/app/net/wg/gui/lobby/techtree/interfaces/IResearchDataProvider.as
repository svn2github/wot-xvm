package net.wg.gui.lobby.techtree.interfaces
{
   import net.wg.gui.lobby.techtree.math.ADG_ItemLevelsBuilder;
   import net.wg.gui.lobby.techtree.data.vo.VehGlobalStats;
   import net.wg.gui.lobby.techtree.data.vo.NodeData;
   import net.wg.gui.lobby.techtree.data.vo.UnlockProps;


   public interface IResearchDataProvider extends INodesDataProvider
   {
          
      function get topLength() : Number;

      function populate(param1:ADG_ItemLevelsBuilder) : void;

      function getGlobalStats() : VehGlobalStats;

      function getDepthOfPath(param1:Number) : Number;

      function getMaxDepthOfPath() : Number;

      function getTopLevelAt(param1:Number) : NodeData;

      function getTopLevelIndexByID(param1:Number) : Number;

      function setTopLevelState(param1:Number, param2:Number, param3:Number) : Boolean;

      function setTopLevelXP(param1:Number, param2:Number) : Boolean;

      function setTopLevelUnlockProps(param1:Number, param2:UnlockProps) : Boolean;

      function setTopLevelField(param1:String, param2:Number, param3:Object) : Boolean;

      function resolveEntityType(param1:NodeData, param2:Boolean=false) : uint;
   }

}