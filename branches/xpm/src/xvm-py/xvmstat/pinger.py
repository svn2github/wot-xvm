""" xvm-stat (c) sirmax 2013 """

from pprint import pprint
import traceback

import BigWorld
from predefined_hosts import g_preDefinedHosts

from logger import log

#############################
# Command

def ping():
    try:
        # TODO: WGPinger is blocking operation. Replace with ICMP pinger?
        # TODO: WGPinger can crash client
        g_preDefinedHosts._PreDefinedHostList__ping()
        hosts = g_preDefinedHosts._hosts;
        pings = g_preDefinedHosts._PreDefinedHostList__pingResult
        res = dict(map(lambda x: (x.name, pings[x.url] if x.url in pings else "?"), hosts))
        return res
        #return None
    except Exception, ex:
        log('ERROR: ping() exception: ' + str(ex) + "\n" + traceback.format_exc(ex))
        return None
