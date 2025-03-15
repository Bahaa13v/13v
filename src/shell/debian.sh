#!/bin/bash

sudo apt update
sudo apt install git
mkdir gits && cd gits
git clone https://github.com/bahaa13v/debian.git
cd Debian && chmod +x Debian.sh
bash Debian.sh
