#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar1 
echo "---" | tee -a /tmp/polybar1.log 
# polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown

MONITOR=DP-0 polybar --reload bar1 &
# MONITOR=DP-0 polybar --reload bar2 &

echo "Bars launched..."

