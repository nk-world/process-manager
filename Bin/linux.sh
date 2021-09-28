#!/bin/bash

# Process Manager for linux (may not work properly)

sudo apt install wine
sudo dnf install wine
sudo pacman -S wine

cd install
wine Launch.exe
exit
