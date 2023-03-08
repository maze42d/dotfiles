#zmodload zsh/zprof

for conf in "$HOME/.config/zsh.d/"*.zsh; do
  source "${conf}"
done
unset conf
