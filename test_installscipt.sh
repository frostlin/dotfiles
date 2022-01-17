#!/bin/bash
# update system
sudo pacman -Syu

# install general utilities
sudo pacman -S --needed base-devel xorg xorg-apps xorg-xinit bspwm sxhkd rofi dunst curl wget openssh openvpn git vim ranger htop alacritty zsh ueberzug telegram-desktop qbittorrent feh noto-fonts-cjk noto-fonts-emoji noto-fonts nmap mpv jp2a flameshot ffmpeg atool unrar unzip p7zip highlight ffmpegthumbnailer fzf exa f2fs-tools exfatprogs dosfstools arc-icon-theme xsettingsd man terminus-font light

# install aur helper
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -srci paru

# install aur packages
paru -S --needed polybar vk-messenger brave-bin pfetch dragon-drag-and-drop ttf-freefont ttf-ms-fonts ttf-linux-libertine ttf-dejavu ttf-inconsolata ttf-ubuntu-font-family discord-canary obs-studio-tytan652 fluent-cursor-theme-git zafiro-icon-theme

# change default shell to zsh
chsh -s /usr/bin/zsh

# install zsh plugins and themes
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# install ranger plugins
cd ~/.config/ranger/plugins
git clone https://github.com/maximtrp/ranger-archives.git
cd ~
#https://github.com/IBM/plex
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

