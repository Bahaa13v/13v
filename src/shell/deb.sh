#!/bin/bash

sudo apt update
sudo apt install git
mkdir gits && cd gits
git clone https://github.com/Bahaa13v/Debian.git
cd Debian && chmod +x Debian.sh
bash Debian.sh
