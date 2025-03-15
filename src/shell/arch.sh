#!/bin/bash

sudo pacman -Sy
sudo pacman -S git
mkdir gits && cd gits
git clone https://github.com/bahaa13v/arch.git
cd cd arch && chmod +x arch.sh
bash arch.sh
