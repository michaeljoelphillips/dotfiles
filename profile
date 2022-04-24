export GOROOT="$HOME/.local/src/go"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_BIN_DIRS="/usr/local/bin:/usr/bin:$XDG_BIN_HOME"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

PATH="${PATH}:${XDG_BIN_HOME}"

eval `dircolors -b ~/.config/ls/colors`

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
