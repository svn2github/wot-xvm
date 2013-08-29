#!/bin/bash

#XVM builder for Linux
#Part of XVM build system
#Do not change anything in this file if you are not sure

rm -rf ../../../bin/*
rm -rf ../../../src/xvm/include/
rm -rf ../../../src/xvm/swf/*.swf

./xvm-swf-build-as3.sh
./xvm-swf-patch-as3.sh

./xvm-swf-patch-as2.sh
./xvm-swf-build-as2.sh

rm -rf ../../../src/xvm/include/
rm -rf ../../../src/xvm/swf/*.swf
