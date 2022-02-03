#!/bin/bash
# update system
sudo pacman -Syu

# install general utilities
sudo pacman -S --needed base-devel xorg xorg-apps xorg-xinit vim wget curl git bspwm picom sxhkd rofi openssh ranger htop alacritty zsh ueberzug feh mpv flameshot atool unrar unzip p7zip highlight ffmpegthumbnailer f2fs-tools exfatprogs dosfstools man terminus-font alsa-utils perl-image-exiftool

# install aur helper
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -srci paru
cd ..
rm -rf paru

# install aur packages
paru -S --needed polybar brave-bin pfetch go-md2man
# change default shell to zsh
chsh -s /usr/bin/zsh

# install oh-my-zsh and plugins themes
curl -L http://install.ohmyz.sh | sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install ranger plugins
git clone https://github.com/maximtrp/ranger-archives.git ~/.config/ranger/plugins/ranger-archives
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

mkdir -p ~/Pictures/Screenshots
mv ./wallpapers/* ~/Pictures

cd home
ln * ~/
mkdir ~/.config/{alacritty,bspwm/rofi/{bin,themes},picom,polybar,sxhkd}
ln .config/alacritty/* ~/.config/alacritty
ln .config/bspwm/bspwmrc ~/.config/bspwm/
ln .config/bspwm/bin/* ~/.local/bin
ln .config/picom/picom.conf ~/.config/picom
ln .config/polybar/* ~/.config/polybar
ln .config/ranger/* ~/.config/ranger
ln .config/rofi/bin/* ~/.config/bspwm/rofi/bin
ln .config/rofi/themes/* ~/.config/bspwm/rofi/themes
ln .config/sxhkd/sxhkdrc ~/.config/sxhkd


