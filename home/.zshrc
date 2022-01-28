ZSH_THEME="alanpeabody"
CASE_SENSITIVE="true"
plugins=(
	colored-man-pages
	zsh-autosuggestions
	zsh-syntax-highlighting
    fzf
)
source $ZSH/oh-my-zsh.sh
bindkey '^ ' autosuggest-accept
pfetch 

#-- Configs
alias bspwmrc='vim /home/frostlin/.config/bspwm/bspwmrc'
alias zshrc='vim /home/frostlin/.zshrc'
alias picomrc='vim /home/frostlin/.config/picom/picom.conf'
alias xinitrc='vim /home/frostlin/.xinitrc'
alias keyrc='vim /home/frostlin/.config/sxhkd/sxhkdrc'
alias vimrc='vim /home/frostlin/.config/nvim/init.vim'
alias alacrittyrc='vim /home/frostlin/.config/alacritty/alacritty.yml'
alias barrc='vim /home/frostlin/.config/polybar/config'

#-- Pacman 
alias p='sudo pacman -S'
alias pr='sudo pacman -Rsn'
alias pu='sudo pacman -Syu'

#-- Misc
alias font='setfont ter-132n'
alias mkdir="mkdir -pv"
alias egs="legendary"
alias wname="xprop WM_NAME WM_CLASS"
alias r='ranger'
alias sr='sudo ranger'
alias img2asc='ascii-image-converter'
alias cm='cmatrix -u 3 -C cyan -s'
alias ls='exa -la'
alias :q='exit'
alias q='exit'
alias please='sudo'
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

