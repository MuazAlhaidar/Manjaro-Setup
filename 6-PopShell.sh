#! /usr/bin/bash

# src = "https://support.system76.com/articles/pop-shell/"

# Pop Shell is packaged in the AUR, but for the keyboard shortcuts to work, we will need to build it from source like we did above.

# In order to build Pop Shell from source we first need to install the build dependencies and git to clone the repository:

sudo pacman -S git typescript make

# Next we clone the repository using this command:

git clone https://github.com/pop-os/shell.git

# Now we enter the directory for Pop Shell (called “shell”) and build the package:

cd shell
make local-install
