#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

printf "\n${BLUE} Installing dependencies .... :${NORMAL}\n"
sudo pip install pynvim
sudo npm i -g neovim
sudo python3 -m pip install --user --upgrade pynvim

printf "\n${BLUE} Cloning the NeoVim rep .... :${NORMAL}\n"
git clone https://github.com/neovim/neovim.git ~/neovim
cd ~/neovim
git checkout release-0.7
make CMAKE_BUILD_TYPE=Release
sudo make install

printf "\n${BLUE} Cloning the required nerd fonts .... :${NORMAL}\n"
git clone https://github.com/ronniedroid/getnf.git ~/getnf
cd ~/getnf
./install.sh
rm -rf ~/getnf
