/**
 * XVM Config
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm
{
    import flash.display.MovieClip;
    import flash.events.IEventDispatcher;
    import com.xvm.cfg.CConfig;
    import com.xvm.cfg.DefaultConfig;
    import com.xvm.cfg.ConfigUtils;
    import com.xvm.io.JSONxLoader;

    public class Config
    {
        // instance
        private static var _instance:Config = null;
        private static function get instance():Config
        {
            if (_instance == null)
                _instance = new Config();
            return _instance;
        }

        public static function get config():CConfig
        {
            return instance.config;
        }

        public static function get Loaded():Boolean
        {
            return instance.loaded;
        }

        public static function get StateInfo():Object
        {
            return instance.stateInfo;
        }

        // Load XVM mod config; config data is shared between all marker instances, so
        // it should be loaded only once per session. s_loaded flag indicates that
        // we've already initialized config loading process.
        public static function load(target:Object, callback:Function):void
        {
            instance.loadConfig(target, callback);
        }

        // PRIVATE

        function Config()
        {
            loadConfig();
        }

        private var config:CConfig = null;
        private var loading:Boolean = false;
        private var loaded:Boolean = false;
        //TODOprivate var game_region:String = null;
        private var stateInfo:Object = null;
        private var listeners:Vector.<Object> = new Vector.<Object>;

        // Load XVM mod config; config data is shared between all marker instances, so
        // it should be loaded only once per session. s_loaded flag indicates that
        // we've already initialized config loading process.
        private function loadConfig(target:Object = null, callback:Function = null):void
        {
            //Logger.add("TRACE: loadConfig(): target=" + String(target));
            if (loaded)
            {
                if (callback != null)
                    callback.call(target);
                return;
            }

            if (callback != null)
                listeners.push( { target:target, callback:callback } );
            if (loading)
                return;
            loading = true;

            config = DefaultConfig.config;

            JSONxLoader.LoadAndParse(Defines.XVM_ROOT + Defines.CONFIG_FILE_NAME, this, LoadConfigCallback);
        }

        private function LoadConfigCallback(event:Object):void
        {
            //Logger.add("TRACE: LoadConfigCallback()");
            try
            {
                ProcessConfig(event);
                ConfigUtils.TuneupConfig(config);
            }
            finally
            {
                //TODO Cmd.getGameRegion(this, "OnGameRegionReceived");
                //TODO Locale.loadLocale();
                Logger.addObject(config, "config", 4);
            }
        }

        private function ProcessConfig(event:Object):void
        {
            if (event.error != null && event.error.type == "NO_FILE")
            {
                stateInfo = { warning: "" };
                return;
            }

            if (event.error != null)
            {
                var text:String = "Error loading config file '" + event.filename + "': ";
                text += ConfigUtils.parseErrorEvent(event.error);

                stateInfo = { error: text };
                Logger.add(text);
                return;
            }

            config = ConfigUtils.MergeConfigs(ConfigUtils.FixConfig(event.data), config);
            //Logger.addObject(config, "config", 2);
            //Logger.addObject(config.markers.enemy.alive.normal, "", 3);
            stateInfo = { };
        }

        //TODO private function OnGameRegionReceived(region)
        //TODO {
        //TODO     Config.s_game_region = region;
        //TODO     SetConfigLoaded();
        //TODO }

        private function SetConfigLoaded():void
        {
            //Logger.add("Config: Loaded");
            loaded = true;
            loading = false;
            for each (var l:Object in listeners)
            {
                try
                {
                    l.callback.call(l.target);
                }
                catch (e:Error)
                {
                    Logger.add("Error: " + e.message);
                }
                catch (e:*)
                {
                    Logger.addObject(e, "exception");
                }
            }
        }
    }
}
