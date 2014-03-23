""" xvm (c) sirmax 2013-2014 """

XVM_STAT_API_VERSION = "3.0"
XVM_STAT_SERVERS = [ "https://stat.modxvm.com:443/{API}/{REQ}" ] # TODO - config
XVM_STAT_FINGERPRINT = "46169f8bd6f743733b23066f5cce2cd3d0392af8" # fingerprint for SSL certificate
XVM_STAT_TIMEOUT = 30000 # TODO - config

COMMAND_LOG = "log"
COMMAND_PING = "ping"
COMMAND_GETMODS = "getMods"
COMMAND_GETVEHICLEINFODATA = "getVehicleInfoData"
COMMAND_GETWN8EXPECTEDDATA = "getWN8ExpectedData"
COMMAND_GETXVMSTATTOKENDATA = "getXvmStatTokenData"
COMMAND_GETSCREENSIZE = "getScreenSize"
COMMAND_GETGAMEREGION = "getGameRegion"
COMMAND_GETLANGUAGE = "getLanguage"
COMMAND_LOADBATTLESTAT = "loadBattleStat"
COMMAND_LOADBATTLERESULTSSTAT = "loadBattleResultsStat"
COMMAND_LOADUSERDATA = "loadUserData"
COMMAND_GETDOSSIER = "getDossier"
COMMAND_OPEN_URL = "openUrl"
COMMAND_LOGSTAT = "logstat";
COMMAND_LOAD_SETTINGS = "load_settings"
COMMAND_SAVE_SETTINGS = "save_settings"
COMMAND_TEST = "test"

RESPOND_PINGDATA = "xvm.pingdata"
RESPOND_BATTLEDATA = "xvm.battledata"
RESPOND_BATTLERESULTSDATA = "xvm.battleresultsdata"
RESPOND_USERDATA = "xvm.userdata"
RESPOND_DOSSIER = "xvm.dossier"

#COMMAND_GETSTAT = "getstat"
#COMMAND_LOGSTAT = "logstat"

XVM_LOG_FILE_NAME = 'xvm.log'
XVM_STAT_LOG_FILE_NAME = 'xvm-stat.log'

TEAM_ALLY = 1
TEAM_ENEMY = 2

XVM_DB_DIR = "res_mods/xvm/db"
