#!/bin/sh

cd $(dirname $0)

WOT_ROOT=/cygdrive/d/work/games/WoT-CT
#VER="0.8.7"
VER="0.8.8 Common Test"

clear()
{
  rm -rf "../../bin/xpm"
}

build()
{
  echo "Build: $1"
  /cygdrive/c/Python26/python.exe -c "import py_compile; py_compile.compile('$1')"
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

run()
{
  #rm -rf "$WOT_ROOT/res_mods/$VER/scripts"
  cp -R ../../bin/xpm/scripts "$WOT_ROOT/res_mods/$VER"
  sh "../../utils/test.sh" --no-deploy
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

run
