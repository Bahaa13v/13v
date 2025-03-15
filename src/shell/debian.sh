#!/bin/bash

mkdir ../gits && cd ../gits
git clone https://github.com/bahaa13v/debian.git
cd debian && chmod +x debian.sh
bash debian.sh
