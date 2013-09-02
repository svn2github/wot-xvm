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

frswc="$FLEXSDK/frameworks/libs/framework.swc"

classes="
Xvm
"

"$compc" \
    -framework="$FLEXSDK/frameworks" \
    -source-path xvm \
    -library-path=lib/wg.swc \
    -library-path="$frswc" \
    -output lib/xvm.swc \
    -include-classes $classes
