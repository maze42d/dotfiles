#!/bin/bash

if pidof sway; then
  ipc_binary=swaymsg
else
  ipc_binary=i3-msg
fi

bin="linux-wallpaperengine"
bin="zenity"
args="--info --text 'uwu'"

while [ true ]; do
  if $ipc_binary -t get_tree | grep "\"fullscreen_mode\": 1"; then
    echo "killing: $bin"
    killall $bin
  else
    echo "checking if running: $bin $args"
    pidof $bin || $bin $args & disown
  sleep 3
  fi
done
