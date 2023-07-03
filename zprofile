 if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
     dbus-run-session ./dotfiles.git/launch-sway.sh
 fi
