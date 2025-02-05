# Aliases

alias ls='ls --color=auto'
alias tree='tree -C'
alias less=$PAGER
alias cal='ncal -b'
alias ncal='ncal -b'
alias top='htop'
alias apt-get='apt'
alias vim='~/.local/bin/nvim.appimage'
alias nvim='~/.local/bin/nvim.appimage'

alias flac2mp3='find * -depth -name "*.flac" -exec ffmpeg -i {} -codec:a libmp3lame -b:a 320k {}.mp3 \;'
alias m4a2mp3=' find * -depth -name "*.m4a" -exec ffmpeg -i {} -codec:a libmp3lame -b:a 320k {}.mp3 \;'
# alias ape2flac="find . -name \"*.ape\" -exec sh -c 'exec ffmpeg -i \"$1\" \"${1%.ape}.flac\"' _ {} \;"
# alias flacsplit='find . -name \"*.cue\" -exec sh -c \'exec shnsplit -f \"$1\" -o flac -d \"$(dirname \"$1\")\" -t \"%n_%p-%a-%t\" \"${1%.cue} .flac\"\' _ {} \;'

alias dict='dict -d wn'
alias diff='diff --color'

alias calpoly='ssh hbuscher@unix5.csc.calpoly.edu'
