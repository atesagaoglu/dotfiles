#!/usr/bin/env bash

FNM_PATH="$HOME/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$HOME/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

if [ -f "$HOME/.fnmcomp" ]; then
  source "$HOME/.fnmcomp"
fi

