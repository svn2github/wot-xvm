#!/bin/sh

if [ "$OS" = "Windows_NT" ]; then
    flexsdk="$PROGRAMFILES/FlashDevelop/Tools/flexsdk"
    compc="$flexsdk/bin/compc.exe"
else
    compc="compc"
fi

frswc="$flexsdk/frameworks/libs/framework.swc"

classes="
Xvm
"

"$compc" \
    -framework="$flexsdk/frameworks" \
    -source-path xvm \
    -library-path=lib/wg.swc \
    -library-path="$frswc" \
    -output lib/xvm.swc \
    -include-classes $classes
