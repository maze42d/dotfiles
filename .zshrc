#zmodload zsh/zprof


#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/maze/.bun/_bun" ] && source "/home/maze/.bun/_bun"

# load modules
for conf in "$HOME/.config/zsh.d/"*.zsh; do
  source "${conf}"
done
unset conf

