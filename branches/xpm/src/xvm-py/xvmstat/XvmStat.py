""" xvm-stat (c) sirmax 2013 """

import json
from pprint import pprint

import BigWorld
import GUI
from messenger.gui import MessengerDispatcher

from gui.mods.xpm import *

from constants import *
from gameregion import region
from logger import log
from pinger import ping
from stats import getStat, getUserData

class XvmStat(object):
    def __init__(self):
        pass

    def onXvmCommand(self, proxy, id, cmd, *args):
        if (cmd not in ('ping', 'log', 'getGameRegion')):
            log("DEBUG: cmd=" + str(cmd) + " args=" + json.dumps(args))
        res = None
        if cmd == COMMAND_LOG:
            log(*args)
        elif cmd == COMMAND_PING:
            res = json.dumps(ping())
        elif cmd == COMMAND_GETSCREENSIZE:
            res = json.dumps(list(GUI.screenResolution()))
        elif cmd == COMMAND_GETGAMEREGION:
            res = region
        elif cmd == COMMAND_LOADSTATDATA:
            getStat(proxy, *args)
        elif cmd == COMMAND_LOADUSERDATA:
            getUserData(proxy, *args)
        elif cmd == COMMAND_LOAD_SETTINGS:
            pass # TODO
        elif cmd == COMMAND_SAVE_SETTINGS:
            pass # TODO
        else:
            log("WARNING: unknown command: " + str(cmd))
        proxy.respond([id, res])

    def onKeyDown(self, event):
        # do not handle keys when chat is active
        if MessengerDispatcher.g_instance.battleMessenger.isFocused():
            return
        key = event.key
        if event.isKeyDown() and not event.isRepeatedEvent():
            #log("key=" + str(key))
            #return True
            pass
        return False

from . import XPM_MOD_VERSION, XPM_MOD_URL, XPM_GAME_VERSIONS
log("xvm-stat %s (%s) for WoT %s" % (XPM_MOD_VERSION, XPM_MOD_URL, ", ".join(XPM_GAME_VERSIONS)))
