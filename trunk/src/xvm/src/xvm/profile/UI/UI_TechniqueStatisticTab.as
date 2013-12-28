package xvm.profile.UI
{
    import net.wg.gui.lobby.profile.pages.technique.data.ProfileVehicleDossierVO;
    import net.wg.gui.utils.ExcludeTweenManager;
    import xvm.profile.components.TechniqueStatisticTab;
    import fl.transitions.easing.Strong;
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
            if (worker.page && worker.page.battlesDropdown && (worker.page.battlesDropdown.selectedItem == PROFILE.PROFILE_DROPDOWN_LABELS_TEAM))
            {
                worker.ratingTF.htmlText = "";
                worker.clearTextFields();
                super.update(arg1);
                return;
            }

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
   }
}
