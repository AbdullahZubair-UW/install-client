#!/bin/sh

# Switch to ZSH
printf "\n${BLUE}Installing ZSH and using chsh to switch shell to ZSH ....${NORMAL}\n"
sudo apt install zsh
chsh -s $(which zsh)
