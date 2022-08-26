#!/bin/bash

RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

# Clone Oh My ZSH repos
printf "${GREEN} Cloning zsh-syntax-highlighting...${NORMAL}\n\n"
eval "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"

printf "${GREEN} Cloning zsh-autosuggestions...${NORMAL}\n\n"
eval "git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

printf "${GREEN} Cloning and installing fzf...${NORMAL}\n\n"
eval "git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install"
