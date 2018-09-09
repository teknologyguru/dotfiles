#!/bin/bash
# Update script for Ubuntu machines
echo "$(tput setaf 2)apt-get update:$(tput sgr 0)"
sudo apt-get update
echo "$(tput setaf 2)apt upgrade:$(tput sgr 0)"
sudo apt upgrade
echo "$(tput setaf 2)apt dist-upgrade:$(tput sgr 0)"
sudo apt dist-upgrade
echo "$(tput setaf 2)apt autoremove:$(tput sgr 0)"
sudo apt autoremove
echo "$(tput setaf 2)fstrim:$(tput sgr 0)"
sudo fstrim -a -v
