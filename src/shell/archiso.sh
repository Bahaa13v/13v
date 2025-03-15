#!/bin/bash

mkdir ../gits && cd ../gits
git clone https://github.com/bahaa13v/archiso.git
cd archiso && chmod +x *
bash archiso.sh
