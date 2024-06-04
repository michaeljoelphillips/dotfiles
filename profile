export GOPATH="$HOME/.local/src/go"
export MANPAGER="nvim +Man!"
export PAGER="less -S"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export XDG_BIN_DIRS="/usr/local/bin:/usr/bin:$XDG_BIN_HOME"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

PATH="${PATH}:${XDG_BIN_HOME}"

eval `dircolors -b ~/.config/ls/colors`

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
