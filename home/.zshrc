ZSH_THEME="crunch"
CASE_SENSITIVE="true"
plugins=(
	colored-man-pages
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
source ~/.shell_aliases
source ~/.config/rofi/bashrc_functions


# run fastfetch only if new terminal is opened not from ranger
if [[ ! $(ps -p $(ps -p $$ -o ppid=) -o args= | grep -i ranger) ]]; then fastfetch; fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/paul/google-cloud-sdk/path.zsh.inc' ]; then . '/home/paul/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/paul/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/paul/google-cloud-sdk/completion.zsh.inc'; fi

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
