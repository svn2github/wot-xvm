package xvm.profile.UI
{
    import com.xvm.*;
    import fl.transitions.easing.Strong;
    import net.wg.gui.lobby.profile.pages.technique.data.ProfileVehicleDossierVO;
    import net.wg.gui.utils.ExcludeTweenManager;
    import xvm.profile.components.TechniqueStatisticTab;
    import scaleform.clik.motion.Tween;

    public dynamic class UI_TechniqueStatisticTab extends TechniqueStatisticTab_UI
    {
        private const ANIM_SPEED:Number = 500;
        private var isDataInitialized:Boolean = false;
        private var tweenManager:ExcludeTweenManager;

        private var worker:TechniqueStatisticTab;

        public function UI_TechniqueStatisticTab()
        {
            tweenManager = new ExcludeTweenManager();
            super();
            worker = new TechniqueStatisticTab(this);
        }

        override protected function configUI():void
        {
            super.configUI();
            worker.configUI();
        }

        override public function update(arg1:Object):void
        {
            if (_baseDisposed)
                return;

            if (worker.page && worker.page.battlesDropdown && (worker.page.battlesDropdown.selectedItem == PROFILE.PROFILE_DROPDOWN_LABELS_TEAM))
            {
                //TODO:0.9.0 worker.extraDataPanel.visible = false;
                worker.lastBattleTimeTF.htmlText = "";
                worker.ratingTF.htmlText = "";
                //TODO:0.9.0 worker.bottomTF.htmlText = "";
                //TODO:0.9.0 worker.maxDamageDL.labelTextField.textColor = Defines.UICOLOR_DISABLED;
                //TODO:0.9.0 worker.maxDamageDL.value = "<font color='#" + Defines.UICOLOR_DISABLED.toString(16) + "' size='12'>--</font>";
                //TODO:0.9.0 worker.specDamageDL.visible = false;
                //TODO:0.9.0 worker.avgCaptureDL.visible = false;
                //TODO:0.9.0 worker.avgDefenceDL.visible = false;
                //TODO:0.9.0 winsPercentSign.visible = true;
                //TODO:0.9.0 defeatsPercentSign.visible = true;
                //TODO:0.9.0 survivePercentSign.visible = true;
                //TODO:0.9.0 worker.clearTextFields();
                super.update(arg1);
                return;
            }

            //TODO:0.9.0 worker.extraDataPanel.visible = true;
            //TODO:0.9.0 worker.maxDamageDL.labelTextField.textColor = Defines.UICOLOR_LABEL;

            if(!isDataInitialized)
            {
                isDataInitialized = true;
                tweenManager.registerAndLaunch(ANIM_SPEED, this, {"alpha":1},
                    {
                        "ease":Strong.easeOut,
                        "onComplete":function(tween:Tween):void { tweenManager.unregister(tween); }
                    }
                );
            }

            worker.update(arg1 as ProfileVehicleDossierVO);
        }

        public function updateBase(arg:Object):void
        {
            super.update(arg);
        }

        public function get baseDisposed():Boolean
        {
            return _baseDisposed;
        }
   }
}
