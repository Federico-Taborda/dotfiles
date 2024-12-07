#!/bin/bash

# Create backup folder
mkdir -p $HOME/Escritorio/backup
mkdir -p $HOME/Escritorio/backup/config
mkdir -p $HOME/Escritorio/backup/zsh

# Copy zsh configurations
cd ~
cp -r .zshrc $HOME/Escritorio/backup/zsh
cp -r .zsh_aliases $HOME/Escritorio/backup/zsh

# Copy all configurations
cd ~/.config
cp -r ulauncher $HOME/Escritorio/backup/config
cp -r warp-terminal $HOME/Escritorio/backup/config
cp -r neofetch $HOME/Escritorio/backup/config

