package xvm.hangar.components.BattleLoading
{
    import com.xvm.*;

    public class RightItemRendererWrapper extends RightItemRendererUI
    {
        private var worker:BattleLoadingItemRenderer;

        public function RightItemRendererWrapper()
        {
            super();
            worker = new BattleLoadingItemRenderer(this);
        }

        override protected function configUI():void
        {
            super.configUI();
        }

        override public function setData(data:Object):void
        {
            super.setData(data);
            worker.setData(data);
        }
    }

}
