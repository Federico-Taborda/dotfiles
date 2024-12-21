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

# Python test runner
pip install -U pytest

# Python package manager
sudo apt install python3-pip

# <-- Customization applications -->

# CLI time application
#sudo apt install tty-clock

# Visualizer audio application
#sudo apt install cava

# Color scheme generator
#sudo apt install imagemagick imagemagick-6.q16
#sudo pip3 install pywal
 

# Application searchers
#sudo apt install rofi
#sudo add-apt-repository universe -y && sudo add-apt-repository ppa:agornostal/ulauncher -y && sudo apt update && sudo apt install ulauncher