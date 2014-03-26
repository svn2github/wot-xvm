#!/bin/bash

rm -rf ../../temp/
mkdir -p ../../temp/
cp ../../release/l10n/* ../../temp/
files=$(find ../../temp/ -type f -name *.xc)

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

cp ../../temp/en.xc ../../temp/en.xc.o

for file in $files
do
        mono xvm.langmerger.exe ../../temp/en.xc.o $file $file.csv
        csv2po --progress=none --columnorder=source,target $file.csv $file.po

        filename=$(basename $file .xc)
        mkdir -p ../../temp/$filename/
        mv $file.po ../../temp/$filename/xvm.po

        rm $file
        rm $file.csv
done
 
rm ../../temp/en.xc.o
