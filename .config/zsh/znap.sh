source ~/.zsh/znap/znap.zsh
zstyle ':znap:source' compile no

plugins=(
  "zsh-users/zsh-syntax-highlighting"
  "zsh-users/zsh-autosuggestions"
  "qoomon/zsh-lazyload"
  "zsh-users/zsh-history-substring-search"
  "jeffreytse/zsh-vi-mode"
)

for plugin in "${plugins[@]}"; do
  znap install "$plugin"
done

for plugin in "${plugins[@]}"; do
  znap source "$plugin"
done
