ZSH_THEME="af-magic"
CASE_SENSITIVE="true"
plugins=(
	colored-man-pages
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
source ~/.dotfiles/.shell_aliases

pfetch 



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/run/media/paul/filedump/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/run/media/paul/filedump/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/run/media/paul/filedump/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/run/media/paul/filedump/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
