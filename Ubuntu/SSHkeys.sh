#!/bin/sh

# Settings Permissions on SSH keys 
printf "\n${BLUE}Settings Permissions on SSH keys ....${NORMAL}\n"
chmod 700 ~/.ssh/ && chmod 644 ~/.ssh/id_rsa.pub && chmod 600 ~/.ssh/id_rsa
