""" xvm-stat (c) sirmax 2013 """

from pprint import pprint
import datetime
import json

import BigWorld
from items.vehicles import VEHICLE_CLASS_TAGS

from gui.mods.xpm import *
from logger import log

#############################

PUBLIC_TOKEN = 'xpm'

class _Stat(object):
    def __init__(self):
        player = BigWorld.player()
        self.arenaId = None
        self.players = None
        self.cache = {}
        self.proxies = [ "proxy2.bylychev.net" ] # TODO
        pass

    def __del__(self):
        pass

    def getStat(self, ids):
        player = BigWorld.player()
        if player.arena is None:
            return

        if player.arenaUniqueID != self.arenaId:
            self.arenaId = player.arenaUniqueID
            self.players = {}

        self._update_players()

        requestList = []

        for pl in self.players:
            cacheKey = "%d=%s" % (pl.playerId, pl.vName)

            if cacheKey in self.cache:
                continue

            if pl.vName in [None, '', 'UNKNOWN']:
                requestList.append(str(pl.playerId))
            else:
                requestList.append("%d=%s%s" % (pl.playerId, pl.vName,
                        '=1' if pl.vehId == player.playerVehicleID else ''))

        updateRequest = ','.join(requestList)
        if not updateRequest:
            return

        if self.proxies is None or len(self.proxies) <= 0:
            log('WARNING: Cannot read statistics: no suitable proxy was found.')
            return

        try:
            updateRequest = updateRequest.replace('?', '%3F') # for Chinise server
            proxy = self.proxies[randint(0, len(self.proxies) - 1)]
            responseFromServer, duration = self.loadUrl(proxy, updateRequest)

            if len(responseFromServer) <= 0:
                log('WARNING: Empty response or parsing error')
                return

#            try:
            data = json.loads(responseFromServer)
#            except ValueError:
#                try:
#                    data = json.loads(responseFromServer.replace('\n', '\\n'))
#                except ValueError:
#                    try:
#                        data = json.loads(responseFromServer.replace('\\n', '\\\\n'))
#                    except ValueError:
#                        Log.error('Failed to parse stat data')
#                        return
#
#            if 'players' not in data:
#                Log.warning('Stat request failed: ' + str(responseFromServer))
#                return
#
#            info = data['info'][self.version] if 'info' in data else None
#            res = dict(players=data['players'], info=None)
#
#            if info is not None:
#                self.modInfo = info
#
#            stat_v_stub = dict(b=0, d=0, f=0, l=0, s=0, w=0, name='')
#
#            """ Keys for data convserion: JSON key, XVM key, default value.
#                First part converts top-level 'stat' item, and the second
#                part appends 'stat["v"]' subtree to main data.
#            """
#            keys1 = (('id', 'id', 0)
#                , ('name', 'name', '')
#                , ('vname', 'vn', '')
#                , ('battles', 'b', 0)
#                , ('wins', 'w', 0)
#                , ('eff', 'e', 0)
#                , ('spo', 'spo', 0)
#                , ('hip', 'hip', 0)
#                , ('cap', 'cap', 0)
#                , ('dmg', 'dmg', 0)
#                , ('frg', 'frg', 0)
#                , ('def', 'def', 0)
#                , ('lvl', 'avglvl', 0)
#                , ('wn', 'wn', 0)
#                , ('twr', 'twr', 0)
#            )
#
#            keys2 = (('b', 'tb', 0)
#                , ('w', 'tw', 0)
#                , ('l', 'tl', 0)
#                , ('s', 'ts', 0)
#                , ('d', 'td', 0)
#                , ('f', 'tf', 0)
#            )
#
#            for stat in data['players']:
#                if 'name' not in stat or len(stat['name']) <= 0:
#                    continue
#                if 'v' not in stat:
#                    stat['v'] = stat_v_stub
#
#                """ Convert Json data tree to one-dimensional dictionary.
#                    The same job does 'JsonDataToResponse' method in original XVM.
#                """
#                stat = dict([(y, stat[x]) if x in stat else (y, z)
#                                for (x,y,z) in keys1]
#                    + [(y, stat['v'][x]) if x in stat['v'] else (y, z)
#                                for (x,y,z) in keys2])
#
#                cacheKey = "%d=%s" % (stat['id'], stat['vn'] or '')
#                self.cache[cacheKey] = stat
#
#                pd = next((x for x in req['players'] if x['id'] == stat['id']), None)
#                if pd is not None:
#                    stat['name'] = pd['_label']
#                    stat['vn'] = pd['v']
#                    stat['clan'] = pd['_clan']
#
#            for pd in req['players']:
#                cacheKey = "%(id)d=%(v)s" % pd
#                if cacheKey in self.cache:
#                    continue
#
#                Log.debug("Player %(id)s %(v)s %(n)s not in Database" % pd)
#
#                self.cache[cacheKey] = next((x for x in res['players'] if x['id'] == pd['id']),
#                    dict(
#                        id=pd['id']
#                        , vn=pd['v']
#                        , name=pd['_label']
#                        , clan=pd['_clan']
#                    )
#                )
#
        except Exception, ex:
            log('ERROR: PrepareStat exception: ' + str(ex))
            log("\n" + traceback.format_exc(ex))


    def loadUrl(self, url, members, test=False):
        if not test:
            Log.info('HTTP: ' + str(members))

        url = url.replace('%1', members).replace('%2', PUBLIC_TOKEN)
        Log.debug('loadUrl: ' + url )

        duration = None
        responseFromServer = ''
        startTime = datetime.now()
        response = None

        try:
            response = urlopen(url=url, timeout=self.timeout / 1000)
            code = response.getcode()

            if code in [200, 202]:
                # 200 OK, 202 Accepted
                responseFromServer = response.read()

        except Exception, ex:
            Log.error('loadUrl failed: ' + str(ex))
        finally:
            if response is not None:
                response.close()

        elapsed = datetime.now() - startTime
        msec = elapsed.seconds * 1000 + elapsed.microseconds / 1000
        Log.info("  Time: %d ms, Size: %d bytes" % (msec, len(responseFromServer)))
        Log.debug('responseFromServer: ' + responseFromServer)

        if not responseFromServer.lower().startswith('onexception'):
            duration = msec

        return responseFromServer, duration

    def _update_players(self):
        vehicles = BigWorld.player().arena.vehicles
        for (vId, vData) in vehicles.items():
            if vId not in self.players:
                self.players[vId] = _Player(vId, vData)
            self.players[vId].update(vData)

    def getUserData(self, value, isId):
        pass

class _Player(object):

    def __init__(self, vehId, vData):
        self.vehId = vehId
        self.playerId = vData['accountDBID']
        self.name = vData['name']
        self.clan = vData['clanAbbrev']
        self.vName = vData['vehicleType'].type.shortUserString

    def update(self, vData):
        self.vName = vData['vehicleType'].type.shortUserString
        vId = vData['vehicleType'].type.id
        self.vId = (vId[0] << 4) | (vId[1] << 8)
        self.vLevel = vData['vehicleType'].type.level
        self.maxHealth = vData['vehicleType'].maxHealth
        self.vIcon = vData['vehicleType'].type.name.replace(':', '-')
        self.vType = set(VEHICLE_CLASS_TAGS.intersection(vData['vehicleType'].type.tags)).pop()
        self.team = vData['team'] - 1

_stat = _Stat()

#############################
# Command

def getStat(*args):
    _stat.getStat(args[0])
    pass

def getUserData(*args):
    _stat.getUserData(args[0], args[1])
    pass
