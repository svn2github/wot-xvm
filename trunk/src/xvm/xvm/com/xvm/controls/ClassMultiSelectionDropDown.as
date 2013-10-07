package com.xvm.controls
{
    import com.xvm.components.*;
    import scaleform.clik.data.*;

    public class ClassMultiSelectionDropDown extends DropDown
    {
        public function ClassMultiSelectionDropDown()
        {
            super();

            var dp:Array = [
                { "label":MENU.CLASSES_ANYTYPE, "data": -1, "icon":"../maps/icons/filters/tanks/all.png" },
                { "label":MENU.CLASSES_LIGHTTANK, "data": 0, "icon":"../maps/icons/filters/tanks/lightTank.png" },
                { "label":MENU.CLASSES_MEDIUMTANK, "data": 1, "icon":"../maps/icons/filters/tanks/mediumTank.png" },
                { "label":MENU.CLASSES_HEAVYTANK, "data": 2, "icon":"../maps/icons/filters/tanks/heavyTank.png" },
                { "label":MENU.CLASSES_AT_SPG, "data": 3, "icon":"../maps/icons/filters/tanks/AT-SPG.png" },
                { "label":MENU.CLASSES_SPG, "data": 4, "icon":"../maps/icons/filters/tanks/SPG.png" }
            ];
            dataProvider = new DataProvider(dp);

            menuRowCount = dataProvider.length;
            selectedIndex = 0;
        }
    }
}
