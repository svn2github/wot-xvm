/**
 * XVM Config
 * @author Maxim Schedriviy <m.schedriviy@gmail.com>
 */
package com.xvm
{
    import flash.accessibility.AccessibilityProperties;
    import flash.external.ExternalInterface;
    import com.xvm.io.*;
    import flash.utils.Dictionary;

    public class Stat
    {
        // instance
        private static var _instance:Stat = null;
        private static function get instance():Stat
        {
            if (_instance == null)
                _instance = new Stat();
            return _instance;
        }

        public static function get infoVersion():String
        {
            return instance.info.ver;
        }

        public static function get infoMessage():String
        {
            return instance.info.message;
        }

        /*public static function get stat():Object
        {
            return instance.stat;
        }*/

        public static function loadBattleStat(target:Object, callback:Function, force:Boolean = false):void
        {
            instance.loadBattleStat(target, callback, force);
        }

        public static function loadUserData(target:Object, callback:Function, value:String, isId:Boolean):void
        {
            instance.loadUserData(target, callback, value, isId);
        }

        // PRIVATE

        private var stat:Dictionary;
        private var user:Dictionary;
        private var info:Object;
        private var loading:Boolean;
        private var loaded:Boolean;
        private var listenersBattle:Vector.<Object>;
        private var listenersUser:Dictionary;

        function Stat()
        {
            info = { ver: null, message: null };
            stat = new Dictionary();
            user = new Dictionary();
            loading = false;
            loaded = false;
            listenersBattle = new Vector.<Object>();
            listenersUser = new Dictionary();
            ExternalInterface.addCallback(Cmd.RESPOND_STATDATA, battleLoaded);
            ExternalInterface.addCallback(Cmd.RESPOND_USERDATA, userLoaded);
        }

        private function loadBattleStat(target:Object, callback:Function, force:Boolean):void
        {
            //Logger.add("TRACE: loadBattleStat(): target=" + String(target));
            try
            {
                if (force)
                {
                    loaded = false;
                    // TODO: what if loading?
                }

                if (!Config.config.rating.showPlayersStatistics || loaded)
                {
                    if (callback != null)
                        callback.call(target);
                    return;
                }

                if (callback != null)
                    listenersBattle.push( { target:target, callback:callback } );
                if (loading)
                    return;
                loading = true;

                Cmd.loadBattleStat();
            }
            catch (e:Error)
            {
                Logger.add(e.getStackTrace());
                throw e;
            }
        }

        private function battleLoaded(json_str:String):void
        {
            //Logger.add("TRACE: battleLoaded()");

            try
            {
                var response:Object = JSONx.parse(json_str);
                //Logger.addObject(response, "response", 2);

                if (response.info)
                    info = response.info;

/*                if (response.players)
                {
                    for (var nm in response.players)
                    {
                        var stat:Stat = response.players[nm];
                        stat = CalculateStatValues(stat);
                        if (!StatData.s_data[nm])
                        {
                            //players_count++;
                            StatData.s_data[nm] = { };
                        }
                        StatData.s_data[nm].stat = stat;
                        StatData.s_data[nm].loadstate = (StatData.s_data[nm].vehicleKey == "UNKNOWN")
                            ? Defines.LOADSTATE_UNKNOWN : Defines.LOADSTATE_DONE;
                        StatData.s_empty = false;
                        Macros.RegisterStatMacros(nm, stat);
                        //Logger.addObject(StatData.s_data[nm], "s_data[" + nm + "]", 3);
                    }
                }*/
            }
            catch (ex:Error)
            {
                Logger.add(ex.getStackTrace());
                throw ex;
            }
            finally
            {
                loaded = true;
                loading = false;
                //Logger.add("Stat Loaded");

                for each (var l:Object in listenersBattle)
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
                listenersBattle = new Vector.<Object>();
            }
        }

        private function loadUserData(target:Object, callback:Function, value:String, isId:Boolean):void
        {
            //Logger.add("TRACE: loadUserStat(): target=" + String(target));
            try
            {
                if (callback != null)
                {
                    var key:String = value + (isId ? ";1" : ";0");
                    listenersUser[key] = { target:target, callback:callback };
                }

                Cmd.loadUserData(value, isId);
            }
            catch (e:Error)
            {
                Logger.add(e.getStackTrace());
                throw e;
            }
        }

        private function userLoaded(json_str:String):void
        {
            //Logger.add("TRACE: statLoaded()");
            try
            {
                var response:Object = JSONx.parse(json_str);
                Logger.addObject(response, "response", 2);
            }
            catch (e:Error)
            {
                Logger.add(e.getStackTrace());
                throw e;
            }
            finally
            {
                var l:Object = listenersUser[response.name];
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
                delete listenersUser[response.name];
            }
        }

    }

}
