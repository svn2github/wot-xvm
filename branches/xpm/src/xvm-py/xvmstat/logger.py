""" xvm-stat (c) sirmax 2013 """

import datetime
import json

from gui.mods.xpm import *
from constants import XVM_LOG_FILE_NAME

#############################
# Init

class _Logger(object):
    def __init__(self):
        self.logfile = open(XVM_LOG_FILE_NAME, "w", 2 if IS_DEVELOPMENT else 8192)

    def __del__(self):
        self.logfile.close()

    def add(self, s):
        try:
            self.logfile.write("%s: %s\n" %
                (datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'), s))
        except:
            logtrace(__file__)

_logger = _Logger()

#############################
# Command

def log(*args):
    for x in args:
        _logger.add(str(x))
