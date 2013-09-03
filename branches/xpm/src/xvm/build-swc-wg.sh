#!/bin/sh

if [ "$OS" = "Windows_NT" ]; then
    if [ "$FLEXSDK" = "" ]; then
        MACHINE_TYPE=`uname -m`
        if [ ${MACHINE_TYPE} == 'x86_64' ]; then
            PROGRAMFILESPATH="$PROGRAMFILES (x86)"
        else
            PROGRAMFILESPATH="$PROGRAMFILES"
        fi
        FLEXSDK="$PROGRAMFILESPATH/FlashDevelop/Tools/flexsdk"
        compc="$FLEXSDK/bin/compc.exe"
    else
        compc="$FLEXSDK/bin/compc" #Apache Flex SDK has only bat and shell scripts
    fi
else
    compc="compc"
fi

classes="
App
net.wg.infrastructure.events.LoaderEvent
net.wg.infrastructure.events.LifeCycleEvent
net.wg.infrastructure.managers.impl.ContainerManager
net.wg.gui.components.common.MainViewContainer
org.idmedia.as3commons.util.StringUtils
net.wg.gui.login.impl.LoginPage
net.wg.gui.lobby.LobbyPage
net.wg.gui.lobby.header.TutorialControl
net.wg.gui.lobby.hangar.crew.Crew
net.wg.gui.lobby.hangar.crew.CrewItemRenderer
net.wg.gui.lobby.battleloading.BattleLoading
"

"$compc" -source-path wg -output lib/wg.swc -include-classes $classes
