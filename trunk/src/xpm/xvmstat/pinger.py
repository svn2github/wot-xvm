""" xvm-stat (c) sirmax 2013 """

#############################
# Command

def ping(proxy):
    _ping.ping(proxy)

#############################
# Private

import traceback
import threading
import os
import re
from subprocess import Popen, PIPE, STARTUPINFO, STARTF_USESHOWWINDOW, SW_HIDE
from Queue import Queue

import BigWorld
from predefined_hosts import g_preDefinedHosts

from logger import *
from constants import *

#############################

"""
NOTE: BigWorld.WGPinger can crash client, and it is blocking operation. Don't use it.
NOTE: ICMP requires root privileges. Don't use it.
"""
class _Ping(object):

    def __init__(self):
        self.listeners = []
        self.lock = threading.RLock()
        self.thread = None
        self.resp = None
        pass


    def ping(self, proxy):
        if proxy not in self.listeners:
            self.listeners.append(proxy)
        with self.lock:
            if self.thread is not None:
                return
        self.thread = threading.Thread(target=self._pingAsync)
        self.thread.daemon = True
        self.thread.start()
        BigWorld.callback(0.05, self._checkResult)

    def _checkResult(self):
        with self.lock:
            #debug("checkResult: " + ("no" if self.resp is None else "yes"))
            if self.resp is None:
                BigWorld.callback(0.05, self._checkResult)
                return
            try:
                self._respond()
            except Exception, ex:
                err('_checkResult() exception: ' + traceback.format_exc(ex))
            finally:
                self.thread = None

    def _respond(self):
        #debug("respond: " + data)
        try:
            strdata = json.dumps(self.resp)
            for proxy in self.listeners:
                if proxy and proxy.component and proxy.movie:
                    proxy.movie.invoke((RESPOND_PINGDATA, [strdata]))
        finally:
            self.listeners = []

    # Threaded

    def _pingAsync(self):
        try:
            if os.name == 'nt':
                args = 'ping -n 1 -w 1000 '
                # ����� �� 178.20.235.151: ����� ����=32 �����=23�� TTL=58
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
                    err('Ping regexp not found in %s' % out.replace('\n', '\\n'))
                    continue

                res[x.name] = found.group(1)

            with self.lock:
                self.resp = res
        except:
            with self.lock:
                self.resp = {"Error":""}

_ping = _Ping()