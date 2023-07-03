#!/bin/env bash
echo "among us"
ps -eo pid,ppid,cmd,comm,%mem,%cpu --sort=-%mem | head -15
kill -9 $(xprop | grep WM_PID | awk '{print $3}')
