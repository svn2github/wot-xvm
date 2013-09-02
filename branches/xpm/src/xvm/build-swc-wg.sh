#!/bin/sh

if [ "$OS" = "Windows_NT" ]; then
    compc="$PROGRAMFILES/FlashDevelop/Tools/flexsdk/bin/compc.exe"
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
