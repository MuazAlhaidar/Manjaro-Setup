#! /usr/bin/bash

sudo pacman -S netbeans discord htop libreoffice-fresh lutris openshot rhythmbox steam

git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si

trizen visual-studio-code-bin bluejeans zoom elementary-planner

# Setup Github 2fa with gnome-keyring
# https://marklodato.github.io/2013/10/25/github-two-factor-and-gnome-keyring.html
