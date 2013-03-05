#!/bin/sh

[ "$GAME_VER" = "" ] && GAME_VER="0.8.4"
#[ "$GAME_VER" = "" ] && GAME_VER="0.8.4 Common Test"
[ "$WOT_DIRECTORY" = "" ] && WOT_DIRECTORY=/cygdrive/d/work/games/WoT

FILES="
  battle.swf
  battleloading.swf
  FinalStatistic.swf
  Minimap.swf
  PlayersPanel.swf
  StatisticForm.swf
  TeamBasesPanel.swf
  TeamMemberRenderer.swf
  TeamRenderer.swf
  UserInfo.swf
  VehicleMarkersManager.swf
  lobby_messenger.swf
  XVM.xvmconf XVM.css OTMData.xml"

cd $(dirname $(realpath $(cygpath --unix $0)))

SWF_DIR="$WOT_DIRECTORY/res_mods/$GAME_VER/gui/flash"

mkdir -p "$SWF_DIR"

copy_file()
{
  [ -f "$SWF_DIR/$1" ] && rm -f "$SWF_DIR/$1"
  [ -f "../bin/$1" ] && {
    echo "=> $1"
    cp -p "../bin/$1" "$SWF_DIR/${1##*/}"
  }
}

for file in $FILES; do
  copy_file $file
done
