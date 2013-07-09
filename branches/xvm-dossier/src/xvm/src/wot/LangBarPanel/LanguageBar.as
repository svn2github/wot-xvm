import com.xvm.Components.PingServers.PingServers;
import com.xvm.Config;
import com.xvm.GlobalEventDispatcher;
import com.xvm.Locale;
import com.xvm.Utils;
import com.xvm.Components.Dossier.Dossier;
import com.xvm.Components.Dossier.WidgetsSettingsDialog;

class wot.LangBarPanel.LanguageBar
{
    /////////////////////////////////////////////////////////////////
    // wrapped methods

    public var wrapper:net.wargaming.LanguageBar;
    private var base:net.wargaming.LanguageBar;

    public function LanguageBar(wrapper:net.wargaming.LanguageBar, base:net.wargaming.LanguageBar)
    {
        this.wrapper = wrapper;
        this.base = base;

        Utils.TraceXvmModule("LangBarPanel");

        LanguageBarCtor();

        //Logger.addObject(_root);
    }

    function init()
    {
        return this.initImpl.apply(this, arguments);
    }

    // wrapped methods
    /////////////////////////////////////////////////////////////////

    private var currentLoadingName:String;
    private var pingHolder:MovieClip;
    private var dossierHolder:MovieClip;
    
    public function LanguageBarCtor()
    {
        currentLoadingName = "";
        pingHolder = null;
        dossierHolder = null;

        GlobalEventDispatcher.addEventListener("config_loaded", this, onConfigLoaded);
        Config.LoadConfig("LanguageBar.as");
    }

    private function onConfigLoaded()
    {
        GlobalEventDispatcher.removeEventListener("config_loaded", this, onConfigLoaded);

        var me = this;
        _global.setInterval(function() { me.onTimer.call(me); }, 1000);
        onTimer();
    }

    private function onTimer()
    {
        //Logger.add(_root.loadingName);
        if (currentLoadingName == _root.loadingName)
            return;
        currentLoadingName = _root.loadingName;

        // "startgamevideo", "login", "hangar"

        if (pingHolder != null)
        {
            pingHolder.removeMovieClip();
            pingHolder = null;
        }
        if (dossierHolder != null)
        {
            dossierHolder.removeMovieClip();
            dossierHolder = null;
        }
        
        if (currentLoadingName == "startgamevideo" || currentLoadingName == "login")
            initLogin();
        else if (currentLoadingName == "hangar")
            initHangar();
    }
    
    function initImpl()
    {
        //Logger.add("LanguageBar.init()");
    }
    
    // PRIVATE
    
    private function initHangar()
    {
        var header:MovieClip = _root.header;

        // PingServers component
        pingHolder = header.createEmptyMovieClip("pingHolder", header.getNextHighestDepth());
        PingServers.initFeature(Config.s_config.hangar.pingServers, pingHolder);
        
        // Dossier component
        if (Config.s_config.hangar.dossier.enabled == true)
        {
            var bar:gfx.core.UIComponent = _root.header.buttonsBlock.bar;
            //com.xvm.Logger.addObject(_root.header.buttonsBlock.bar._dataProvider, "", 3);
            if (bar["xvm_initialized"] != true)
            {
                bar["xvm_initialized"] = true;
                var dp:Array = bar["dataProvider"];
                dp.push({ value: "widget", label: Locale.get("Widgets") });
                bar["dataProvider"] = dp;
                bar.addEventListener("itemClick", this, "menuBarSelectEvent");
            }

            var playerName = _root.header.tankPanel.account_name.text;
            dossierHolder = header.createEmptyMovieClip("dossierHolder", header.getNextHighestDepth());
            Dossier.initialize(Config.s_config.hangar.dossier, dossierHolder, playerName);
        }
    }

    private function menuBarSelectEvent(event)
    {
        if (event.item.value != "widget")
            return;
        var wsd = new WidgetsSettingsDialog(_root.header);
    }
    
    private function initLogin()
    {
        var main:MovieClip = _root.contentHolder.main;

        // PingServers component
        pingHolder = main.createEmptyMovieClip("pingHolder", main.getNextHighestDepth());
        // _root.contentHolder.main is fixed size (1024x768), so create holder and place it at the top left corner of screen.
        pingHolder._x = Math.round((1024 - main.__width) / 2);
        pingHolder._y = Math.round((768 - main.__height) / 2);
        PingServers.initFeature(Config.s_config.login.pingServers, pingHolder);

        // ------------------ DEBUG ------------------
        var wsd = new com.xvm.Components.Dossier.WidgetsSettingsDialog(_root.header);
        //dossierHolder = main.createEmptyMovieClip("dossierHolder", main.getNextHighestDepth());
        //Dossier.initialize(Config.s_config.hangar.dossier, dossierHolder, "sirmax2");
        // ------------------ DEBUG ------------------
    }
}
