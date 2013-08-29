#!/bin/bash

#XVM .swf builder for Linux
#Part of XVM build system
#Do not change anything in this file if you are not sure

sdkfolder="/opt/apache-flex-4.10"
projects=(
        'xvm'
       )

pushd ../../../src/xvm/ > /dev/null
#you need to "git clone git://github.com/nexussays/playerglobal.git $sdkfolder/frameworks/libs/player" first
export PLAYERGLOBAL_HOME=$sdkfolder/frameworks/libs/player 
export PATH=$PATH:../../utils/build-system-linux/bin/

for (( i=0; i<${#projects[@]}; i++ ));
  do
    mono ../../utils/build-system-linux/bin/fdbuild-as3.exe -compiler:"$sdkfolder" -cp:"" "${projects[$i]}.as3proj"
  done

rm -rf obj
popd > /dev/null
