/**
 * ...
 * @author sirmax2
 */
import com.xvm.Cmd;
import com.xvm.Config;
import com.xvm.ConfigUtils;
import com.xvm.DefaultConfig;
import com.xvm.Defines;
import com.xvm.GlobalEventDispatcher;
import com.xvm.JSONxLoader;
import com.xvm.Locale;
import com.xvm.Logger;
import com.xvm.Strings;

class com.xvm.ConfigLoader
{
    // Private vars
    private static var s_loading:Boolean = false;
    private static var s_src:String = "";
    private static var info_event:Object = null;

    // Constants
    private static var E_CONFIG_LOADED = "config_loaded";
    private static var E_SET_INFO = "set_info";
    
    // instance
    private static var instance:ConfigLoader = null;
    
    // Load XVM mod config; config data is shared between all marker instances, so
    // it should be loaded only once per session. s_loaded flag indicates that
    // we've already initialized config loading process.
    public static function LoadConfig(src: String)
    {
        //Logger.add("TRACE: LoadConfig(" + src + ")");
        if (Config.s_loaded)
        {
            if (info_event != null)
            {
                // Use set timeout to avoid overriding by default value
                _global.setTimeout(function() { GlobalEventDispatcher.dispatchEvent(ConfigLoader.info_event); }, 1);
            }
            GlobalEventDispatcher.dispatchEvent({type: E_CONFIG_LOADED});
            return;
        }
        s_src = src || "";
        
        if (instance == null)
            instance = new ConfigLoader();
        instance.ReloadConfig();
    }

    private function ReloadConfig()
    {
        //Logger.add("TRACE: ReloadConfig()");
        if (ConfigLoader.s_loading)
            return;
        ConfigLoader.s_loading = true;

        var me = this;
        _global.setTimeout(function() {
            Config.s_config = DefaultConfig.config;
            JSONxLoader.LoadAndParse(Defines.XVM_ROOT + Defines.CONFIG_FILE_NAME, me, me.ReloadConfigCallback);
        }, 1);
    }

    private function ReloadConfigCallback(event)
    {
        //Logger.add("TRACE: ReloadConfigCallback(): start");
        if (event.error != null && event.error.type == "NO_FILE")
        {
            if (event.filename == Defines.CONFIG_FILE_NAME)
            {
                // xvm.xc not found, try to load legacy config XVM.xvmconf
                JSONxLoader.LoadAndParse(Defines.CONFIG_FILE_NAME_XVMCONF, this, ReloadConfigCallback);
                return;
            }
        }

        var finallyBugWorkaround: Boolean = false; // Workaround: finally block have a bug - it can be called twice.
        try
        {
            ProcessConfig(event);
            ConfigUtils.TuneupConfig();
        }
        finally
        {
            //Logger.add("TRACE: ReloadConfigCallback(): finally:start");
            if (finallyBugWorkaround)
                return;
            finallyBugWorkaround = true;
            Cmd.getGameRegion(this, "OnGameRegionReceived");
            Locale.loadLocale();
            //Logger.add("TRACE: ReloadConfigCallback(): finally::end");
        }
        //Logger.add("TRACE: ReloadConfigCallback(): end");
    }

    private function ProcessConfig(event)
    {
        if (event.error != null && event.error.type == "NO_FILE")
        {
            info_event = { type: E_SET_INFO, warning: "" };
            GlobalEventDispatcher.dispatchEvent(info_event);
            return;
        }

        if (event.error != null)
        {
            var ex = event.error;

            var text:String = "Error loading config file '" + event.filename + "': ";
            text += ConfigUtils.parseErrorEvent(event);

            info_event = { type: E_SET_INFO, error: text };
            GlobalEventDispatcher.dispatchEvent(info_event);
            Logger.add(String(text).substr(0, 200));
            return;
        }

        Config.s_config = ConfigUtils.MergeConfigs(ConfigUtils.FixConfig(event.data), Config.s_config);
        //Logger.addObject(Config.s_config, "config", 2);
        //Logger.addObject(Config.s_config.markers.enemy.alive.normal, "", 3);
        info_event = { type: E_SET_INFO };
        GlobalEventDispatcher.dispatchEvent(info_event); // Just show version
    }

    private function OnGameRegionReceived(region)
    {
        Config.s_game_region = region;
        SetConfigLoaded();
    }

    private function SetConfigLoaded()
    {
        //Logger.add("Config: Loaded (" + s_src + ")");
        Config.s_loaded = true;
        ConfigLoader.s_loading = false;
        GlobalEventDispatcher.dispatchEvent({type: E_CONFIG_LOADED});
    }
}
