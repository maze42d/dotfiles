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


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/maze/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/maze/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/maze/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/maze/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias ls="ls --color=auto"
alias ip="ip -c"
