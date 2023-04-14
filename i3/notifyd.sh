#!/bin/sh
killall -q dunst > /dev/null 2> /dev/null
while pgrep -u ${UID} -x dunst > /dev/null; do sleep 1; done
/usr/bin/dunst &
