#!/usr/bin/env bash

if command asdf -v asdf >/dev/null 2>&1; then

    export ISASDF=true
    export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

    fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
    autoload -Uz compinit && compinit

    source "$HOME/.asdf/plugins/golang/set-env.zsh"
fi
