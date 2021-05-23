#! /usr/bin/bash

sudo pacman -S wpa_supplicant wireless_tools networkmanager

# UI support packages
sudo pacman -S nm-connection-editor network-manager-applet

sudo systemctl enable NetworkManager.service
sudo systemctl disable dhcpcd.service
sudo systemctl enable wpa_supplicant.service
sudo systemctl start NetworkManager.service

sudo reboot

# CLI

# Get the list of networks that are nearby your system
# nmcli device wifi list

# Can connect to a network using
# nmcli device wifi connect <SSID> password <SSID_password>

# Show connected network details
# nmcli connection show

# Reload using CLI
# sudo nmcli connection reload

# GUI
# nmtui
