#! /usr/bin/bash
# Setup Github 2fa with gnome-keyring
# https://marklodato.github.io/2013/10/25/github-two-factor-and-gnome-keyring.html

git config --global credential.helper gnome-keyring
