    #
    # Keybinds
    # https://stackoverflow.com/questions/24911898/zsh-shiftcontrolarrows

function zle-line-init {
    marking=0
}
zle -N zle-line-init

function select-char-right {
    if (( $marking != 1 ))
    then
        marking=1
        zle set-mark-command
    fi
    zle .forward-char
}
zle -N select-char-right

function select-char-left {
    if (( $marking != 1 ))
    then
        marking=1
        zle set-mark-command
    fi
    zle .backward-char
}
zle -N select-char-left

function forward-char {
    if (( $marking == 1 ))
    then
        marking=0
        NUMERIC=-1 zle set-mark-command
    fi
    zle .forward-char
}
zle -N forward-char

function backward-char {
    if (( $marking == 1 ))
    then
        marking=0
        NUMERIC=-1 zle set-mark-command
    fi
    zle .backward-char
}
zle -N backward-char

function delete-char {
    if (( $marking == 1 ))
    then
        zle kill-region
        marking=0
    else
        zle .delete-char
    fi
}
zle -N delete-char

bindkey ';6D' select-word-left ## not working yet
bindkey ';6C' select-word-right ## not working yet
bindkey ';2D' select-char-left   # assuming xterm
bindkey ';2C' select-char-right  # assuming xterm
bindkey ';5D' backward-word
bindkey ';5C' forward-word
bindkey '^[[3~' delete-char

bindkey '^I' expand-or-complete-or-list-files # see 10_tab.zsh
#source $HOME/.config/zsh.d/zsh-interactive-cd.plugin.zsh
