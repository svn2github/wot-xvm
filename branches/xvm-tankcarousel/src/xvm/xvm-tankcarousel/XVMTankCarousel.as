/**
 * TankCarousel XVM mod
 * @author STL1te
 */
package
{
    import com.xvm.utils.Utils;
    import components.*;
    import flash.display.*;
    import flash.events.*;
    import net.wg.gui.lobby.hangar.tcarousel.TankCarouselItemRenderer;
    import scaleform.clik.events.*;
    import flash.utils.*;
    import net.wg.gui.lobby.hangar.Hangar;
    import net.wg.infrastructure.managers.impl.*;
    import net.wg.infrastructure.interfaces.*;
    import net.wg.gui.components.common.*;
    import net.wg.infrastructure.events.*;
    import net.wg.gui.events.*;
    import com.xvm.*;
    import scaleform.clik.data.DataProvider;

    public class XVMTankCarousel extends Sprite
    {
        private var page:Hangar;
        private var isVisible:Boolean = true;
        private var hideBtn:ButtonNormal;
        private var levelFilter:DropDownImageText;
        private var typeFilter:DropDownImageText;
		
        public function XVMTankCarousel():void
        {
            try
            {
                if (stage)
                {
                    init();
                }
                else
                {
                    addEventListener(Event.ADDED_TO_STAGE, init);
                }
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        private function init(e:Event = null):void
        {
            removeEventListener(Event.ADDED_TO_STAGE, init);
            try
            {
                var mgr:ContainerManager = App.containerMgr as ContainerManager;
                for each (var c:IManagedContainer in mgr.containersMap)
                {
                    var vc:MainViewContainer = c as MainViewContainer;
                    if (vc != null)
                    {
                        for (var i:int = 0; i < vc.numChildren; ++i)
                        {
                            var v:IView = vc.getChildAt(i) as IView;
                            if (v != null)
                                processView(v, true);
                        }
                    }
                }
                App.containerMgr.loader.addEventListener(LoaderEvent.VIEW_LOADED, onViewLoaded);
            }
            catch (e:*)
            {
                Logger.add(e.getStackTrace());
            }
        }

        private function onViewLoaded(e:LoaderEvent):void
        {
            processView(e.view);
        }

        private function processView(view:IView, populated:Boolean = false):void
        {
            try
            {
                switch (view.as_alias)
                {
                    case "hangar":
                        processHangar(view as Hangar);
                        break;
                }
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
        }

        private function processHangar(page: Hangar):void 
        {
                this.page = page;
                //createHideBtn();
                createFilters();
        }
        /*       
        private function createHideBtn():void
        {
            hideBtn = Utils.createButton(this.page.ammunitionPanel, "hideBtn", 0, 0, "Скрыть", "left");
            hideBtn.x = this.page.ammunitionPanel.width + 20;
            hideBtn.y = this.page.ammunitionPanel.height - hideBtn.height;
            hideBtn.addEventListener(MouseEvent.CLICK, hideBtnClickHandler);
        }*/
        
        private function createFilters():void
        {
            createLevelDropdown();
            createTypeDropdown();
        }
        
        private function createLevelDropdown():void
        {           
            this.levelFilter = this.page.addChild(new MultiSelectionDropDown) as MultiSelectionDropDown;
            
            this.levelFilter.y = 500;
            this.levelFilter.x = 500;
            var dp:Array = new Array();
            for (var i:Number = 1; i <= 10; i++)
                dp.push( { label: "", icon: "../maps/icons/levels/tank_level_" + i + ".png", data: i, selected: true} );
            this.levelFilter.dataProvider = new DataProvider(dp);
            
            this.levelFilter.icon.source = "../maps/icons/buttons/tab_sort_button/level.png";
            this.levelFilter.autoSize = "none";
            this.levelFilter.dropdown = "DropdownMenu_ScrollingList";
            this.levelFilter.enabled = true;
            this.levelFilter.enableInitCallback = false;
            this.levelFilter.focusable = true;
            this.levelFilter.itemRenderer = ImageCheckBoxItemRenderer;
            this.levelFilter.menuDirection = "up";
            this.levelFilter.menuMargin = 2;
            this.levelFilter.inspectableMenuOffset = {top:0, right:0, bottom:4, left:3};
            this.levelFilter.inspectableMenuPadding = {top:0, right:0, bottom:-1, left:0};
            this.levelFilter.menuRowCount = 10;
            this.levelFilter.menuRowsFixed = false;
            this.levelFilter.menuWidth = 95;
            this.levelFilter.menuWrapping = "normal";
            this.levelFilter.scrollBar = "";
            this.levelFilter.showEmptyItems = false;
            this.levelFilter.inspectableThumbOffset = {top:0, bottom:0};
            this.levelFilter.visible = true;
            
            this.levelFilter.addEventListener(ListEvent.INDEX_CHANGE, this.handleLevelFilterChange);
        }
        
        private function createTypeDropdown():void
        {           
            this.typeFilter = this.page.addChild(new MultiSelectionDropDown) as MultiSelectionDropDown;
            this.typeFilter.y = 500;
            this.typeFilter.x = 400;
            var dp:Array = new Array();            
            dp.push( { label: "", icon: "../maps/icons/library/PersonalAchievementsIcon-1.png", data: "elite", selected: true} );
            dp.push( { label: "", icon: "../maps/icons/library/GoldIcon-1.png", data: "premium", selected: true} );
            dp.push( { label: "", icon: "../maps/icons/library/CreditsIcon-1.png", data: "normal", selected: true} );
            dp.push( { label: "", icon: "../maps/icons/library/TournamentBattleResultIcon-1.png", data: "favorite", selected: true } );
            dp.push( { label: "", icon: "../maps/icons/library/multyXp.png", data: "notPlayed", selected: true } );
            this.typeFilter.dataProvider = new DataProvider(dp);

            this.typeFilter.autoSize = "none";
            this.typeFilter.dropdown = "DropdownMenu_ScrollingList";
            this.typeFilter.enabled = true;
            this.typeFilter.enableInitCallback = false;
            this.typeFilter.focusable = true;
            this.typeFilter.itemRenderer = ImageCheckBoxItemRenderer;
            this.typeFilter.menuDirection = "up";
            this.typeFilter.menuMargin = 2;
            this.typeFilter.inspectableMenuOffset = {top:0, right:0, bottom:4, left:3};
            this.typeFilter.inspectableMenuPadding = {top:0, right:0, bottom:-1, left:0};
            this.typeFilter.menuRowCount = 5;
            this.typeFilter.menuRowsFixed = false;
            this.typeFilter.menuWidth = 95;
            this.typeFilter.menuWrapping = "normal";
            this.typeFilter.scrollBar = "";
            this.typeFilter.showEmptyItems = false;
            this.typeFilter.inspectableThumbOffset = {top:0, bottom:0};
            this.typeFilter.visible = true;
            
            this.typeFilter.addEventListener(ListEvent.INDEX_CHANGE, this.handleLevelFilterChange);
        }
        
        private function handleLevelFilterChange(event:ListEvent):void
        {
            Logger.add("test");
            this.page.carousel.onFilterChanged();
            (this.page.carousel.dataProvider as DataProvider).setSource(this.applyCustomFilters(this.page.carousel.dataProvider as Array));
            this.page.carousel.invalidateData();
        }
        
        
        
        private function applyCustomFilters(arr:Array):Array
        {
            arr = filterByLevel(arr);
            arr = filterByType(arr);
            return arr;
        }
        
        private function filterByLevel(arr:Array):Array
        {
            var resArr:Array = new Array();
            for each (var data:* in arr)
            {
                if (data.empty != null)
                {
                    resArr.push(data);
                }
                else
                {
                    if (this._isInArray(data.level, this.levelFilter.selectedItems))
                    {
                        resArr.push(data);
                    }
                    else
                        this.page.carousel.availableTanksCount--;
                }
            }
            return resArr;
        }
        
        private function filterByType(arr:Array):Array
        {
            var resArr:Array = new Array();
            for each (var data:* in arr)
            {
                if (data.empty != null)
                {
                    resArr.push(data);
                }
                else
                {
                    if (this._typeInArr(this.getVehType(data), this.typeFilter.selectedItems))
                    {
                        resArr.push(data)
                    }
                    else
                        this.page.carousel.availableTanksCount--;
                }
            }
            return resArr;
        }
        
        private function getVehType(veh:Object):Array
        {
            var resArr:Array = new Array();
            if (veh.favorite)
                resArr.push("favorite");
            if (veh.elite)
                resArr.push("elite");
            if (veh.doubleXPReceived > 0)
                resArr.push("notPlayed");
            if (veh.premium)
                resArr.push("premium")
            else
                resArr.push("normal");
            return resArr;
        }
        /*        
        private function hideBtnClickHandler():void
        {
            try
            {
                this.levelFilter.open();
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
            }
            this.isVisible = this.page.carousel.visible;
            this.isVisible ? (this.hideCarousel()) : (this.showCarousel());
        }
        
        private function hideCarousel():void
        {
                this.hideBtn.label = "Показать";
                this.page.carousel.visible = false;
                this.page.bottomBg.y = this.page.bottomBg.y + this.page.carousel.height;		
                this.page.ammunitionPanel.y = this.page.ammunitionPanel.y + this.page.carousel.height;
        }
        
        private function showCarousel():void
        {
                this.hideBtn.label = "Скрыть";
                this.page.carousel.visible = true;
                this.page.bottomBg.y = this.page.bottomBg.y - this.page.carousel.height;
                this.page.ammunitionPanel.y = this.page.ammunitionPanel.y - this.page.carousel.height;
        }*/
        
        private function _typeInArr(veh:Array, arr:Array):Boolean
        {
            for each(var key:* in veh)
                if (!_isInArray(key, arr))
                    return false;
            return true;       
            
        }
        
        private function _isInArray(element:*, array:Array):Boolean
        {
            return (array.indexOf(element) != -1);
        }
    }
}
