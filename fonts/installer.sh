#!/bin/bash

# ===========
PASS='\033[0;32m ✔\033[0m'
FAIL='\033[0;31m ✘\033[0m'
BLUE='\033[0;34m'
CLEAR='\033[0m'
# ============

echo -e $BLUE
echo "  ___       _ _     _   _      _                 ";
echo " |_ _|_ __ (_) |_  | | | | ___| |_ __   ___ _ __ ";
echo "  | || '_ \| | __| | |_| |/ _ \ | '_ \ / _ \ '__|";
echo "  | || | | | | |_  |  _  |  __/ | |_) |  __/ |   ";
echo " |___|_| |_|_|\__| |_| |_|\___|_| .__/ \___|_|   ";
echo "                                |_|              ";
echo "=================================================";
echo -e $CLEAR

echo -e "Step 1: Font Installation"
echo -e "-------------------------"
echo -e "\n${BLUE}Installing 'San Francisco' & 'New York' Apple fonts...$CLEAR"
echo
while IFS=  read -r -d $'\0'; do
    sudo installer -store -pkg "$REPLY" -target / > /dev/null 2>&1
    THIS=$(echo ${REPLY##*/} | sed 's/.pkg$//g')
    [[ $? -eq 0 ]] && echo -e $PASS $THIS || echo -e $FAIL $THIS
done < <(find $(pwd) -type f -name "*.pkg" -print0)
