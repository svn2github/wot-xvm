""" xvm (c) sirmax 2013-2014 """

# PUBLIC

def getXvmStatTokenData():
    return _getXvmStatTokenData()

def getXvmStatActiveTokenData():
    return _getXvmStatActiveTokenData()

# PRIVATE

from pprint import pprint
from random import randint
import json
import traceback
import datetime
import time

import BigWorld
from gui import SystemMessages

from constants import *
import db
from logger import *
from loadurl import loadUrl

_tokens = db.get('tokens', 'tokens') or dict()
_tdata2 = None
_token_checked = False

def _getXvmStatTokenData():
    global _tokens
    global _tdata2
    global _token_checked

    _token_checked = True

    playerId = _getPlayerId()
    if playerId is None:
        return None

    tdata = _getXvmStatActiveTokenData()
    tdata2 = _checkToken(playerId, None if tdata is None else tdata['token'])
    if tdata2 is None:
        tdata2 = _tdata2

    type = SystemMessages.SM_TYPE.Warning
    msg = '<textformat tabstops="[120]"><a href="#XVM_SITE#">www.modxvm.com</a>\n\n'
    if tdata2 is None:
        msg += '{{l10n:token/network_error}}'
    elif tdata2['status'] == 'badToken':
        msg += '{{l10n:token/bad_token}}'
    elif tdata2['status'] == 'blocked':
        msg += '{{l10n:token/blocked}}'
    elif tdata2['status'] == 'inactive':
        msg += '{{l10n:token/inactive}}'
    elif tdata2['status'] == 'active':
        type = SystemMessages.SM_TYPE.Information
        msg += '{{l10n:token/active}}\n'
        s = tdata2['start_at']/1000
        e = tdata2['expires_at']/1000
        days_left = int((e - s) / 86400)
        if days_left > 0:
            msg += '{{l10n:token/days_left}}:<tab/><font color="#eeeeee">%d</font>\n' % days_left
        else:
            hours_left = int((e - s) / 3600)
            msg += '{{l10n:token/hours_left}}:<tab/><font color="#ffff00">%d</font>\n' % hours_left
        msg += '{{l10n:token/cnt}}:<tab/><font color="#eeeeee">%d</font>' % tdata2['cnt']
    else:
        type = SystemMessages.SM_TYPE.Error
        msg += '{{l10n:token/unknown_status}}\n%s' % json.dumps(tdata2)
    msg += '</textformat>'

    msg = msg.replace('#XVM_SITE#', 'event:http://www.modxvm.com/')

    if _tdata2 is None or _tdata2['status'] != 'active' or tdata2 is None or tdata2['status'] != 'active':
        SystemMessages.pushMessage(msg, type)

    if tdata2 is not None:
        _tdata2 = tdata2

    if tdata2 is not None:
        if 'token' in tdata2:
            _tokens[playerId] = tdata2
            db.set('tokens', 'tokens', _tokens)
        elif tdata is not None:
            tdata2['token'] = tdata['token']

    return tdata2


def _getXvmStatActiveTokenData():
    global _tokens
    global _token_checked

    if not _token_checked:
        _getXvmStatTokenData()

    playerId = _getPlayerId()
    #log(playerId)
    if playerId is None:
        return None

    token = None
    try:
        if playerId in _tokens:
            if _tokens[playerId]['status'] == 'active':
                if long(_tokens[playerId]['expires_at'])/1000 > int(time.mktime(datetime.datetime.utcnow().timetuple())):
                    token = _tokens[playerId]
    except:
        token = None

    #log(token)
    return token


def _getPlayerId():
    player = BigWorld.player()
    playerId = getattr(player, 'databaseID', None)
    if playerId is None:
        arena = getattr(player, 'arena', None)
        if arena is not None:
            vData = arena.vehicles.get(player.playerVehicleID, None)
            if vData is not None:
                playerId = vData.get('accountDBID')
    return playerId

def _checkToken(playerId, token):
    data = None
    try:
        req = "checkToken/%d" % playerId
        if token is not None:
            req += "/%s" % token.encode('ascii')
        server = XVM_STAT_SERVERS[randint(0, len(XVM_STAT_SERVERS) - 1)]
        (response, duration) = loadUrl(server, req)

        #response = """{"expires_at":1394834790589,"cnt":0,"_id":4630209,"status":"active","token":"84a45576-5f06-4945-a607-bbee61b4876a","__v":0,"start_at":1393625190589}"""
        #response = """{"expires_at":1394817931657,"cnt":1,"_id":2178413,"status":"inactive","start_at":1393608331657}"""
        #response = """{"expires_at":1394817931657,"cnt":3,"_id":2178413,"status":"badToken","start_at":1393608331657}"""

        if not response:
            #err('Empty response or parsing error')
            pass
        else:
            try:
                data = None if response in ('', '[]') else json.loads(response)
            except Exception, ex:
                err('  Bad answer: ' + response)
                data = None
    except Exception, ex:
        err(traceback.format_exc())

    return data
