ZSH_THEME="candy"
CASE_SENSITIVE="true"
plugins=(
	colored-man-pages
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
source ~/.shell_aliases
source ~/.config/rofi/bashrc_functions

pfetch 





# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/paul/google-cloud-sdk/path.zsh.inc' ]; then . '/home/paul/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/paul/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/paul/google-cloud-sdk/completion.zsh.inc'; fi
