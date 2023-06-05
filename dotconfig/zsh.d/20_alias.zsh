alias d="docker-compose"
alias l="exa --all --long --octal-permissions --time-style=long-iso  --git --group --color-scale  --header --icons"
alias ltree="exa --all --long --octal-permissions --time-style=long-iso  --git --group --color-scale  --header --icons --tree -L 3"
alias ddg="ddgr"
#alias v="nvim"
alias t="taskwarrior-tui"
alias ta="task add"
alias td="task done"
alias c="cd \$(history -100 | grep '^ [[:digit:]]\+ \+cd' | awk -F 'cd' '{print \$2}' | tail -n 1)"
alias vivaldi-wayland="vivaldi-stable --enable-features=UseOzonePlatform --ozone-platform=wayland"
alias accept=""
#alias emerge="doas emerge --ask --quiet-build"
alias elog="tail -f /var/log/emerge.log"
alias eupdate="doas emerge -avuDN --quiet-build --keep-going @world"
alias wcount="wc -w"
alias cz="setxkbmap -layout cz -variant qwerty"
alias us="setxkbmap us"
#alias rm="rmtrash"
#alias paldopici="rm"
#alias rm="echo ne"
#alias reboot="loginctl reboot"
#alias shutdown="loginctl shutdown"
alias sudo="doas"
alias pm="pulsemixer"
alias daos="doas"
alias min="cd ~/min && npm run start"
alias gae="queercat -f 1 -o 1 -b -h 1"
alias i3="/home/maze/code/i3-rounded/build/i3"
alias brightset="xrandr --output DP-2 --brightness"
alias qemu-enable="doas systemctl start libvirtd"
alias nano="vim"
alias wireshark-usbcapture="doas modprobe usbmon && doas chmod 777 /dev/usbmon*"
#alias f="kill -9 $(xprop | grep WM_PID | awk '{print $3}')"
alias wlcb="wlc -b"
alias x11vnc="x11vnc -rfbauth ~/.vnc/passwd"
alias pacman-outplay="doas rm -f /var/lib/pacman/db.lck"
alias ayy="yay"
alias :q="exit"
alias :qa="killall alacritty"
alias slepIn5M="xset s 300 300"
alias slepNever="xset s off"
alias slep="xset dpms force suspend"
alias ga="git add"
alias gaa="git add -A"
alias gc="git commit -m"
alias gp="git push"
alias gd="git diff"
alias gs="git status"
alias emerge="doas emerge"
alias euse="doas nvim /etc/portage/package.use"
alias eaccept="doas nvim /etc/portage/package.accept_keywords"
alias eunmask="doas nvim /etc/portage/package.unmask"
alias eoverlayadd="doas eselect repository enable"
alias esync="doas emaint sync -a"

alias -s js=node
alias -s ts=nvim
alias -s c=nvim
alias -s h=nvim
alias -s md=nvim
alias -s org=nvim
alias -s zip=nvim
alias -s tar=nvim
#alias -s tar.{xz,gz,bz,bz2}=nvim

## NVM lazyload
### https://broken-by.me/lazy-load-nvm/
nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}

node() {
    unset -f node
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    node "$@"
}

npm() {
    unset -f npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    npm "$@"
}

# precmd () {  ## TUI borked                                                                                                                                                                                                      
#     exec 2>&- >&-
#     lastLine=$(tail -1 /dev/shm/zsh.lastStdout) 
#     lastOut=$(cat /dev/shm/zsh.lastStdout) 
#     sleep 0.1   # TODO: synchronize better
#     exec > /dev/tty 2>&1
# }
# 
# preexec() {
#     exec > >(tee /dev/shm/zsh.lastStdout&)
# }
