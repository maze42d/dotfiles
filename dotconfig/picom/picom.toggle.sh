#!/usr/bin/env bash
killall picom || picom -b -c &
polybar-msg hook picom-toggle 1
