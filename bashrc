# If not running interactively, return
[[ $- != *i* ]] && return

PS1=' \u@\h \W$(__git_ps1 " (%s)") '

source /usr/local/share/lf/lf.bash
source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash
source /usr/share/git/completion/git-completion.bash
source /usr/share/git/completion/git-prompt.sh
source /usr/share/pass/completion/pass.bash-completion
source /etc/bash_completion.d/pass-otp

alias clip='xclip -sel clip'
alias dot='vim ~/.dotfiles'
alias cat='bat'
alias disk-usage="du -hx -t 1G ~"
alias ip='ip -o -c'
alias ll='ls -aFl --color=auto'
alias lla="ls -aFl --color=auto"
# alias ls='exa'
alias news="alacritty --config-file ~/.config/alacritty/news.yml -e newsboat"
alias tmux="tmux -f ~/.config/tmux.conf"
alias tree="exa -T"
alias screenshot="sxiv /tmp/sreenshot.png"
alias switch-mode="pacmd load-module module-loopback latency_msec=5"

# Always start tmux with correct configuration
if [[ $DISPLAY && -z "$TMUX" ]]; then
	SESSIONS="$( tmux ls )"
	DETACHED_SESSION="$( tmux ls | grep -vm1 attached | cut -d: -f1 )"

	if [[ -z "$DETACHED_SESSION" ]]; then
		if [[ -z "$SESSIONS" ]]; then
			exec tmuxp load home
		else
			exec tmux new-session
		fi
	else
		exec tmux attach-session -t $DETACHED_SESSION
	fi
fi
