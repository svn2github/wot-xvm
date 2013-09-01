#!/bin/sh

if [ "$OS" = "Windows_NT" ]; then
    flexsdk="$PROGRAMFILES/FlashDevelop/Tools/flexsdk"
else
    flexsdk="/usr/local"
fi

compc="$flexsdk/bin/compc.exe"
frswc="$flexsdk/frameworks/libs/framework.swc"

classes="
Xvm
"

"$compc" \
    -framework="$flexsdk/frameworks" \
    -source-path xvm/src \
    -library-path=lib/wg.swc \
    -library-path="$frswc" \
    -output lib/xvm.swc \
    -include-classes $classes
