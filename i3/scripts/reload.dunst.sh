#!/bin/sh

# Kill other dunst instances just in case
# and wait for those instances to gracefully exit
killall -q dunst > /dev/null 2> /dev/null
while pgrep -u ${UID} -x polybar > /dev/null; do sleep 1; done

# Start a new dunst instance
# UNDONE: do I need to use nohup?
dunst &
