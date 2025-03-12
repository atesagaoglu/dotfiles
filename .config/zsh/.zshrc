# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_hist
HISTSIZE=10000000000
SAVEHIST=10000000000

bindkey -v

setopt complete_aliases

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_verify
setopt inc_append_history
setopt share_history

source $HOME/.config/zsh/.antidote/antidote.zsh
antidote load

zmodload zsh/terminfo
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

export DOTFILES=$HOME/.dots

# Case Insensitive tab comp
zstyle ':completion:*' group-writable true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
autoload -Uz compinit && compinit -i

#Alias
for f in $ZDOTDIR/aliases/*.*sh; do source $f; done

#Export
for f in $ZDOTDIR/export/*.*sh; do source $f; done

#Functions
for f in $ZDOTDIR/functions/*.*sh; do source $f; done

#Bindings
for f in $ZDOTDIR/bindings/*.*sh; do source $f; done

fzf_bind_src=$(fd key-bindings.zsh /usr/share/)
if [ -n "$fzf_bind_src" ] && [ -f "$fzf_bind_src" ]; then
    source "$fzf_bind_src"
else 
    echo "There is a problem with fzf key bindings path."
fi

bindkey '^A' clear-screen

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# fnm
FNM_PATH="/home/eds/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/eds/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi
