#!/bin/bash

DISK="/dev/sda"
ROOT_PARTITION="${DISK}1"
SWAP_PARTITION="${DISK}2"
SWAP_SIZE="16G"

# Create partition table
parted --script -- "$DISK" mklabel msdos

# Get total disk size in MiB
DISK_SIZE=$(lsblk -b -n -o SIZE "$DISK")
DISK_SIZE_MIB=$((DISK_SIZE / 1024 / 1024))

# Convert swap size to MiB
SWAP_SIZE_MIB=$((16 * 1024))

# Calculate root partition size, ensuring alignment
ROOT_SIZE_MIB=$((DISK_SIZE_MIB - SWAP_SIZE_MIB))

# Create root partition aligned at 1MiB
parted --script -- "$DISK" mkpart primary ext4 1MiB "${ROOT_SIZE_MIB}MiB"

# Ensure swap starts at an aligned boundary
SWAP_START_MIB=$(( (ROOT_SIZE_MIB + 1) / 2 * 2 ))  # Round up to the nearest even MiB

# Create swap partition
parted --script -- "$DISK" mkpart primary linux-swap "${SWAP_START_MIB}MiB" 100%

# Set bootable flag on root partition
parted --script -- "$DISK" set 1 boot on

# Format partitions
mkfs.ext4 -F "$ROOT_PARTITION"
mkswap "$SWAP_PARTITION"
swapon "$SWAP_PARTITION"

# Mount root partition
mount "$ROOT_PARTITION" /mnt

# Display partition table
parted -s "$DISK" print