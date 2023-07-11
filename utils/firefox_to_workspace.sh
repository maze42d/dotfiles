#!/bin/bash

firefox_binary="firefox-bin"
ipc_binary=swaymsg

firefox_profile=$1
workspace=$2

echo "$firefox_profile to $workspace"

$firefox_binary -p $firefox_profile &> /dev/null &
PID=$!

command="$ipc_binary "[pid=$PID]" move workspace $workspace"
echo $command

until $ipc_binary -t get_tree | grep "\"pid\": $PID" > /dev/null #wait till window opens
  do
    sleep 0
done
$command
disown
exit
