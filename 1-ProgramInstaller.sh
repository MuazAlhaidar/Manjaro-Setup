#! /usr/bin/bash

sudo pacman -Syu 
sudo pacman -S netbeans --noconfirm
sudo pacman -S discord --noconfirm
sudo pacman -S htop --noconfirm
sudo pacman -S libreoffice-still --noconfirm
sudo pacman -S lutris --noconfirm
sudo pacman -S openshot --noconfirm
sudo pacman -S rhythmbox --noconfirm
sudo pacman -S steam --noconfirm
sudo pacman -S base-devel --noconfirm
sudo pacman -S atom --noconfirm
sudo pacman -S handbrake --noconfirm
sudo pacman -S git --noconfirm
sudo pacman -S gitg --noconfirm
sudo pacman -S gnome-keyring --noconfirm
sudo pacman -S libsecret --noconfirm
sudo pacman -S seahorse --noconfirm
sudo pacman -S speedtest-cli --noconfirm
sudo pacman -S jre-openjdk --noconfirm
sudo pacman -S nodejs --noconfirm
sudo pacman -S npm --noconfirm
sudo pacman -S python --noconfirm
sudo pacman -S python-pipx --noconfirm
sudo pacman -S pycharm-community-edition --noconfirm
sudo pacman -S kalarm --noconfirm
sudo pacman -S clamav --noconfirm
sudo pacman -S gimp --noconfirm
sudo pacman -S blender --noconfirm
sudo pacman -S appimagelauncher --noconfirm
sudo pacman -Sy manjaro-settings-manager --noconfirm

# Download Whatsapp for linux off of the manjaro software store

git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si --noconfirm

# Have to be manually installed as trizen cant do multiple packages at the same time
trizen visual-studio-code-bin 
trizen bluejeans 
trizen zoom 
trizen elementary-planner 
trizen python-fangfrisch 
trizen ttf-ms-fonts

sudo freshclam

# Testing the clamav install
curl https://secure.eicar.org/eicar.com.txt | clamscan - | grep -q "Win.Test.EICAR_HDB-1" || (echo "Win.Test.EICAR_HDB-1 not found. Gonna die now. Also this is linux why do I need an anti-virus?" && exit)

# The output must include:
# stdin: Win.Test.EICAR_HDB-1 FOUND

# Set up Fangfrisch
# A database/signature repositorie for viruses
sudo -u clamav /usr/bin/fangfrisch --conf /etc/fangfrisch/fangfrisch.conf initdb

systemctl start clamav-freshclam.service
systemctl enable clamav-freshclam.service

# How to run clamav for a directory
# sudo clamscan -r -i DIRECTORY
# The options -r, means recursively scan and the -i means to
# only show infected files.