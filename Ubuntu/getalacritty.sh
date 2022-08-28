#!/bin/sh

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

# Installing Alacritty
sudo add-apt-repository ppa:aslatter/ppa
sudo apt update
sudo apt install alacritty
