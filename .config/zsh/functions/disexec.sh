#!/usr/bin/env bash

disexec() {
    local cli="$BUFFER"
    eval "$cli" &
    eval disown
    zle reset-prompt
}

zle -N disexec
bindkey '^x' disexec
