if [[ $TERM == "alacritty" ]]
  then
    ## fetch
    
    #export PF_SOURCE="${HOME}/.pfetch"
    export PF_INFO="title os host kernel uptime pkgs memory"
    # cfetch
    #pfetch
    nerdfetch
    task
  fi
eval "$(starship init zsh)"

setopt transientrprompt interactivecomments # zsh-autocomplete segfault fix?

# echo "peepee poopoo"
