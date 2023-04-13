#!/bin/sh

# Kill other polybar instances and wait
# for polybar processes to gracefully exit
killall -q polybar > /dev/null 2> /dev/null
while pgrep -u ${UID} -x polybar > /dev/null; do sleep 1; done

# Start a new polybar instance
# UNDONE: do I need to use nohup?
polybar main &
