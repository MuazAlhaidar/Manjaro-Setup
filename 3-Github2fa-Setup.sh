#! /usr/bin/bash
# Setup Github 2fa with gnome-keyring
# https://wiki.archlinux.org/title/GNOME/Keyring#Git_integration

# next time on pushing to a repo
# just enter your access token instead of password and your good
# need to have libsecret installed
git config --global credential.helper /usr/lib/git-core/git-credential-libsecret
