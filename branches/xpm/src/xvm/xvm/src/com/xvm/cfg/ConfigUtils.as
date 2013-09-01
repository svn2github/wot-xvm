/**
 * XVM Config utils
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm.cfg
{
    import flash.utils.*;
    import com.adobe.utils.StringUtil;
    import com.xvm.utils.Utils;
    import com.xvm.Logger;
    import com.xvm.utils.ObjectConverter;

    public class ConfigUtils extends Object
    {
        /**
         * Recursive walk default config and merge with loaded values.
         */
        public static function MergeConfigs(config:*, def:*, prefix:String = "def"):*
        {
            switch (typeof def)
            {
                case 'object':
                    if (def is Array)
                    {
                        // warning: arrays are not checked now
                        return (config is Array) ? config : def;
                    }
                    if (def == null)
                        return (typeof config == 'string' || typeof config == 'number') ? config : null;

                    var result:Object = { };
                    var descr:XML = describeType(def);
                    for (var name:String in def)
                    {
                        result[name] = config.hasOwnProperty(name)
                           ? MergeConfigs(config[name], def[name], prefix + "." + name)
                           : def[name];
                    }
                    var ac:XML;
                    var xml:XMLList = descr.accessor;
                    for each (ac in xml)
                    {
                        if (ac.@access != "readonly" && ac.@access != "readwrite")
                            continue;
                        result[ac.@name] = config.hasOwnProperty(ac.@name)
                           ? MergeConfigs(config[ac.@name], def[ac.@name], prefix + "." + ac.@name)
                           : def[ac.@name];
                    }
                    xml = descr.variable;
                    for each (ac in xml)
                    {
                        result[ac.@name] = config.hasOwnProperty(ac.@name)
                           ? MergeConfigs(config[ac.@name], def[ac.@name], prefix + "." + ac.@name)
                           : def[ac.@name];
                    }
                    return ObjectConverter.convertData(result, Class(getDefinitionByName(getQualifiedClassName(def))));

                case 'number':
                    if (!isNaN(parseFloat(config)))
                        return parseFloat(config);
                    if (typeof config == 'string')
                        return config;
                    return def;

                case 'boolean':
                    if (typeof config == 'boolean')
                        return config;
                    if (typeof config == 'string')
                        return config.toLowerCase() == "true";
                    return def;

                case 'string':
                    return (config == null || typeof config == 'string') ? config : def;

                case 'undefined':
                case 'null':
                    return (typeof config == 'string' || typeof config == 'number' || typeof config == 'object') ? config : def;

                default:
                    return def;
            }
        }

        /**
         * Modify some parameters to be with correct format.
         */
        public static function TuneupConfig(config:CConfig):void
        {
            config.battle.clanIconsFolder = Utils.fixPath(config.battle.clanIconsFolder);

            config.iconset.battleLoading = Utils.fixPath(config.iconset.battleLoading);
            config.iconset.playersPanel = Utils.fixPath(config.iconset.playersPanel);
            config.iconset.statisticForm = Utils.fixPath(config.iconset.statisticForm);
            config.iconset.vehicleMarker = Utils.fixPath(config.iconset.vehicleMarker);

            if (isNaN(config.battleLoading.clanIcon.xr))
                config.battleLoading.clanIcon.xr = config.battleLoading.clanIcon.x;
            if (isNaN(config.battleLoading.clanIcon.yr))
                config.battleLoading.clanIcon.yr = config.battleLoading.clanIcon.y;
            if (isNaN(config.statisticForm.clanIcon.xr))
                config.statisticForm.clanIcon.xr = config.statisticForm.clanIcon.x;
            if (isNaN(config.statisticForm.clanIcon.yr))
                config.statisticForm.clanIcon.yr = config.statisticForm.clanIcon.y;
            if (isNaN(config.playersPanel.clanIcon.xr))
                config.playersPanel.clanIcon.xr = config.playersPanel.clanIcon.x;
            if (isNaN(config.playersPanel.clanIcon.yr))
                config.playersPanel.clanIcon.yr = config.playersPanel.clanIcon.y;
        }

        /**
         * Convert config to new format.
         */
        public static function FixConfig(config:Object):Object
        {
            if (!config)
                return undefined;

            var v: String = config.configVersion;

            if (!v || v == "")
                v = "1.0.0";

            if (v == "1.0.0")
            {
                // Convert XVM 1.0.0 => 1.1.0
                if (config.battle)
                {
                    if (config.battle.mirroredVehicleIcons != null)
                        config.battle.mirroredVehicleIcons = Utils.toBool(config.battle.mirroredVehicleIcons, true);
                    if (config.battle.showPostmortemTips != null)
                        config.battle.showPostmortemTips = Utils.toBool(config.battle.showPostmortemTips, true);
                }

                if (config.rating)
                {
                    if (config.rating.showPlayersStatistics != null)
                        config.rating.showPlayersStatistics = Utils.toBool(config.rating.showPlayersStatistics, false);
                    if (config.rating.battleLoading) {
                        if (config.rating.battleLoading.show != null)
                            config.rating.battleLoading.show = Utils.toBool(config.rating.battleLoading.show, true);
                    }
                    if (config.rating.playersPanel)
                    {
                        if (config.rating.playersPanel.show != null)
                            config.rating.playersPanel.show = Utils.toBool(config.rating.playersPanel.show, true);
                    }
                    if (config.rating.statisticForm)
                    {
                        if (config.rating.statisticForm.show != null)
                            config.rating.statisticForm.show = Utils.toBool(config.rating.statisticForm.show, true);
                    }
                    if (config.rating.colors)
                    {
                        config.colors = config.rating.colors;
                        delete config.rating.colors;
                    }
                }
                v = "1.1.0";
            }

            if (v == "1.1.0")
            {
                // Convert XVM 1.1.0 => 1.2.0
                if (config.battle)
                {
                    if (config.battle.battleLoadingShowClock != null)
                    {
                        if (!config.battleLoading)
                            config.battleLoading = { };
                        config.battleLoading.showClock = Utils.toBool(config.battle.battleLoadingShowClock, true);
                        delete config.battle.battleLoadingShowClock;
                    }
                    if (config.battle.playersPanelAlpha != null)
                    {
                        if (!config.playersPanel)
                            config.playersPanel = { };
                        config.playersPanel.alpha = Utils.toInt(config.battle.playersPanelAlpha, 100);
                        delete config.battle.playersPanelAlpha;
                    }
                    if (config.battle.playersPanelLargeWidth != null)
                    {
                        if (!config.playersPanel)
                            config.playersPanel = { };
                        config.playersPanel.large = { };
                        config.playersPanel.large.width = Utils.toInt(config.battle.playersPanelLargeWidth, 170);
                        delete config.battle.playersPanelLargeWidth;
                    }
                }

                if (config.rating)
                {
                    if (config.rating.battleLoading)
                    {
                        if (config.rating.battleLoading.format)
                        {
                            if (!config.battleLoading)
                                config.battleLoading = { };
                            config.battleLoading.formatLeft = config.rating.battleLoading.format;
                            config.battleLoading.formatRight = config.rating.battleLoading.format;
                        }
                        delete config.rating.battleLoading;
                    }

                    if (config.rating.statisticForm)
                    {
                        if (config.rating.statisticForm.format != null)
                        {
                            if (!config.statisticForm)
                                config.statisticForm = { };
                            config.statisticForm.formatLeft = config.rating.statisticForm.format;
                            config.statisticForm.formatRight = config.rating.statisticForm.format;
                        }
                        delete config.rating.statisticForm;
                    }

                    if (config.rating.playersPanel)
                    {
                        if (config.rating.playersPanel.format != null)
                        {
                            if (!config.playersPanel)
                                config.playersPanel = { };
                            if (!config.playersPanel.large)
                                config.playersPanel.large = { };
                            config.playersPanel.large.nickFormatLeft = config.rating.playersPanel.format + " {{nick}}";
                            config.playersPanel.large.nickFormatRight = "{{nick}} " + config.rating.playersPanel.format;
                        }
                        if (config.rating.playersPanel.middleColor)
                        {
                            if (!config.playersPanel)
                                config.playersPanel = { };
                            if (!config.playersPanel.medium)
                                config.playersPanel.medium = { };
                            config.playersPanel.medium.formatLeft = "<font color='" + config.rating.playersPanel.middleColor + "'>{{nick}}</font>";
                            config.playersPanel.medium.formatRight = "<font color='" + config.rating.playersPanel.middleColor + "'>{{nick}}</font>";
                        }
                        delete config.rating.playersPanel;
                    }
                }

                v = "1.2.0";
            }

            if (v == "1.2.0")
                v = "1.3.0";

            if (v == "1.3.0")
            {
                if (config.battleLoading)
                {
                    if (config.battleLoading.showClock != null)
                    {
                        config.battleLoading.clockFormat = config.battleLoading.showClock == true ? "H:N:S" : "";
                        delete config.battleLoading.showClock;
                    }
                    if (config.battleLoading.formatLeft != null)
                        config.battleLoading.formatLeft = "{{vehicle}}" + (config.battleLoading.formatLeft ? " " + config.battleLoading.formatLeft : "");
                    if (config.battleLoading.formatRight != null)
                        config.battleLoading.formatRight = (config.battleLoading.formatRight ? config.battleLoading.formatRight + " " : "") + "{{vehicle}}";
                }
                if (config.statisticForm)
                {
                    if (config.statisticForm.formatLeft != null)
                        config.statisticForm.formatLeft = "{{vehicle}} " + (config.statisticForm.formatLeft ? " " + config.statisticForm.formatLeft : "");
                    if (config.statisticForm.formatRight != null)
                        config.statisticForm.formatRight = (config.statisticForm.formatRight ? config.statisticForm.formatRight + " " : "") + " {{vehicle}}";
                }
                v = "1.4.0";
            }

            if (v == "1.4.0")
                v = "1.5.0";

            if (v == "1.5.0")
            {
                if (!config.markers.ally.alive.normal.damageTextPlayer)
                    config.markers.ally.alive.normal.damageTextPlayer = config.markers.ally.alive.normal.damageText;
                if (!config.markers.ally.alive.normal.damageTextSquadman)
                    config.markers.ally.alive.normal.damageTextSquadman = config.markers.ally.alive.normal.damageText;
                if (!config.markers.ally.alive.extended.damageTextPlayer)
                    config.markers.ally.alive.extended.damageTextPlayer = config.markers.ally.alive.extended.damageText;
                if (!config.markers.ally.alive.extended.damageTextSquadman)
                    config.markers.ally.alive.extended.damageTextSquadman = config.markers.ally.alive.extended.damageText;
                if (!config.markers.ally.dead.normal.damageTextPlayer)
                    config.markers.ally.dead.normal.damageTextPlayer = config.markers.ally.dead.normal.damageText;
                if (!config.markers.ally.dead.normal.damageTextSquadman)
                    config.markers.ally.dead.normal.damageTextSquadman = config.markers.ally.dead.normal.damageText;
                if (!config.markers.ally.dead.extended.damageTextPlayer)
                    config.markers.ally.dead.extended.damageTextPlayer = config.markers.ally.dead.extended.damageText;
                if (!config.markers.ally.dead.extended.damageTextSquadman)
                    config.markers.ally.dead.extended.damageTextSquadman = config.markers.ally.dead.extended.damageText;
                if (!config.markers.enemy.alive.normal.damageTextPlayer)
                    config.markers.enemy.alive.normal.damageTextPlayer = config.markers.enemy.alive.normal.damageText;
                if (!config.markers.enemy.alive.normal.damageTextSquadman)
                    config.markers.enemy.alive.normal.damageTextSquadman = config.markers.enemy.alive.normal.damageText;
                if (!config.markers.enemy.alive.extended.damageTextPlayer)
                    config.markers.enemy.alive.extended.damageTextPlayer = config.markers.enemy.alive.extended.damageText;
                if (!config.markers.enemy.alive.extended.damageTextSquadman)
                    config.markers.enemy.alive.extended.damageTextSquadman = config.markers.enemy.alive.extended.damageText;
                if (!config.markers.enemy.dead.normal.damageTextPlayer)
                    config.markers.enemy.dead.normal.damageTextPlayer = config.markers.enemy.dead.normal.damageText;
                if (!config.markers.enemy.dead.normal.damageTextSquadman)
                    config.markers.enemy.dead.normal.damageTextSquadman = config.markers.enemy.dead.normal.damageText;
                if (!config.markers.enemy.dead.extended.damageTextPlayer)
                    config.markers.enemy.dead.extended.damageTextPlayer = config.markers.enemy.dead.extended.damageText;
                if (!config.markers.enemy.dead.extended.damageTextSquadman)
                    config.markers.enemy.dead.extended.damageTextSquadman = config.markers.enemy.dead.extended.damageText;

                if (config.battle.clanIconsFolder == "../../../clanicons")
                    config.battle.clanIconsFolder = "clanicons";

                if (!config.colors.system.ally_alive)
                    config.colors.system.ally_alive = config.colors.system.ally_alive_normal;
                if (!config.colors.system.ally_dead)
                    config.colors.system.ally_dead = config.colors.system.ally_dead_normal;
                if (!config.colors.system.ally_blowedup)
                    config.colors.system.ally_blowedup = config.colors.system.ally_blowedup_normal;
                if (!config.colors.system.squadman_alive)
                    config.colors.system.squadman_alive = config.colors.system.squadman_alive_normal;
                if (!config.colors.system.squadman_dead)
                    config.colors.system.squadman_dead = config.colors.system.squadman_dead_normal;
                if (!config.colors.system.squadman_blowedup)
                    config.colors.system.squadman_blowedup = config.colors.system.squadman_blowedup_normal;
                if (!config.colors.system.teamKiller_alive)
                    config.colors.system.teamKiller_alive = config.colors.system.teamKiller_alive_normal;
                if (!config.colors.system.teamKiller_dead)
                    config.colors.system.teamKiller_dead = config.colors.system.teamKiller_dead_normal;
                if (!config.colors.system.teamKiller_blowedup)
                    config.colors.system.teamKiller_blowedup = config.colors.system.teamKiller_blowedup_normal;
                if (!config.colors.system.enemy_alive)
                    config.colors.system.enemy_alive = config.colors.system.enemy_alive_normal;
                if (!config.colors.system.enemy_dead)
                    config.colors.system.enemy_dead = config.colors.system.enemy_dead_normal;
                if (!config.colors.system.enemy_blowedup)
                    config.colors.system.enemy_blowedup = config.colors.system.enemy_blowedup_normal;

                v = "4.0.0";
            }

    /*
            if (v == "4.x.x")
            {
                v = "4.y.y";
            }
    */

            config.configVersion = v;
            return config;
        }

        public static function parseErrorEvent(ex:Object):String {
            var e:Error = ex as Error;
            if (e != null)
                return e.getStackTrace();

            if (ex.at == null)
                return ex.toString();

            var head:String = ex.at > 0 ? ex.text.substring(0, ex.at) : "";
            head = head.split("\r").join("").split("\n").join("");
            while (head.indexOf("  ") != -1)
                head = head.split("  ").join(" ");
            head = head.substr(head.length - 75, 75);

            var tail:String = (ex.at + 1 < ex.text.length) ? ex.text.substring(ex.at + 1, ex.text.length) : "";
            tail = tail.split("\r").join("").split("\n").join("");
            while (tail.indexOf("  ") != -1)
            tail = tail.split("  ").join(" ");
            tail = tail.substr(0, 125);

            return "[" + ex.at + "] " + StringUtil.trim(ex.name) + ": " + StringUtil.trim(ex.message) + "\n  " +
                head + ">>>" + ex.text.charAt(ex.at) + "<<<" + tail;
        }
    }
}
