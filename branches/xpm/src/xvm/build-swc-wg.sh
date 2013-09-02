#!/bin/sh

if [ "$OS" = "Windows_NT" ]; then
    if [[ -z "$FLEXSDK" ]]; then
        flexsdk="$PROGRAMFILES/FlashDevelop/Tools/flexsdk"
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
org.idmedia.as3commons.util.StringUtils
net.wg.gui.login.impl.LoginPage
net.wg.gui.lobby.LobbyPage
net.wg.gui.lobby.header.TutorialControl
"

"$compc" -source-path wg -output lib/wg.swc -include-classes $classes
