# Znap Plugin Manager
[[ -r $ZDOTDIR/plugins/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
    https://github.com/marlonrichert/zsh-snap.git $ZDOTDIR/plugins/znap
    source $ZDOTDIR/plugins/znap/znap.zsh 


# zsh-nvm lazy loading
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true


# Plugins
znap source zdharma-continuum/fast-syntax-highlighting
znap source hlissner/zsh-autopair
znap source zsh-users/zsh-autosuggestions
znap source lukechilds/zsh-nvm
znap clone romkatv/gitstatus

source "/usr/share/doc/fzf/examples/completion.zsh"
source "/usr/share/doc/fzf/examples/key-bindings.zsh"
source "$ZDOTDIR/plugins/romkatv/gitstatus/gitstatus.prompt.zsh"


# Autosuggest bindings
bindkey '^[[Z' autosuggest-accept


# Vim bindings
bindkey -v
bindkey -v '^?' backward-delete-char
export KEYTIMEOUT=1


# Tab auto complete (Stolen from Luke Smith)
autoload -U compinit
setopt menu_complete
zstyle ':completion:*' menu select
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
compinit
_comp_options+=(globdots)   # Tab complete hidden files


# Edit lines in VIM
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey "^e" edit-command-line


# Options
setopt APPEND_HISTORY       # All terminal sessions append history to histfile

setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

setopt CORRECT_ALL          # Automatically correct syntax
setopt CHASE_LINKS
setopt LIST_TYPES
setopt AUTO_CD

stty stop undef             # Disable terminal freeze via ^s

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index


# Prompt string
PS1='%B%F{10}%n%f%b:%F{12}%~%f$ '
RPROMPT='$GITSTATUS_PROMPT  %(?.%F{10}✓%f.%F{9}X%f)'


# Source other config files
[[ -s "/etc/grc.zsh" ]] && source /etc/grc.zsh
source "$ZDOTDIR/zautorun.zsh"
source "$ZDOTDIR/zaliases.zsh"
source "$ZDOTDIR/zfuncts.zsh"

