#!/bin/bash

# Create backup folders
mkdir -p $HOME/Escritorio/backup
mkdir -p $HOME/Escritorio/backup/config
mkdir -p $HOME/Escritorio/backup/config/xfce4/xfconf/xfce-perchannel-xml
mkdir -p $HOME/Escritorio/backup/zsh

# Copy zsh configurations
cd ~
cp .zshrc $HOME/Escritorio/backup/zsh
cp .zsh_aliases $HOME/Escritorio/backup/zsh

# Copy all configurations apps
cd ~/.config
cp -r ulauncher $HOME/Escritorio/backup/config
cp -r warp-terminal $HOME/Escritorio/backup/config
cp -r neofetch $HOME/Escritorio/backup/config
cp -r rofi $HOME/Escritorio/backup/config

# Copy panel
cp xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml $HOME/Escritorio/backup/config/xfce4/xfconf/xfce-perchannel-xml

# ZIP backup
tar -czvf $HOME/Escritorio/backup.tar.gz $HOME/Escritorio/backup