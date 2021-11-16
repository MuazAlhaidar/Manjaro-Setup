#! /usr/bin/bash 

sudo pacman -Syu 
sudo pacman -S netbeans discord htop libreoffice-still lutris openshot rhythmbox steam base-devel atom handbrake git gitg gnome-keyring libsecret seahorse speedtest-cli jre-openjdk nodejs npm python python-pipx pycharm-community-edition kalarm clamav gimp blender appimagelauncher gnome-tweaks ntfs-3g manjaro-settings-manager lxappearance arandr qt5ct i3 powerline --noconfirm

# Download Whatsapp for linux off of the manjaro software store

# yay allows multiple package installs at the same time
yay -Syu
yay -S visual-studio-code-bin bluejeans zoom elementary-planner python-fangfrisch ttf-ms-fonts drawio-desktop libopenaptx powerline-fonts-git 

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
