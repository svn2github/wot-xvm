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
net.wg.gui.login.impl.LoginPage
"

"$compc" -source-path wg -output lib/wg.swc -include-classes $classes
