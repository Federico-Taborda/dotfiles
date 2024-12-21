#!/bin/bash

# Install zsh
sudo apt update

# Install zsh
sudo apt install zsh
chsh $USER -s /bin/zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt install neofetch

# <-- Development applications -->
sudo apt update

# Python package manager
sudo apt install python3-pip

# Python test runner
pip install -U pytest

# TLDR Pages
sudo apt install tldr
tldr -u

# <-- Applications -->

# Install Brave browser
curl -fsS https://dl.brave.com/install.sh | sh

# <-- Customization applications -->

# Icon theme
sudo add-apt-repository ppa:papirus/papirus
sudo apt update
sudo apt install papirus-icon-theme

# CLI time application
sudo apt install tty-clock

# Visualizer audio application
#sudo apt install build-essential libfftw3-dev libasound2-dev libpulse-dev libtool automake libiniparser-dev libsdl2-2.0-0 libsdl2-dev libpipewire-0.3-dev libjack-jackd2-dev pkgconf
#sudo apt install cava

# Color scheme generator
#sudo apt install imagemagick imagemagick-6.q16
#sudo pip3 install pywal
 
# Application searchers
#sudo apt install rofi
#sudo add-apt-repository universe -y && sudo add-apt-repository ppa:agornostal/ulauncher -y && sudo apt update && sudo apt install ulauncher

# <-- System applications -->

# System monitor
sudo apt install btop

# Memory debugging tool
sudo apt install valgrind