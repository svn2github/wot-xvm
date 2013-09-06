#!/bin/bash

#XVM builder for Linux
#Part of XVM build system
#Do not change anything in this file if you are not sure

#0. Define Flex SDK path
export FLEXSDK="/opt/adobe-flex-4.6"

#1. Detect revision
pushd ../../ > /dev/null
revision=$(svnversion | head -c 4)
popd > /dev/null

#2. Detect WoT version
pushd config/ > /dev/null
wot_version=$(cat wot_version)
popd > /dev/null

#3. Build
pushd sh > /dev/null
./xvm-build.sh
popd > /dev/null

#4. Copy swfs,config,l10n,docs etc.
mkdir -p ../../temp/"$wot_version"/gui/flash
mkdir -p ../../temp/"$wot_version"/gui/scaleform

cp -f ../../bin/as3/*.swf ../../temp/"$wot_version"/gui/flash/
rm -rf ../../bin/as3/

cp -rf ../../bin/* ../../temp/"$wot_version"/gui/scaleform/

cp -rf ../../release/ ../../temp/xvm/
rm -rf ../../release/*.swf

mv -f ../../temp/xvm/xvm.xc.sample ../../temp/xvm/xvm.xc

echo "$revision" >> ../../temp/"$revision"
pushd ../../temp/ > /dev/null && zip -9 -r -q "$revision"_xvm_flex4.6.zip ./ && popd > /dev/null

rm -rf ../../bin/*
mv -f ../../temp/"$revision"_xvm_flex4.6.zip ../../bin/
rm -rf ../../temp/
