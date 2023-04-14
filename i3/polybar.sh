#!/bin/sh
killall -q polybar > /dev/null 2> /dev/null
while pgrep -u ${UID} -x polybar > /dev/null; do sleep 1; done
/usr/bin/polybar main &
