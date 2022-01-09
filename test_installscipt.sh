# update system
sudo pacman -Syu

# install general utilities
yes | sudo pacman -S curl wget openssh git vim ranger htop alacritty zsh ueberzug telegram-desktop qbittorrent feh noto-fonts-cjk noto-fonts-emoji noto-fonts nmap mpd mpc jp2a flameshot ffmpeg atool unrar unzip p7zip highlight ffmpegthumbnailer fzf exa

# install xorg and WM-related packages
yes | sudo pacman -S xorg xorg-xinit bspwm xshkd rofi dunst

# install aur helper
git pull https://aur.arhclinux.org/paru.git
cd paru
makepgk -srci paru

# install aur packages
paru -S polybar vk-messenger brave oh-my-zsh-git pfetch dragon-drag-and-drop ttf-freefont ttf-ms-fonts ttf-linux-libertine ttf-dejavu ttf-inconsolata ttf-ubuntu-font-family discord-canary
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


# set up my config files


