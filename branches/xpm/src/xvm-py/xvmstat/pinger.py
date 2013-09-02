""" xvm-stat (c) sirmax 2013 """

from pprint import pprint
import traceback
import threading
import os
import re
from subprocess import Popen, PIPE, STARTUPINFO, STARTF_USESHOWWINDOW, SW_HIDE

import BigWorld
from predefined_hosts import g_preDefinedHosts

from logger import log

#############################

lockPing = threading.RLock()
thread = None
pingResults = None

#############################
# Command

"""
BigWorld.WGPinger can crash client, and it is blocking operation. Don't use it.
ICMP requires root privileges. Don't use it.
"""
def ping():
    try:
        g_preDefinedHosts._PreDefinedHostList__ping()
        hosts = g_preDefinedHosts._hosts;
        pings = g_preDefinedHosts._PreDefinedHostList__pingResult
        pprint(pings)
        res = dict(map(lambda x: (x.name, pings[x.url] if x.url in pings else "?"), hosts))
        return res

        global thread
        if thread is None:
            thread = threading.Thread(target=pingAsync)
            thread.daemon = True
            thread.start()

        global pingResults
        with lockPing:
            ret = pingResults

        return ret

    except Exception, ex:
        log('ERROR: ping() exception: ' + traceback.format_exc(ex))
        return None

#############################

def pingAsync():
    try:
        if os.name == 'nt':
            args = 'ping -n 1 -w 1000 '
            # Ответ от 178.20.235.151: число байт=32 время=23мс TTL=58
            pattern = '.*=.*=(\d+)[^\s].*=.*'
            env = None
            si = STARTUPINFO()
            si.dwFlags = STARTF_USESHOWWINDOW
            si.wShowWindow = SW_HIDE
        else:
            args = 'ping -c 1 -n -q '
            pattern = '[\d.]+/([\d.]+)(?:/[\d.]+){2}'
            env = dict(LANG='C')
            si = None
        res = {}
        processes = {}

        # Ping all servers in parallel
        for x in g_preDefinedHosts._hosts:
            processes[x.name] = Popen(args + x.url.split(':')[0], stdout=PIPE, env=env, startupinfo=si)

        # Parse ping output
        for x in g_preDefinedHosts._hosts:
            proc = processes[x.name]

            out, err = proc.communicate()
            errCode = proc.wait()
            if errCode != 0:
                res[x.name] = 'E:' + str(errCode)
                continue

            found = re.search(pattern, out)
            if not found:
                res[x.name] = '?'
                log('Ping regexp not found in %s' % out.replace('\n', '\\n'))
                continue

            res[x.name] = found.group(1)

        global pingResults
        with lockPing:
            pingResults = res #json.dumps(res)
            #log('Async PING results: %s' % pingResults)
    finally:
        global thread
        thread = None
