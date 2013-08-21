""" xvm-stat (c) sirmax 2013 """

from pprint import pprint
import datetime
import json
import traceback
from random import randint
from urllib2 import urlopen
import threading

import BigWorld
from items.vehicles import VEHICLE_CLASS_TAGS

from gui.mods.xpm import *
from constants import *
from logger import log
from gameregion import region

#############################

PUBLIC_TOKEN = 'xpm'

class _Stat(object):
    def __init__(self):
        player = BigWorld.player()
        self.arenaId = None
        self.players = None
        self.playersSkip = None
        self.cache = {}
        self.cacheUser = {}
        self.info = None
        self.servers = [ "http://proxy2.bulychev.net/%1" ] # TODO
        self.timeout = 30000
        pass

    def __del__(self):
        pass

    def getStat(self, proxy, ids):
        player = BigWorld.player()
        if player.arena is None:
            return
        self._get_stat(proxy, ids)


    def getUserData(self, proxy, value, isId):
        self._get_user(proxy, value, isId)


    def _respond(self, proxy, method, data):
        #log("DEBUG: respond: " + method)
        proxy.call(method, [json.dumps(data)])


    def _get_stat(self, proxy, ids):
        player = BigWorld.player()
        if player.arenaUniqueID != self.arenaId:
            self.arenaId = player.arenaUniqueID
            self.players = {}
            self.playersSkip = {}

        self._update_players()

        self._load_stat()

        players = {}
        for vehId in self.players:
            pl = self.players[vehId]
            cacheKey = "%d=%s" % (pl.playerId, pl.vn)
            if cacheKey not in self.cache:
                cacheKey = "%d" % (pl.playerId)
                if cacheKey not in self.cache:
                    playersSkip[str(pl.playerId)] = True
                    players[pl.name] = self._get_stat_stub(pl)
                    continue
            players[pl.name] = self.cache[cacheKey]
        #pprint(players)

        self._respond(proxy, RESPOND_STATDATA, {'players': players, 'info': self.info})


    def _update_players(self):
        vehicles = BigWorld.player().arena.vehicles
        for (vId, vData) in vehicles.items():
            if vId not in self.players:
                self.players[vId] = _Player(vId, vData)
            self.players[vId].update(vData)


    def _load_stat(self):
        player = BigWorld.player()
        requestList = []

        for vehId in self.players:
            pl = self.players[vehId]
            cacheKey = "%d=%s" % (pl.playerId, pl.vn)

            if cacheKey in self.cache:
                continue
            if str(pl.playerId) in self.playersSkip:
                continue

            if pl.vn in [None, '', 'UNKNOWN']:
                requestList.append(str(pl.playerId))
            else:
                requestList.append("%d=%s%s" % (pl.playerId, pl.vn,
                        '=1' if pl.vehId == player.playerVehicleID else ''))

        if not requestList:
            return
        updateRequest = ','.join(requestList)

        if self.servers is None or len(self.servers) <= 0:
            log('WARNING: Cannot read statistics: no suitable server was found.')
            return

        try:
            updateRequest = updateRequest.replace('?', '%3F') # for Chinese server
            server = self.servers[randint(0, len(self.servers) - 1)]
            responseFromServer, duration = self.loadUrl(server, updateRequest)

            if len(responseFromServer) <= 0:
                log('WARNING: Empty response or parsing error')
                return

            data = json.loads(responseFromServer)

            if 'info' in data and region in data['info']:
                self.info = data['info'][region]

            if 'players' not in data:
                log('WARNING: Stat request failed: ' + str(responseFromServer))
                return

            for stat in data['players']:
                #pprint(stat)
                if 'name' not in stat or not stat['name']:
                    continue
                cacheKey = "%d%s" % (stat['id'], "=" + stat['vname'] if stat['vname'] else '')
                self.cache[cacheKey] = stat

        except Exception, ex:
            log('ERROR: _load_stat() exception: ' + str(ex) + "\n" + traceback.format_exc(ex))


    def _get_user(self, proxy, value, isId):
        if isId:
            value = str(int(value))
        cacheKey = "%s,%d" % (value, isId)
        data = None
        if cacheKey not in self.cacheUser:
            try:
                req = "INFO/%s/%s" % ("ID" if isId else region, value)
                server = self.servers[randint(0, len(self.servers) - 1)]
                responseFromServer, duration = self.loadUrl(server, req)

                if not responseFromServer:
                    log('WARNING: Empty response or parsing error')
                else:
                    data = json.loads(responseFromServer)[0]
                    if data is not None and 'nm' in data and '_id' in data:
                        self.cacheUser[data['nm'] + ",0"] = data
                        self.cacheUser[str(data['_id']) + ",1"] = data

            except Exception, ex:
                log('ERROR: _get_user() exception: ' + str(ex) + "\n" + traceback.format_exc(ex))

        self._respond(proxy, RESPOND_USERDATA,
            self.cacheUser[cacheKey] if cacheKey in self.cacheUser else None)


    def _get_stat_stub(self, player):
        return {
            'id': pl.playerId,
            'name': pl.name,
            'vname': pl.vName,
        }

    def loadUrl(self, url, members, test=False):
        if not test:
            log('INFO:  HTTP: ' + str(members))

        url = url.replace('%1', members).replace('%2', PUBLIC_TOKEN)
        #log('DEBUG: loadUrl: ' + url )

        duration = None
        responseFromServer = ''
        startTime = datetime.datetime.now()
        response = None

        try:
            response = urlopen(url=url, timeout=self.timeout / 1000)
            code = response.getcode()

            if code in [200, 202]:
                # 200 OK, 202 Accepted
                responseFromServer = response.read()

        except Exception, ex:
            log('ERROR: loadUrl failed: ' + str(ex))
        finally:
            if response is not None:
                response.close()

        elapsed = datetime.datetime.now() - startTime
        msec = elapsed.seconds * 1000 + elapsed.microseconds / 1000
        log("INFO:    Time: %d ms, Size: %d bytes" % (msec, len(responseFromServer)))
        #log('DEBUG: responseFromServer: ' + responseFromServer)

        if not responseFromServer.lower().startswith('onexception'):
            duration = msec

        return responseFromServer, duration


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
        self.vn = vData['vehicleType'].type.name
        self.vn = self.vn[self.vn.find(':')+1:].upper()
        self.vType = set(VEHICLE_CLASS_TAGS.intersection(vData['vehicleType'].type.tags)).pop()
        self.team = vData['team'] - 1


_stat = _Stat()

#############################
# Command

def getStat(proxy, *args):
    _stat.getStat(proxy, args[0])
    pass

def getUserData(proxy, *args):
    _stat.getUserData(proxy, args[0], args[1])
    pass
