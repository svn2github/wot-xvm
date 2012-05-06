#!/bin/sh

cd $(dirname $(realpath $(cygpath --unix $0)))

sh deploy.sh

[ "$WOT_DIRECTORY" = "" ] && WOT_DIRECTORY=/cygdrive/d/home/games/WoT
CURRENT_DIRECTORY=`pwd`

SAMPLE_REPLAY=markers.wotreplay

cd ${WOT_DIRECTORY}
REPLAY=${CURRENT_DIRECTORY}/../test/replays/${SAMPLE_REPLAY}
cmd /c start ./WorldOfTanks.exe `cygpath --windows $REPLAY`
#cmd /c start ./wot-xvm-proxy.exe `cygpath --windows $REPLAY`
#cmd /c start ./wot-xvm-proxy.exe /debug `cygpath --windows $REPLAY`
