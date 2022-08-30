#!/bin/sh

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

# Installing Dependencies 
printf "\n${BLUE}Installing dependencies for i3lock-color...${NORMAL}\n"
sudo apt install autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev \
libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util-dev libxcb-xrm-dev \
libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev

# Building and Installing i3lock-color
printf "\n${BLUE}Building and Installing i3lock-color...${NORMAL}\n"
git clone git@github.com:AbdullahZubair-UW/i3lock-color.git ~/i3lock-color
sh ~/i3lock-color/install-i3lock-color.sh


