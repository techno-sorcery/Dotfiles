#!/usr/bin/env zsh

# Misc
export MAIN_USER="$USER"
export BG="/home/technomancer/Photos/wallpapers/antwerp_cathedral.jpg"

# Programs
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cacheshare"

export EDITOR="nvim"
export TERM="st-256color"
export PAGER='less -SsMJ +Gg -x4 -z-2 --use-color -DP15.12 -DS0.11 -DR0.1 -Dd205 -Du75'

export W3M_DIR="$XDG_CONFIG_HOME/w3m"
export MBSYNCRC="$XDG_CONFIG_HOME/mbsync/mbsyncrc"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export WINEPREFIX="$XDG_DATA_HOME/wine"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export NODE_REPL_HISTORY=""

export ANSIBLE_CONFIG="$XDG_CONFIG_HOME/ansible/ansible.cfg"
export ANSIBLE_HOME="$XDG_DATA_HOME/ansible"

export ROFI_PATH="~/.config/rofi/dmenu.rasi"

# Xorg
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export XINITRC="$XDG_CONFIG_HOME/xorg/xinitrc"

# java
export _JAVA_AWT_WM_NONREPARENTING=1

# fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_DEFAULT_COMMAND='ag --hidden -U -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/history"
export HISTSIZE=1000
export SAVEHIST=1000
export ZTHEME="cool"

# Paths
export XDG_DATA_DIRS="/usr/local/share/:/usr/share/:/var/lib/flatpak/exports/share"
export PATH="$PATH:/home/$USER/.local/bin"
export DMENU_PATH="/usr/share/applications"

# Add all directories in `~/.local/bin` to $PATH (Stolen from Luke Smith)
export PATH="$PATH:$(find ~/.local/bin -type l | paste -sd ':' -)"
