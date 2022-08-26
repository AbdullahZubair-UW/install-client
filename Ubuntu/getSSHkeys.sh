#!/bin/bash

# Getting SSH keys from SSD
printf "\n${BLUE} Is your SSD plugged in ? :${NORMAL}\n"
read answer

# Mount SSD 
printf "\n${BLUE}Making mount point and mounting SSD ....${NORMAL}\n"
eval "sudo mkdir /media/az/SamsungSSD"
eval "sudo mount /dev/sdb2 /media/az/SamsungSSD"

# Copying SSH keys 
printf "\n${BLUE}Copying SSH keys ....${NORMAL}\n"
eval "sudo cp -r /media/az/SamsungSSD/.ssh ."

# Settings Permissions on SSH keys 
printf "\n${BLUE}Settings Permissions on SSH keys ....${NORMAL}\n"
eval "chmod 700 ~/.ssh/ && chmod 644 ~/.ssh/id_rsa.pub && chmod 600 ~/.ssh/id_rsa"
