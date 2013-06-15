import com.xvm.Config;
import com.xvm.GlobalEventDispatcher;
import com.xvm.Locale;
import com.xvm.Utils;

class wot.FinalStatistic.CommonStats
{
    /////////////////////////////////////////////////////////////////
    // wrapped methods

    public var wrapper:net.wargaming.hangar.FinalStatistic.CommonStats;
    private var base:net.wargaming.hangar.FinalStatistic.CommonStats;

    public function CommonStats(wrapper:net.wargaming.hangar.FinalStatistic.CommonStats, base:net.wargaming.hangar.FinalStatistic.CommonStats)
    {
        this.wrapper = wrapper;
        this.base = base;

        Utils.TraceXvmModule("FS");
    }
	
	var loadReplayBtn:MovieClip;
	//override
	function configUI()
	{
		super.configUI();
		loadReplayBtn = detailsMc.attachMovie("Button", "wotCloudBtn", detailsMc.getNextHighestDepth());
		loadReplayBtn._y = detailsMc.detailedReportBtn._y;
		loadReplayBtn._x = detailsMc.detailedReportBtn._x + detailsMc.detailedReportBtn._width + 20;
		loadReplayBtn.label = "Сделать из боя видео";
		loadReplayBtn.autoSize = true;
		detailsMc.wotCloudBtn.addEventListener("click", this, "onLoadReplayClick");
	}
	
	function onLoadReplayClick()
	{
		var data = this.__get__parent().__get__data();
		showMyReplaysUploader(data.common.arenaCreateTimeStr);
	}
	
	function showMyReplaysUploader(time)
    {
        var _loc3 = net.wargaming.managers.WindowManager.__get__instance().getWindow("wotCloudUploaderWnd");
        if (_loc3 != undefined)
        {
            net.wargaming.managers.WindowManager.__get__instance().close("wotCloudUploaderWnd", true);
        }
        var _loc2 = { _y: 130, _formSource: "wotCloudUploader.swf", _formType: "swf", _title: "wotCloud Uploader", _offsetTop: 34, _offsetBottom: 19, _offsetLeft: 13, _offsetRight: 14, allowResize: false, battleTime: time };
		var _loc1 = net.wargaming.managers.WindowManager.__get__instance().open("Window", "wotCloudUploaderWnd", _loc2, true, "wotCloudGroup");
        _loc1.addEventListener("confirmFormComplete", function (event)
        {
            net.wargaming.managers.WindowManager.__get__instance().moveTo(event.target, Stage.width - event.width >> 1, Stage.height - event.height >> 1, "wotCloudGroup");
			gfx.io.GameDelegate.call("wcu.Upload", [time]);
        });
        _loc1.addEventListener("close", function (event)
        {
            event.target.removeMovieClip();
        });
    }	
}