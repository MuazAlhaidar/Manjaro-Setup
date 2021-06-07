#! /usr/bin/bash

# Cloning UE4
cd ~/Documents
git clone https://github.com/EpicGames/UnrealEngine.git

# Building UE4
cd UnrealEngine/
./Setup.sh
./GenerateProjectFiles.sh
make

# Launching UE4
# cd ~/Documents/UnrealEngine/Engine/Binaries/Linux
# ./UE4Editor
