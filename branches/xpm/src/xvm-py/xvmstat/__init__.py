""" xvm-stat (c) sirmax 2013 """

#####################################################################
# MOD INFO (mandatory)

XPM_MOD_VERSION    = "1.0.0"
XPM_MOD_URL        = "http://www.modxvm.com/"
XPM_MOD_UPDATE_URL = "http://www.modxvm.com/en/download-xvm/"
XPM_GAME_VERSIONS  = ["0.8.6", "0.8.7", "0.8.8"]

#####################################################################

import BigWorld
import GUI
import _Scaleform
from gui.Scaleform.Flash import _FuncObj
from gui.Scaleform import SCALEFORM_SWF_PATH_V3
from pprint import pprint
from gui.mods.xpm import *
from XvmStat import g_xvm
from logger import log

#####################################################################
# event handlers

def handleKeyEvent(event):
    g_xvm.onKeyDown(event)

def FlashInit(self, swf, className = 'Flash', args = None, path = SCALEFORM_SWF_PATH_V3):
    if IS_DEVELOPMENT:
        log("FlashInit: " + swf)
    movieDefinition = _Scaleform.MovieDef('../xvm/xvm.swf') # res_mods/xvm/xvm.swf
    mc = GUI.Flash(movieDefinition.createInstance())
    mc.visible = False
    mc.movie.setExternalInterfaceCallback(_FuncObj(g_xvm, 'onXvmCommand2'))
    mc.wg_inputKeyMode = 2
    self.component.addChild(mc, 'xvm')

#####################################################################
# Register events

# Early registration
#print ">>start"
from gui.Scaleform.Flash import Flash
RegisterEvent(Flash, '__init__', FlashInit)

# Delayed registration
def _RegisterEvents():
    #log(">>reg")
    #import game
    #RegisterEvent(game, 'handleKeyEvent', handleKeyEvent)

    #from Avatar import PlayerAvatar
    #RegisterEvent(PlayerAvatar, 'onEnterWorld', onEnterWorld)
    #RegisterEvent(PlayerAvatar, 'onLeaveWorld', onLeaveWorld)
    pass

BigWorld.callback(0.001, _RegisterEvents)
