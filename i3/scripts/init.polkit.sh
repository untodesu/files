#!/bin/sh

# Kill other polkit instances and wait
# for polkit instances to gracefully exit
killall -q xfce-polkit > /dev/null 2> /dev/null
while pgrep -u ${UID} -x xfce-polkit > /dev/null; do sleep 1; done

# Start a new polkit instance
# UNDONE: do I need to use nohup?
/usr/bin/xfce-polkit/xfce-polkit &
