#! /usr/bin/bash

sudo pacman -Sy netbeans discord htop libreoffice-still lutris openshot rhythmbox steam base-devel atom handbrake git gitg gnome-keyring libsecret seahorse

# Download Whatsapp for linux off of the manjaro software store

git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si

trizen visual-studio-code-bin bluejeans zoom elementary-planner

# Setup Github 2fa with gnome-keyring
# https://marklodato.github.io/2013/10/25/github-two-factor-and-gnome-keyring.html
