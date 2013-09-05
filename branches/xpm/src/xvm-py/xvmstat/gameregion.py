""" xvm-stat (c) sirmax 2013 """

import ResMgr
from gui import VERSION_FILE_PATH

#############################
# Public

region = ResMgr.openSection(VERSION_FILE_PATH).readString('meta/localization')
region = region[region.find(" ")+1:]

language = "ru" # TODO
