#!/bin/bash

# XVM JSON to Gettext localization files converter
# Part of XVM translation server
# Do not change anything if you are not sure in it

# Author : Michael Pavlyshko <mixail@by-reservation.com>
# License: GPLv3

# Usage: ./json2po.sh <source dir> <target dir>

if test -z "$1" 
    then
        sdir='../../release/l10n'
    else
        sdir="$1"
fi

if test -z "$2" 
    then
        tdir='../../temp'
    else
        tdir="$2"
fi

rm -rf $tdir/
mkdir -p $tdir/
cp $sdir/* $tdir/
files=$(find $tdir/ -type f -name *.xc)

for file in $files
do
        # CRLF -> LF
        dos2unix --quiet $file    
        sed -i 's/\r$//' $file  

        # escape \n
        sed -i 's/\\/\\\\/g' $file        

        # blank and trailing
        sed -i 's/^[ \t]*//' $file
        sed -i 's/[ \t]*$//' $file
        sed -i 's/^ *//' $file
        sed -i 's/ *$//' $file

        # delete comments
        sed -i 's/^\/\/.*$//' $file

        #delete blank lines
        sed -i '/^$/d' $file
 
        # delete all before locale
        sed -i '1,/"locale":/d' $file

        # delete {}
        sed -i 's/^{//g' $file
        sed -i 's/^}//g' $file

        # delete trailing ,
        sed -i 's/,$//' $file
        
        # change columns delimiter : -> ;
        sed -i 's|": "|";"|g' $file 
done

cp $tdir/en.xc $tdir/en.xc.o

for file in $files
do
        filename=$(basename $file .xc)
        mkdir -p $tdir/$filename/

        if [[ "$file" == *"en.xc" ]];
        then
                cp $file $file.csv
                csv2po --progress=none --pot --columnorder=location,source $file.csv $file.pot
                mv $file.pot $tdir/$filename/xvm.pot

        else
                mono xvm.langmerger.exe $tdir/en.xc.o $file $file.csv
                csv2po --progress=none --columnorder=source,target $file.csv $file.po
                mv $file.po $tdir/$filename/xvm.po
        fi

        rm $file
        rm $file.csv
done
 
rm $tdir/en.xc.o
