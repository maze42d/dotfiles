if [[ $TERM == "alacritty" ]]
  then
    ## fetch
    
    #export PF_SOURCE="${HOME}/.pfetch"
    export PF_INFO="title os host kernel uptime pkgs memory"
    # cfetch
    #pfetch
    nerdfetch

  fi


eval "$(starship init zsh)"

