export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"
export EDITOR="/bin/vim"
export SUDO_EDITOR="/usr/bin/vim"
ZSH_THEME="spaceship"

CASE_SENSITIVE="true"

plugins=(
	colored-man-pages
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

pfetch

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fdfind --type f'
export FXF_DEFAULT_OPTS="--layout=reverse --inline-info --height=80%"
bindkey '^ ' autosuggest-accept

alias font='setfont ter-132n'
alias bspwmrc='vim /home/frostlin/.config/bspwm/bspwmrc'
alias zshrc='vim /home/frostlin/.zshrc'
alias picomrc='vim /home/frostlin/.config/picom/picom.conf'
alias xinitrc='vim /home/frostlin/.xinitrc'
alias keyrc='vim /home/frostlin/.config/sxhkd/sxhkdrc'
alias vimrc='vim /home/frostlin/.config/nvim/init.vim'
alias alacrittyrc='vim /home/frostlin/.config/alacritty/alacritty.yml'
alias barrc='vim /home/frostlin/.config/polybar/config'
alias mkdir="mkdir -pv"
alias mnt="sudo mount"
alias umnt="sudo umount"
alias spotify="ncspot"
# mount usb
alias mnt1="mnt /dev/sdb1 /home/frostlin/mounted/flash1"
alias mnt2="mnt /dev/sdc1 /home/frostlin/mounted/flash2"
alias umnt1="umnt /dev/sdb1"
alias umnt2="umnt /dev/sdc1"

alias r='ranger'
alias sudoranger="sudo ranger -r /home/frostlin/.config/ranger"
alias p='sudo pacman -S'
alias pr='sudo pacman -Rsn'
alias pu='sudo pacman -Syu'
alias cm='cmatrix -u 3 -C cyan -s'
alias :q='exit'
alias img2asc='ascii-image-converter'
# git 
alias ga="git add"
alias gc="git commit -m"
alias gC="ga . && gc"
alias gs="git status"
alias gd="git diff"
alias gpush="git push"
alias gpull="git pull"
alias gf="git fetch --all"
alias gi="git update-index --assume-unchanged "

