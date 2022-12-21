ZSH_THEME="af-magic"
CASE_SENSITIVE="true"
plugins=(
	colored-man-pages
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
bindkey '^ ' autosuggest-accept

pfetch 

alias todo='cat ~/todo.txt'

#-- Configs
alias bspwmrc='vim ~/.config/bspwm/bspwmrc'
alias zshrc='vim ~/.zshrc'
alias picomrc='vim ~/.config/picom/picom.conf'
alias xinitrc='vim ~/.xinitrc'
alias keyrc='vim ~/.config/sxhkd/sxhkdrc'
alias vimrc='vim ~/.vimrc'
alias alacrittyrc='vim ~/.config/alacritty/alacritty.yml'
alias barrc='vim ~/.config/polybar/config'
alias jrnlrc='vim ~/.config/jrnl/jrnl.yaml'

#-- Pacman 
alias p='sudo pacman -S'
alias pr='sudo pacman -Rsn'
alias pu='sudo pacman -Syu'
alias pi='pacman -Qi'

#-- Misc
alias font='setfont ter-132n'
alias mkdir="mkdir -pv"
alias r='ranger'
alias sr='sudo ranger'
alias :q='exit'
alias q='exit'
alias reload='source ~/.zshrc'
alias journal='jrnl --format short'
alias j='jrnl'
alias img2asc='ascii-image-converter'
alias cm='cmatrix -u 3 -C cyan -s'
alias please='sudo'
alias egs="legendary"

# git 
alias ga="git add"
alias gc="git commit -m"
alias gC="ga . && gc"
alias gs="git status"
alias gd="git diff"
alias gr="git rm"
alias grs="git restore --staged"
alias gpush="git push"
alias gpull="git pull"
alias gf="git fetch --all"
alias gi="git update-index --assume-unchanged "

alias monitors="pactl set-default-sink alsa_output.usb-FiiO_FiiO_USB_DAC_K1-01.analog-stereo;~/.config/polybar/launch.sh &"
alias headphones="pactl set-default-sink alsa_output.pci-0000_0d_00.4.analog-stereo;~/.config/polybar/launch.sh &"
