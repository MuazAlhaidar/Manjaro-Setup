#! /usr/bin/bash
# Setup Github 2fa with gnome-keyring
# https://marklodato.github.io/2013/10/25/github-two-factor-and-gnome-keyring.html

# next time on pushing to a repo
# just enter your access token instead of password and your good
git config --global credential.helper gnome-keyring
