#!/bin/sh

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

# Copying fonts
printf "${GREEN} Copying fonts to user/share/fonts/......${NORMAL}\n\n"
sudo cp -r ~/install-client/Ubuntu/fonts/ /usr/share/fonts/ 


