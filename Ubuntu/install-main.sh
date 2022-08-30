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
printf "\n${BLUE}Configuring your shell to ZSH ${NORMAL}\n"
eval "sh ~/install-client/Ubuntu/switchZSH.sh"
printf "\n${GREEN}Shell is now ZSH, restart your shell or press <RET> to continue with installation :${NORMAL}\n"
read answer

# Install Ubuntu Packages
printf "\n${MAGENTA}Installing apt packages...${NORMAL}\n"
eval "sh ~/install-client/Ubuntu/install_apt_packages.sh"

printf "\n${GREEN}================================================== Finished Installing apt packages ===========================================================${NORMAL}\n"

# Install Ubuntu Packages
printf "\n${MAGENTA}Installing snap packages...${NORMAL}\n"
eval "sh ~/install-client/Ubuntu/install_snap_packages.sh"
printf "\n${GREEN}================================================== Finished Installing snap packages ===========================================================${NORMAL}\n"

# Changing perms on SSH keys
printf "\n${MAGENTA}Are your SSH keys loaded ?${NORMAL}\n"
read answer
eval "sh ~/install-client/Ubuntu/SSHkeys.sh"
printf "\n${GREEN}================================================== Finished setting perms on SSH Keys ===========================================================${NORMAL}\n"

# Makes a quick git alias
eval "git config --global alias.send '!git pull && git add -A && git commit -m \"normal edits\" && git push'"

# Install Oh My Zsh
printf "\n${BLUE}Installing Oh My Zsh...${NORMAL}\n"
eval "sh ~/install-client/Ubuntu/ohmyzsh.sh"
printf "\n${GREEN}================================================== Finished Installing Oh My ZSH ==========================================================${NORMAL}\n"

#Clone dot files
printf "\n${BLUE} Cloning your dotfiles ... ${NORMAL}\n"
eval "rm ~/.zshrc"
eval "sh ~/install-client/Ubuntu/getdotfiles.sh"
printf "\n${GREEN}================================================== Finished Cloning dotfiles ==========================================================${NORMAL}\n"


#Installing FZF
printf "\n${BLUE} Installing fzf, commmand-line fuzzy finder... ${NORMAL}\n"
eval "sh ~/install-client/Ubuntu/fzf.sh"
printf "\n${GREEN}================================================== Finished Installing FZF ==========================================================${NORMAL}\n"

#Install neovim by cloning from source
printf "\n${BLUE} Installing Neovim ... ${NORMAL}\n"
eval "sh ~/install-client/Ubuntu/neovim.sh"
printf "\n${GREEN}================================================== Finished Installing Neovim ==========================================================${NORMAL}\n"

# Copy over my fonts
printf "\n${BLUE} Configuring your fonts ... ${NORMAL}\n"
eval "sh ~/install-client/Ubuntu/copyfonts.sh"
printf "\n${GREEN}================================================== Finished Copying Fonts ==========================================================${NORMAL}\n"

#Install Vundle and Vim plug
printf "\n${BLUE} Installing Vundle and Vimplug for vim ... ${NORMAL}\n"
eval "git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
eval "curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
printf "\n${GREEN}================================================== Finished Installing Vundle and VimPlug ==========================================================${NORMAL}\n"




printf "\n${GREEN}=================================================================================
                  =============    Your Ubuntu System is ready. ===================================  
                  =================================================================================${NORMAL}\n"






