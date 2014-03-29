#!/bin/bash

# XVM Gettext to JSON localization files converter
# Part of XVM translation server
# Do not change anything if you are not sure in it

# Author : Michael Pavlyshko <mixail@by-reservation.com>
# License: GPLv3

# Usage: ./po2json.sh <source dir> <target dir>

if test -z "$1" 
    then
        sdir='../../temp'
    else
        sdir="$sdir"
fi

if test -z "$2" 
    then
        tdir='../../release/l10n'
    else
        tdir="$2"
fi

rm -rf $tdir/*
mkdir -p $tdir/
cp -r $sdir/* $tdir/

files=$(find $tdir/ -type f -name *.po -o -name *.pot)

for file in $files
do
        if [[ "$file" == *".po" ]];
        then
                po2csv --progress=none --columnorder=location,target $file $file.xc
        else
                cp $file $file.po
                po2csv --progress=none --columnorder=location,source $file.po $file.xc
                rm $file.po
        fi

        #del first line
        sed -i '1d' $file.xc

        #change field delimiter        
        sed -i 's|","|": "|g' $file.xc

        #add trailing ,
        sed -i 's/.$/,/' $file.xc
        sed -i '$s/,$//' $file.xc
        
        # unescape \n
        sed -i 's/\\\\/\\/g' $file.xc   

        #add file header
        ed -s $file.xc << 'EOF'
0a
{
  "locale": {
.
$a
  }
}
.
w
EOF

        filepath=$(dirname $file)
        filename=$(basename $filepath)
        mv $file.xc $tdir/"$filename".xc
        rm $file
        rm -rf $filepath
done
