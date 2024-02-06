# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/atesagaoglu/.zshrc'

autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# End of lines added by compinstall

### ZNAP ###
source ~/repos/zsh/znap/znap.zsh  # Start Znap

znap eval starship 'starship init zsh --print-full-init'
znap prompt

znap source zsh-users/zsh-syntax-highlighting
znap source zsh-users/zsh-autosuggestions
znap source qoomon/zsh-lazyload
# znap source marlonrichert/zsh-autocomplete

### EXPORT ###
export EDITOR="nvim"
export TERM="xterm-kitty"

export MANPAGER="nvim +Man!"
export GOPATH="/home/atesagaoglu/.go"

export PATH="$PATH:/home/atesagaoglu/sdk/flutter/bin"
export PATH="$PATH:/home/atesagaoglu/android/Sdk/cmdline-tools/latest/bin"
export PATH="$PATH:/home/atesagaoglu/android/Sdk/platform-tools"
export PATH="$PATH:$gopath/bin"
export PATH="$PATH:/home/atesagaoglu/.bin"

export CHROME_EXECUTABLE="/var/lib/flatpak/exports/bin/org.chromium.Chromium"

export QT_QPA_PLATFORMTHEME="qt5ct"

export DENO_INSTALL="/home/atesagaoglu/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# fnm
export PATH="/home/atesagaoglu/.local/share/fnm:$PATH"
eval "`fnm env`"
source ~/.fnmcomp

### ALIAS ###
alias ls='eza --color=always'
alias ll='eza -l --color=always --icons'
alias lla='eza -la --color=always --icons'

alias fd='cd $(find $HOME -type d | fzf);clear'

alias update-grub='sudo grub2-mkconfig -o /boot/grub2/grub.cfg'

alias gogh='bash -c  "$(wget -qO- https://git.io/vQgMr)" '

alias nv='nvim'

alias py='python3'

alias xclip='xclip -selection c'

### DOT MANAGEMENT ###
alias dots='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'

bindkey -s '^f' 'fd\n'

### FZF COMPLETIONS ###
source /usr/share/fzf/shell/key-bindings.zsh
source /usr/share/fzf/shell/completion.zsh

### FUNCTIONS ###
# execute a command without attaching it to the terminal
disexec() {
    local cli="$BUFFER"
    # echo "\nbuf: $cli"
    eval "$cli" &
    eval disown
    zle reset-prompt
}
zle -N disexec
bindkey '^e' disexec
