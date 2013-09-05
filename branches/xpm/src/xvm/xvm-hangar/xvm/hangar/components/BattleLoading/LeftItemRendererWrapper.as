package xvm.hangar.components.BattleLoading
{
    import com.xvm.*;

    public class LeftItemRendererWrapper extends LeftItemRendererUI
    {

        public function LeftItemRendererWrapper()
        {
            super();
            this.vehicleField.visible = false;
        }

        override protected function configUI():void
        {
            super.configUI();
        }
    }

}
