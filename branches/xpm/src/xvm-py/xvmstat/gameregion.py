""" xvm-stat (c) sirmax 2013 """

from pprint import pprint
import ResMgr
from gui import VERSION_FILE_PATH

#############################
# Command

region = ResMgr.openSection(VERSION_FILE_PATH).readString('meta/localization')
region = region[region.find(" ")+1:]
