#!/bin/sh

if [ "$OS" = "Windows_NT" ]; then
    compc="$PROGRAMFILES/FlashDevelop/Tools/flexsdk/bin/compc.exe"
else
    compc="compc"
fi

classes="
Xvm
net.wg.infrastructure.events.LoaderEvent
"

"$compc" -source-path xvm/src -source-path xvm/wg -output lib/xvm.swc -include-classes $classes
