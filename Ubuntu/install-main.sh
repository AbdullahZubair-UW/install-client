#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

printf "\n${WHITE}==============================================================================

Getting Ready to Setup New Ubuntu Device.....

==============================================================================${NORMAL}\n"
# Ensure Shell is ZSH
printf "\n${MAGENTA}Script assumes shell is ZSH... :${NORMAL}\n"
printf "\n${BLUE}Is your shell ZSH ? ${NORMAL}\n"
read answer
YES="yes"
NO="no"
if [$answer == NO]; then
printf "\n${MAGENTA}Switch your terminal to ZSH and restart the script${NORMAL}\n"
  exit 1
else 
  continue
fi 

# Install Ubuntu Packages
printf "\n${MAGENTA}Installing apt packages...${NORMAL}\n"
eval "sh install_apt_packages.sh"

# Install Ubuntu Packages
printf "\n${MAGENTA}Installing snap packages...${NORMAL}\n"
eval "sh install_snap_packages.sh"

# Install Oh My Zsh
printf "\n${BLUE}Installing Oh My Zsh...${NORMAL}\n"
eval "sh -c '$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'"

  # Clone corresponding plugin repos
  printf "\n${BLUE}Cloning Oh My Zsh Plugins...${NORMAL}\n"
  eval "sh zsh-plugins.sh"

# Remove a .zshrc file
eval "rm -rf .zshrc"

# Get your SSH keys
printf "\n${BLUE} Getting your SSH keys ... ${NORMAL}\n"
eval "sh getSSHkeys.sh"








#Clone dot files


