""" xvm-stat (c) sirmax 2013 """

from pprint import pprint
from predefined_hosts import g_preDefinedHosts

#############################
# Command

def ping():
    try:
        g_preDefinedHosts._PreDefinedHostList__ping()
        hosts = g_preDefinedHosts._hosts;
        pings = g_preDefinedHosts._PreDefinedHostList__pingResult
        return dict(map(lambda x: (x.name, pings[x.url] if x.url in pings else "?"), hosts))
    except:
        return None
