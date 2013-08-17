#!/bin/bash

#XVM-python builder for Linux
#Part of XVM build system
#Do not change anything in this file if you are not sure

#1. Detect revision
pushd ../../ > /dev/null
revision=$(svnversion | head -c 4)
popd > /dev/null

#2. Build XVM-python
pushd sh > /dev/null
./xvmpy-build.sh
popd > /dev/null

#3. Build zips
echo "$revision" >> ../../bin/xpm/"$revision"
pushd ../../bin/xpm > /dev/null && zip -9 -r -q "$revision"_xvmpy.zip ./ && popd > /dev/null

#4 move&clean
mv ../../bin/xpm/"$revision"_xvmpy.zip ../../bin/"$revision"_xvmpy.zip 
rm -rf ../../bin/xpm/
