#!/bin/sh

#find . -type f -name "*.pkg" -execdir sh -c "sudo installer -pkg '{}' -target /;" \;

PATH=$(pwd)
FONTS=$(find .$PATH -type f -name "*.pkg")

for font in ${FONTS}
do
    echo $fone
done
