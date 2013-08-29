/**
 * XVM Config
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm
{
    import flash.display.MovieClip;
    import flash.events.Event;
    import flash.events.IEventDispatcher;
    import com.xvm.cfg.CConfig;
    import com.xvm.cfg.DefaultConfig;
    import com.xvm.cfg.ConfigUtils;
    import com.xvm.events.ObjectEvent;
    import com.xvm.io.Cmd;
    import com.xvm.io.JSONxLoader;
    import com.xvm.l10n.Locale;
    import mx.utils.StringUtil;

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

        public static function get Loaded():Boolean
        {
            return instance.loaded;
        }

        public static function get config():CConfig
        {
            return instance.config;
        }

        public static function get GameRegion():String
        {
            return config.region;
        }

        public static function get Language():String
        {
            return config.language;
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
        private var stateInfo:Object = null;
        private var listeners:Vector.<Object> = new Vector.<Object>;

        // Load XVM mod config; config data is shared between all instances, so
        // it should be loaded only once per session.
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

            loadXvmXc(); // run Stage 1
        }

        // STAGE 1 - xvm.xc

        private function loadXvmXc():void
        {
            //Logger.add("TRACE: STAGE 1: loadXvmXc()");
            JSONxLoader.LoadAndParse(Defines.XVM_ROOT + Defines.CONFIG_FILE_NAME, this, loadXvmXcCallback);
        }

        private function loadXvmXcCallback(event:Object):void
        {
            //Logger.add("TRACE: LoadConfigCallback()");
            try
            {
                ProcessConfig(event);
                ConfigUtils.TuneupConfig(config);
            }
            finally
            {
                loadGameRegion(); // run Stage 2
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

        // STAGE 2 - Game Region

        private function loadGameRegion():void
        {
            //Logger.add("TRACE: STAGE 2: loadGameRegion()");
            config.regionDetected = config.region.toLowerCase() == Defines.REGION_AUTO_DETECTION;
            if (config.regionDetected)
                Cmd.getGameRegion(this, loadGameRegionCallback);
            else
                loadGameRegionCallback(config.region);
        }

        private function loadGameRegionCallback(region:String):void
        {
            //Logger.add("TRACE: loadGameRegionCallback: " + region);
            config.region = region.toUpperCase();
            loadLanguage(); // run Stage 3
        }

        // STAGE 3

        private function loadLanguage():void
        {
            //Logger.add("TRACE: STAGE 3: loadLanguage()");
            config.languageDetected = config.language.toLowerCase() == Defines.LOCALE_AUTO_DETECTION
            if (config.languageDetected)
                Cmd.getLanguage(this, loadLanguageCallback);
            else
                loadLanguageCallback(config.language);
        }

        private function loadLanguageCallback(language:String):void
        {
            config.language = language.toLowerCase();
            Locale.Instance.addEventListener(Defines.E_LOCALE_LOADED, setConfigLoaded);
            Locale.LoadLocaleFile();
        }

        // All done

        private function setConfigLoaded(e:ObjectEvent):void
        {
            Locale.Instance.removeEventListener(Defines.E_LOCALE_LOADED, setConfigLoaded);

            if (e.result != null && e.result.error != null && stateInfo == null && stateInfo.error == null)
                stateInfo = { error: e.result.error };

            Logger.add(StringUtil.substitute("Config loaded. Region: {0} ({1}), Language: {2} ({3})",
                config.region,
                config.regionDetected ? "detected" : "config",
                config.language,
                config.languageDetected ? "detected" : "config"));
            //Logger.addObject(config, "config", 10);

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
                    Logger.add(e.getStackTrace());
                }
                catch (e:*)
                {
                    Logger.addObject(e, "exception");
                }
            }
        }
    }
}
