#! /usr/bin/bash

sudo pacman -Sy netbeans discord htop libreoffice-still lutris openshot rhythmbox steam base-devel atom handbrake git gitg gnome-keyring libsecret seahorse speedtest-cli jre-openjdk nodejs npm python python-pipx pycharm-community-edition

# Download Whatsapp for linux off of the manjaro software store

git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si

trizen visual-studio-code-bin bluejeans zoom elementary-planner
