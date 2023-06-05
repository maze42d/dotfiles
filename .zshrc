#zmodload zsh/zprof

for conf in "$HOME/.config/zsh.d/"*.zsh; do
  source "${conf}"
done
unset conf

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
