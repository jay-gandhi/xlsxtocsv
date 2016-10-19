#!/bin/bash

#
# Jay Gandhi
# <i@gandhijay.com>
# October 19, 2016
#
# Takes source filepath and takes only XLSX files.
# Converts xlsx into csv using gnumeric - ssconvert
# files will be saved on destination folder.
#

for filename in $1/*.xlsx
do
  NAME=${filename##*/}
  echo $NAME
  ssconvert $filename "$2/$NAME.csv"
done
