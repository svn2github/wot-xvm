#!/bin/sh

cd $(dirname $0)

if [ "$OS" = "Windows_NT" ]; then
  #VER="0.8.7"
  VER="0.8.8 Common Test"

  python_exe="/cygdrive/c/Python26/python.exe"
  WOT_ROOT=/cygdrive/d/work/games/WoT-CT
else
  python_exe="python2.6"
fi

clear()
{
  rm -rf "../../bin/xpm"
}

build()
{
  echo "Build: $1"
  f=${1#*/}
  d=${f%/*}
  [ "$d" = "$f" ] && d=""

  "$python_exe" -c "import py_compile; py_compile.compile('$1')"
  [ ! -f $1c ] && exit
  
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

for dir in $(find . -type "d" ! -path "./xpm*" ! -path "."); do
  echo "# This file was created automatically from build script" > $dir/__version__.py
  echo "__revision__ = '`cd $dir && svnversion -n .`'" >> $dir/__version__.py
done

for fn in $(find . -type "f" -name "*.py"); do
  f=${fn#./}
  m=${f%%/*}
  if [ "$m" = "xpm" ]; then
    build $f 
  else
    build $f mods/$m
  fi
done

if [ "$OS" = "Windows_NT" ]; then
  run()
  {
    rm -rf "$WOT_ROOT/res_mods/$VER/scripts"
    cp -R ../../bin/xpm/scripts "$WOT_ROOT/res_mods/$VER"
    sh "../../utils/test.sh" --no-deploy
  }

  run
fi
