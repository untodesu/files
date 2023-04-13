#!/bin/sh

# Kill other flameshot instances and wait
# for flameshot processes to gracefully exit
killall -q flameshot > /dev/null 2> /dev/null
while pgrep -u ${UID} -x flameshot > /dev/null; do sleep 1; done

# Start a new flameshot instance
# UNDONE: do I need to use nohup?
flameshot &
