#!/usr/bin/env bash

# Check if running as root
if [ $UID = 0 ]
then
    echo "Please don't run this script as root, it's not good for you"
    exit
fi

# Variables
output=$HOME/research/sys_info.txt
ip=$(ip addr | head -9 | tail -1)
full_perms=$(sudo find /home -type f -perm 777)

#mkdir -p ~/research
if [ ! -d ~/research ]
then
    mkdir ~/research
fi
