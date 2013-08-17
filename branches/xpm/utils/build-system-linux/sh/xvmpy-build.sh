#!/bin/bash

#XVM-python builder for Linux
#Part of XVM build system
#Do not change anything in this file if you are not sure

mkdir -p ../../../bin/
rm -rf ../../../bin/*

pushd ../../../src/xvm-py/ > /dev/null

clear()
{
  rm -rf "../../bin/xpm"
}

build()
{
  python -c "import py_compile; py_compile.compile('$1')"
  if [ ! -f $1c ]; then
    exit
  fi
  f=${1#*/}
  d=${f%/*}
  [ "$d" = "$f" ] && d=""
  if [ -z "$2" ]; then
    mkdir -p "../../bin/xpm/scripts/client/gui/$d"
    cp $1c "../../bin/xpm/scripts/client/gui/${f}c"
  else
    mkdir -p "../../bin/xpm/scripts/client/gui/$2/$d"
    cp $1c "../../bin/xpm/scripts/client/gui/$2/${f}c"
  fi
  rm -f $1c
}

clear

for fn in $(find . -name "*.py"); do
  f=${fn#./}
  m=${f%%/*}
  if [ "$m" = "xpm" ]; then
    build $f 
  else
    build $f mods/$m
  fi
done

popd > /dev/null
