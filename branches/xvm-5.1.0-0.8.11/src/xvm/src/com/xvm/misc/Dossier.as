/**
 * XVM
 * @author Maxim Schedriviy "m.schedriviy(at)gmail.com"
 */
package com.xvm.misc
{
    import com.xvm.*;
    import com.xvm.io.*;
    import com.xvm.types.dossier.*;
    import flash.external.*;
    import net.wg.gui.lobby.profile.pages.technique.data.*;

    public class Dossier
    {
        private static var _initialized:Boolean = false;

        private static var _requests:Object = {};

        private static var _cache:Object = {};

        /////////////////////

        private static function init():void
        {
            if (_initialized)
                return;

            _initialized = true;

            ExternalInterface.addCallback(Cmd.RESPOND_DOSSIER, dossierLoaded);
        }

        /////////////////////

        public static function loadAccountDossier(target:Object, callback:Function, playerId:int = 0):void
        {
            loadDossierInternal(target, callback, playerId, 0);
        }

        public static function loadVehicleDossier(target:Object, callback:Function, vehId:int, playerId:int = 0):void
        {
            loadDossierInternal(target, callback, playerId, vehId);
        }

        private static function loadDossierInternal(target:Object, callback:Function, playerId:int, vehId:int):void
        {
            init();
            var key:String = playerId + "," + vehId;
            //Logger.add("loadDossier: " + key);
            if (_requests[key] == null)
                _requests[key] = [];
            if (callback != null)
                _requests[key].push( { target: target, callback: callback } );
            Cmd.getDossier(playerId == 0 ? null : playerId.toString(), vehId == 0 ? null : vehId.toString());
        }

        private static function dossierLoaded(playerId:int, vehId:int, str:String):void
        {
            try
            {
                //Logger.add(str);

                var key:String = playerId + "," + vehId;

                var data:Object = JSONx.parse(str);

                //Logger.addObject(data, 3, key);

                var dossier:* = (vehId == 0)
                    ? new AccountDossier(data)
                    : new VehicleDossier(data);

                _cache[key] = dossier;

                var targets:Array = _requests[key];
                delete _requests[key];

                if (targets != null)
                {
                    for each (var target:Object in targets)
                        target.callback.call(target.target, dossier);
                }
            }
            catch (e:Error)
            {
                Logger.add(e.getStackTrace());
            }
        }

        /////////////////////

        public static function getAccountDossier(playerId:int = 0):AccountDossier
        {
            return getDossier(playerId, 0);
        }

        public static function getVehicleDossier(vehId:int, playerId:int = 0):VehicleDossier
        {
            return getDossier(playerId, vehId);
        }

        private static function getDossier(playerId:int, vehId:int):*
        {
            return _cache[playerId + "," + vehId];
        }
    }
}
