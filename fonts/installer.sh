#!/bin/bash

# ===========
PASS='\033[0;32m ✔\033[0m'
FAIL='\033[0;31m ✘\033[0m'
BLUE='\033[0;34m'
CLEAR='\033[0m'
# ============

echo -e "\n$BLUE San Francisco and New York font installer $CLEAR"
echo
while IFS=  read -r -d $'\0'; do
    sudo installer -store -pkg "$REPLY" -target / > /dev/null 2>&1
    THIS=$(echo ${REPLY##*/} | sed 's/.pkg$//g')
    [[ $? -eq 0 ]] && echo -e $PASS $THIS || echo -e $FAIL $THIS
done < <(find $(pwd) -type f -name "*.pkg" -print0)