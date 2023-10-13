function expand-or-complete-or-list-files() {
    if [[ $#BUFFER == 0 ]]; then
        BUFFER="ls "
        CURSOR=3
        zle list-choices
        zle backward-kill-word
    else
        zle expand-or-complete
    fi
}
zle -N expand-or-complete-or-list-files

source $HOME/.config/zsh.d/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# _complete_files () {
#   eval "$_comp_setup"
#   _main_complete _files
# }
# compdef -k _complete_files complete-word '^X/'
