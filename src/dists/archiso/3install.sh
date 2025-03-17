#!/bin/bash

pacstrap -K /mnt base linux linux-firmware

genfstab -U /mnt >> /mnt/etc/fstab

chmod +x 4configs.sh

mv 4configs.sh /mnt/

arch-chroot /mnt /4configs.sh
