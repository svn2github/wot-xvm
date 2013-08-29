""" xvm-stat (c) sirmax 2013 """

import json
from pprint import pprint

import BigWorld
import GUI

from gui.mods.xpm import *

from constants import *
from gameregion import region, language
from logger import log
from pinger import ping
from stats import getStat, getUserData

NO_LOG_COMMANDS = ('ping', 'log', 'getGameRegion', 'getLanguage')

class XvmStat(object):
    def __init__(self):
        pass

    def onXvmCommand(self, proxy, id, cmd, *args):
        try:
            #log("DEBUG: id=" + str(id) + " cmd=" + str(cmd) + " args=" + json.dumps(args))
            if (cmd not in NO_LOG_COMMANDS):
                log("DEBUG: cmd=" + str(cmd) + " args=" + json.dumps(args))
            res = None
            if cmd == COMMAND_LOG:
                log(*args)
            elif cmd == COMMAND_PING:
                res = json.dumps(ping())
                #res = None
            elif cmd == COMMAND_GETSCREENSIZE:
                res = json.dumps(list(GUI.screenResolution()))
            elif cmd == COMMAND_GETGAMEREGION:
                res = region
            elif cmd == COMMAND_GETLANGUAGE:
                res = language
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
            proxy.movie.invoke(('xvm.respond', [id, res]))
        except:
            pass

    def onKeyDown(self, event):
        # do not handle keys when chat is active
        #from messenger import MessengerEntry
        #if MessengerEntry.g_instance.gui.isFocused():
        #    return False
        #key = event.key
        #if event.isKeyDown() and not event.isRepeatedEvent():
        #    #log("key=" + str(key))
        #    #return True
        #    pass
        return True

g_xvm = XvmStat()

from . import XPM_MOD_VERSION, XPM_MOD_URL, XPM_GAME_VERSIONS
log("xvm-stat %s (%s) for WoT %s" % (XPM_MOD_VERSION, XPM_MOD_URL, ", ".join(XPM_GAME_VERSIONS)))
