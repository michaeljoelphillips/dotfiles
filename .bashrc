source ~/.fzf.bash
source /usr/share/git/completion/git-prompt.sh
source ~/.local/share/completion/config-edit.bash
source /usr/share/git/completion/git-completion.bash
source /usr/share/pass/completion/pass.bash-completion

export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitARM
export XDG_CONFIG_HOME="${HOME}/.config"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export STEAM_COMPAT_DATA_PATH=~/.steam/steam/steamapps/compatdata
export PATH="$PATH:$HOME/.config/composer/vendor/bin:$(ruby -e 'print Gem.user_dir')/bin:$HOME/.bin:$HOME/.cargo/bin"

PS1=' \u@\h \W$(__git_ps1 " (%s)") '

# If not running interactively, return
[[ $- != *i* ]] && return

# Always start tmux with correct configuration
if [[ $DISPLAY && -z "$TMUX" ]]; then
	SESSIONS="$( tmux ls )"
	DETACHED_SESSION="$( tmux ls | grep -vm1 attached | cut -d: -f1 )"

	if [[ -z "$DETACHED_SESSION" ]]; then
		if [[ -z "$SESSIONS" ]]; then
			exec tmuxinator start workspace
		else
			exec tmux new-session
		fi
	else
		exec tmux attach-session -t $DETACHED_SESSION
	fi
fi

# Aliases
# alias dict="sdcv"
alias cat='bat'
alias ip='ip -o -c'
alias ls='ls --color=auto'
alias ll='ls -Fl --color=auto'
alias lla="ls -aFl --color=auto"
alias news="alacritty --config-file ~/.config/alacritty/news.yml -e newsboat"
alias tmux="tmux -f ~/.config/tmux.conf"
alias borderlands="LD_LIBRARY_PATH=~/.steam/bin32/ cd ~/.steam/steam/steamapps/common/Borderlands\ 2 && ~/.steam/bin32/steam-runtime/run.sh ./Borderlands2"
alias fetch-nookbooks="adb pull /data/data/bn.ereader/files/B\&N\ Downloads/Books ~/Documents/NookBooks/"
alias disk-usage="du -hx -t 1G ~"

# Infrequent Commands
# gpick - On-screen color picker
# dict - Dictionary
# xrdb -merge ~/.Xresources - Update .Xresources
# peek - Gif screen grab
