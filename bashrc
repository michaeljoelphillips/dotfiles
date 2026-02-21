echo "[DEBUG] .bashrc Initialization"

# If not running interactively, return
[[ $- != *i* ]] && return

PS1=' \u@loop \W$(__git_ps1 " (%s)") '

for COMPLETION in "/opt/homebrew/etc/bash_completion.d/"*; do
	echo "[DEBUG] Sourcing $COMPLETION"

	[[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
done

alias cat='bat'
alias clip='xclip -sel clip'
alias disk-usage="du -hx -t 1G ~"
alias dot='vim ~/.dotfiles'
alias ip='ip -o -c'
alias ll='ls -aFl --color=auto'
alias lla="ls -aFl --color=auto"
alias news="alacritty --config-file ~/.config/alacritty/news.yml -e newsboat"
alias vim="nvim"
alias screenshot="sxiv /tmp/sreenshot.png"
alias switch-mode="pacmd load-module module-loopback latency_msec=5"
alias tmux="tmux -f ~/.config/tmux/tmux.conf"
alias tree="exa -T"

# Always start tmux with correct configuration
if [[ -z "$TMUX" ]]; then
	SESSIONS="$( tmux ls )"
	DETACHED_SESSION="$( tmux ls | grep -vm1 attached | cut -d: -f1 )"

	if [[ -z "$DETACHED_SESSION" ]]; then
		if [[ -z "$SESSIONS" ]]; then
			exec tmuxp load loop
		else
			exec tmux new-session
		fi
	else
		exec tmux attach-session -t $DETACHED_SESSION
	fi
fi
