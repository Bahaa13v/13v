#!/bin/bash

sudo pacman -Sy
sudo pacman -S git
mkdir gits && cd gits
git clone https://github.com/Bahaa13v/Arch.git
cd Arch && chmod +x *
bash Arch.sh
