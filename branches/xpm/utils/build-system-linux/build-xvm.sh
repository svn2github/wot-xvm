#!/bin/bash

#XVM builder for Linux
#Part of XVM build system
#Do not change anything in this file if you are not sure

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

cp -f ../../release/*.swf ../../temp/"$wot_version"/gui/flash/
cp -rf ../../bin/* ../../temp/"$wot_version"/gui/scaleform/
rm -rf ../../release/*.swf
cp -rf ../../release/ ../../temp/xvm/
mv -f ../../temp/xvm/xvm.xc.sample ../../temp/xvm/xvm.xc

echo "$revision" >> ../../temp/"$revision"
pushd ../../temp/ > /dev/null && zip -9 -r -q "$revision".zip ./ && popd > /dev/null

rm -rf ../../bin/*
mv -f ../../temp/"$revision".zip ../../bin/
rm -rf ../../temp/

