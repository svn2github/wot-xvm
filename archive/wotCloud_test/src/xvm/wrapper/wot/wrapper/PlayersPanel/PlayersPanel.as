﻿import com.xvm.Wrapper;

class wot.wrapper.PlayersPanel.PlayersPanel extends net.wargaming.ingame.PlayersPanel
{
    function PlayersPanel()
    {
        super();

        var OVERRIDE_FUNCTIONS:Array = [
            "setData",
            "onRecreateDevice",
            "_setVehiclesStr",
            "_setNamesStr",
            "updateWidthOfLongestName",
            "_getHTMLText"
        ];
        Wrapper.override(this, new wot.PlayersPanel.PlayersPanel(this, super), OVERRIDE_FUNCTIONS);
    }
}
