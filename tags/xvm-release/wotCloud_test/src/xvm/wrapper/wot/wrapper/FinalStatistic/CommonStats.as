import com.xvm.Wrapper;

class wot.wrapper.FinalStatistic.CommonStats extends net.wargaming.hangar.FinalStatistic.CommonStats
{
    function CommonStats()
    {
        super();

        var OVERRIDE_FUNCTIONS:Array = [
            "configUI"
        ];
        Wrapper.override(this, new wot.FinalStatistic.CommonStats(this, super), OVERRIDE_FUNCTIONS);
    }
}