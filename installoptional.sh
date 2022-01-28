#!/bin/bash
# update system
sudo pacman -Syu

sudo pacman -S --needed telegram-desktop qbittorrent
paru -S --needed vk-messenger dragon-drag-and-drop discord-canary

# Install vim configs
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
#sh ~/.vim_runtime/install_basic_vimrc.sh

# Install nerd fonts 
git clone --depth=1 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts 
./install.sh
cd ..
rm -rf nerd-fonts

