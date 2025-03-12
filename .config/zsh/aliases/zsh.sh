#!/usr/bin/env bash

if type eza > /dev/null 2>&1; then
    alias ls='eza --color=always'
    alias ll='eza -l --color=always --icons --group-directories-first'
    alias lla='eza -la --color=always --icons --group-directories-first'
fi

if type batcat > /dev/null 2>&1; then
    alias bat='batcat'
fi

if type bat > /dev/null 2>&1; then
    alias cat='bat -Pp --decorations never'
fi

if type fdfind > /dev/null 2>&1; then
    alias fd='fdfind'
fi

if type nala > /dev/null 2>&1; then
    alias nala='sudo nala'
    alias apt='nala'
fi

if type zypper > /dev/null 2>&1; then
    alias zypper='sudo zypper'
fi

alias yeet='rm -rfv'
alias ..='cd ..'
alias ...='cd ../..'

alias ff='cd $(fd --type d . $HOME | fzf); clear'
alias gogh='bash -c  "$(wget -qO- https://git.io/vQgMr)" '

alias nv='nvim'
alias v='vim'

alias py='python3'
alias xclip='xclip -selection c'

alias truecolor=' curl -s https://gist.githubusercontent.com/lifepillar/09a44b8cf0f9397465614e622979107f/raw/24-bit-color.sh >24-bit-color.sh;bash 24-bit-color.sh
'
alias fxo='fdfind | fzf --print0| xargs -0 xdg-open > /dev/null 2>&1'
bindkey -s '^f' 'fxo\n'

bindkey -s '\ez' 'fg\n'

alias r="ranger"

alias stfu="asusctl profile -P Quiet"
