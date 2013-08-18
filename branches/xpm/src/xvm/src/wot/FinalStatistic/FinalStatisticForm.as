import com.xvm.Config;
import com.xvm.Defines;
import com.xvm.GlobalEventDispatcher;
import com.xvm.StatData;
import com.xvm.StatLoader;
import com.xvm.StatsLogger;
import com.xvm.Utils;
import wot.FinalStatistic.WinChances;

class wot.FinalStatistic.FinalStatisticForm
{
    /////////////////////////////////////////////////////////////////
    // wrapped methods

    public var wrapper:net.wargaming.hangar.FinalStatistic.FinalStatisticForm;
    private var base:net.wargaming.hangar.FinalStatistic.FinalStatisticForm;

    public function FinalStatisticForm(wrapper:net.wargaming.hangar.FinalStatistic.FinalStatisticForm, base:net.wargaming.hangar.FinalStatistic.FinalStatisticForm)
    {
        this.wrapper = wrapper;
        this.base = base;
        Utils.Timeout(this, FinalStatisticFormCtor, 1);
    }

    function setCommonData()
    {
        return this.setCommonDataImpl.apply(this, arguments);
    }

    // wrapped methods
    /////////////////////////////////////////////////////////////////

    private var save_data_pending:Boolean;

    // Components
    private var winChances:WinChances;

    private function FinalStatisticFormCtor()
    {
        Utils.TraceXvmModule("FinalStatistic");

        save_data_pending = false;

        StatData.s_loaded = false;
        StatData.s_data = {};

        winChances = new WinChances(wrapper);
        GlobalEventDispatcher.addEventListener(Config.E_CONFIG_LOADED, this, onConfigLoaded);
        Config.LoadConfig();
    }

    private function onConfigLoaded()
    {
        GlobalEventDispatcher.removeEventListener(Config.E_CONFIG_LOADED, this, onConfigLoaded);
        processData();
    }

    private function processData()
    {
        if (!save_data_pending || !Config.s_loaded || wrapper.data == null)
            return;

        save_data_pending = false;

        if (Config.s_config.rating.enableStatisticsLog == true)
            StatsLogger.saveStatistics("results", wrapper.data);

        if (Config.s_config.rating.showPlayersStatistics && Config.s_config.finalStatistic.showChances)
            StatLoader.LoadData();
    }

    function setCommonDataImpl(data)
    {
        base.setCommonData(data);
        var page = parseInt(Config.s_config.finalStatistic.startPage);
        if (!isNaN(page) && page >= 1 && page <= 3)
            wrapper.tabs_mc.selectedIndex = page - 1;
        save_data_pending = true;
        processData();
    }
}
