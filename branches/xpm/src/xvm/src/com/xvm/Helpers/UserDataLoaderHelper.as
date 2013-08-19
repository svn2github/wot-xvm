/**
 * Helper class for shared functions used for loading user data in the hangar
 */
import com.xvm.Cache;
import com.xvm.GlobalEventDispatcher;
import com.xvm.StatData;
import com.xvm.StatLoader;
import com.xvm.Utils;
import com.xvm.DataTypes.Stat;

class com.xvm.Helpers.UserDataLoaderHelper
{
    public static var E_USERDATACACHED = "userdata_cached";

    private static var queue:Array = [];

    public static function LoadUserData(value, isId)
    {
        //com.xvm.Logger.add("add queue: " + value);
        var found = false;
        for (var i = 0; i < queue.length; ++i)
        {
            if (queue[i].value == value && queue[i].isId == isId)
            {
                found = true;
                break;
            }
        }
        if (!found)
            queue.push({value:value, isId:isId});
        processQueue();
    }

    private static function processQueue()
    {
        if (queue.length == 0)
            return;
        // avoid concurrent loading
        if (GlobalEventDispatcher.getEventListenersCount(StatData.E_USERDATA_LOADED) > 0)
            return;

        var item = queue.shift();
        //com.xvm.Logger.add("process queue: " + item.value);
        GlobalEventDispatcher.addEventListener(StatData.E_USERDATA_LOADED,  onUserDataLoaded);
        StatLoader.LoadUserData(item.value, item.isId);
    }

    private static function onUserDataLoaded(event)
    {
        GlobalEventDispatcher.removeEventListener(StatData.E_USERDATA_LOADED, onUserDataLoaded);
        if (event.data && event.data[0])
        {
            //Logger.addObject(event.data, "data", 3);
            var fixedData = FixData(event.data[0]);

            Cache.Get("INFO#" + event.data[0]._id, function() { return fixedData; });
            Cache.Get("INFO@" + (event.request.isId == true ? event.data[0].nm : event.request.value), function() { return fixedData; });
            GlobalEventDispatcher.dispatchEvent( { type: E_USERDATACACHED } );

            //Logger.addObject(stat, "stat", 3);
        }

        processQueue();
    }

    private static function FixData(ud:Stat)
    {
        // GWR
        ud.r = ud.battles > 0 ? Math.round(ud.w / ud.battles * 100) : 0;

        // xeff
        if (ud.eff != null)
            ud.xeff = Utils.XEFF(ud.eff);

        // xwn
        if (ud.wn != null)
            ud.xwn = Utils.XWN(ud.wn);

        return ud;
    }
}
