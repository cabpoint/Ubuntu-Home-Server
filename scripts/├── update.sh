#!/bin/bash

echo "===== Ubuntu Home Server Update ====="
echo

echo "Updating package lists..."
sudo apt update

echo
echo "Upgrading installed packages..."
sudo apt upgrade -y

echo
echo "Removing unnecessary packages..."
sudo apt autoremove -y

echo
echo "Cleaning package cache..."
sudo apt autoclean

echo
echo "Current kernel:"
uname -r

echo
echo "System update completed successfully."
