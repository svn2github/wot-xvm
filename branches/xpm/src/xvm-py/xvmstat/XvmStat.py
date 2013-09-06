""" xvm-stat (c) sirmax 2013 """

import json
import traceback
import os
import glob

import BigWorld
import GUI

from gui.mods.xpm import *

from constants import *
from logger import *
from gameregion import *
from pinger import *
from stats import getBattleStat, getUserData

NO_LOG_COMMANDS = (
  COMMAND_LOG,
  COMMAND_PING,
  COMMAND_GETMODS,
  COMMAND_GETSCREENSIZE,
  COMMAND_GETGAMEREGION,
  COMMAND_GETLANGUAGE,
  )

class XvmStat(object):
    def __init__(self):
        pass

    def onXvmCommand(self, proxy, id, cmd, *args):
        try:
            #debug("id=" + str(id) + " cmd=" + str(cmd) + " args=" + json.dumps(args))
            if (cmd not in NO_LOG_COMMANDS):
                debug("cmd=" + str(cmd) + " args=" + json.dumps(args))
            res = None
            if cmd == COMMAND_LOG:
                log(*args)
            elif cmd == COMMAND_PING:
                res = json.dumps(ping())
            elif cmd == COMMAND_GETMODS:
                res = self.getMods()
            elif cmd == COMMAND_GETSCREENSIZE:
                res = json.dumps(list(GUI.screenResolution()))
            elif cmd == COMMAND_GETGAMEREGION:
                res = region
            elif cmd == COMMAND_GETLANGUAGE:
                res = language
            elif cmd == COMMAND_LOADBATTLESTAT:
                getBattleStat(proxy, id, args)
            elif cmd == COMMAND_LOADUSERDATA:
                getUserData(proxy, *args)
            elif cmd == COMMAND_LOAD_SETTINGS:
                pass # TODO
            elif cmd == COMMAND_SAVE_SETTINGS:
                pass # TODO
            else:
                err("unknown command: " + str(cmd))
            proxy.movie.invoke(('xvm.respond', [id, res]))
        except Exception, ex:
            err(traceback.format_exc(ex))

    def onKeyDown(self, event):
        # do not handle keys when chat is active
        #from messenger import MessengerEntry
        #if MessengerEntry.g_instance.gui.isFocused():
        #    return False
        #key = event.key
        #if event.isKeyDown() and not event.isRepeatedEvent():
        #    #debug("key=" + str(key))
        #    #return True
        #    pass
        return True

    def getMods(self):
        mods_dir = "res_mods/xvm/mods"
        if not os.path.isdir(mods_dir):
            return None
        mods = []
        for m in glob.iglob(mods_dir + "/*.swf"):
            mods.append(m.replace('\\', '/'))
        return json.dumps(mods) if mods else None


g_xvm = XvmStat()

from . import XPM_MOD_VERSION, XPM_MOD_URL, XPM_GAME_VERSIONS
log("xvm-stat %s (%s) for WoT %s" % (XPM_MOD_VERSION, XPM_MOD_URL, ", ".join(XPM_GAME_VERSIONS)))
if IS_DEVELOPMENT:
  log("$Id$")
