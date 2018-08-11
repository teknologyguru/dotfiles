#!/bin/zsh
pacman -Qqe | grep -vx "$(pacman -Qqm)" > ~/Documents/GitHub/dotfiles/Pacman.Packages 
pacman -Qqm > ~/Documents/GitHub/dotfiles/Packages.aur
