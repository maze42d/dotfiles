#alias emerge="doas emerge --ask --quiet-build"
#alias f="kill -9 $(xprop | grep WM_PID | awk '{print $3}')"
#alias paldopici="rm"
#alias reboot="loginctl reboot"
#alias rm="echo ne"
#alias rm="rmtrash"
#alias shutdown="loginctl shutdown"
#alias v="nvim"
alias :q="exit"
alias :qa!="shutdown 0"
alias :qa="killall alacritty"
alias accept=""
alias ayy="yay"
alias brightset="xrandr --output DP-2 --brightness"
alias c="cd \$(history -100 | grep '^ [[:digit:]]\+ \+cd' | awk -F 'cd' '{print \$2}' | tail -n 1)"
alias cputurbooff='echo "0" | doas tee /sys/devices/system/cpu/cpufreq/boost'
alias cputurboon='echo "1" | doas tee /sys/devices/system/cpu/cpufreq/boost'
alias cz="setxkbmap -layout cz -variant qwerty"
alias d="docker-compose"
alias daos="doas"
alias ddg="ddgr"
alias eaccept="doas nvim /etc/portage/package.accept_keywords"
alias elog="tail -f /var/log/emerge.log"
alias emerge="doas emerge"
alias eoverlayadd="doas eselect repository enable"
alias esync="doas emaint sync -a"
alias eunmask="doas nvim /etc/portage/package.unmask"
alias eupdate="doas emerge -avuDN --quiet-build --keep-going @world"
alias euse="doas nvim /etc/portage/package.use"
alias ga="git add"
alias gaa="git add -A"
alias gae="queercat -f 1 -o 1 -b -h 1"
alias gc="git commit -m"
alias gd="git diff"
alias gp="git push"
alias gs="git status"
alias l="exa --all --long --octal-permissions --time-style=long-iso  --git --group --color-scale  --header --icons"
alias ltree="exa --all --long --octal-permissions --time-style=long-iso  --git --group --color-scale  --header --icons --tree -L 3"
alias min="cd ~/min && npm run start"
#alias nano="vim"
alias nbim="nvim"
alias nviom="nvim"
alias nvm-save='node -v > .nvmrc'
alias pacman-outplay="doas rm -f /var/lib/pacman/db.lck"
alias pm="pulsemixer"
alias qemu-enable="doas systemctl start libvirtd"
alias se="doas systemctl enable"
alias slep="xset dpms force suspend"
alias slepIn5M="xset s 300 300"
alias slepNever="xset s off"
alias sr="doas systemctl restart"
alias ss="doas systemctl start"
alias sst="doas systemctl stop"
alias sudo="doas"
alias t="taskwarrior-tui"
alias ta="task add"
alias td="task done"
alias us="setxkbmap us"
alias vivaldi-wayland="vivaldi-stable --enable-features=UseOzonePlatform --ozone-platform=wayland"
alias wcount="wc -w"
alias wireshark-usbcapture="doas modprobe usbmon && doas chmod 777 /dev/usbmon*"
alias wlcb="wlc -b"
alias x11vnc="x11vnc -rfbauth ~/.vnc/passwd"
alias ily="echo 'i love you too maze <3'"

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
