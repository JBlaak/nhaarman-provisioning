#!/bin/sh

sudo sh -c "echo '## PPA ###' >> /etc/apt/sources.list"

read -p "Install Google Chrome? [Y/n]:" chrome
read -p "Install git tools (git, kdiff3)? [Y/n]: " gittools
read -p "Install JDK? [Y/n]: " jdk
read -p "Install Android Studio/SDK/NDK? [Y/n]: " android
read -p "Install PHP development tools? [Y/n]: " php
read -p "Install latex tools (texstudio, texlive, texlive-math-extra)? [Y/n]: " latex
read -p "Install Spotify? [Y/n]: " spotify
read -p "Install VLC? [Y/n]: " vlc
read -p "Install Redshift? [Y/n]: " redshift
read -p "Install LTUnify? [Y/n]: " ltunify
read -p "Install BitTorrent Sync? [Y/n]: " btsync
read -p "Install brightness indicator? [Y/n]: " brightness

# Upgrade
sudo apt-get update
sudo apt-get upgrade -y

# Remove unnecessary stuffs
./uninstallations.sh

# Installations
./stuffs.sh
./chrome.sh
./gittools.sh
./jdk.sh
./android.sh
./php.sh
./latex.sh
./spotify.sh
./vlc.sh
./redshift.sh
./ltunify.sh
./btsync.sh
./brightness-indicator.sh
./zsh.sh

# Settings
./settings.sh

# kthxbai
echo "Provisioning done."

