""" xvm-stat (c) sirmax 2013 """

#####################################################################
# MOD INFO (mandatory)

XPM_MOD_VERSION    = "1.0.0"
XPM_MOD_URL        = "http://www.modxvm.com/"
XPM_MOD_UPDATE_URL = "http://www.modxvm.com/en/download-xvm/"
XPM_GAME_VERSIONS  = ["0.8.6", "0.8.7", "0.8.8"]

#####################################################################

import BigWorld
from gui.mods.xpm import *
from XvmStat import XvmStat

#####################################################################
# event handlers

xvm = None

def handleKeyEvent(event):
    global xvm
    if xvm is not None:
        return xvm.onKeyDown(event)

def FlashInit(self, swf, *args):
    #log("FlashInit: " + swf)
    global xvm
    if xvm is None:
        xvm = XvmStat()
    self.addExternalCallback('xvm.cmd', lambda *args: xvm.onXvmCommand(self, *args))

#####################################################################
# Register events

# Early registration
#log(">>start")
from gui.Scaleform.Flash import Flash
RegisterEvent(Flash, '__init__', FlashInit)

# Delayed registration
def _RegisterEvents():
  #log(">>reg")
  import game
  RegisterEvent(game, 'handleKeyEvent', handleKeyEvent)

  #from Avatar import PlayerAvatar
  #RegisterEvent(PlayerAvatar, 'onEnterWorld', onEnterWorld)
  #RegisterEvent(PlayerAvatar, 'onLeaveWorld', onLeaveWorld)

BigWorld.callback(0.001, _RegisterEvents)
