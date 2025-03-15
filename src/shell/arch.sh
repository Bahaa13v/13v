#!/bin/bash

sudo pacman -Sy
sudo pacman -S git
mkdir gits && cd gits
git clone https://github.com/bahaa13v/arch.git
cd cd Dotfiles && chmod +x Dotfiles.sh
bash Dotfiles.sh
