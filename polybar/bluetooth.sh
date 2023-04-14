#!/bin/sh
if LC_ALL=C bluetoothctl show | grep -q "Powered: yes"
then
    printf "%s\n" "${POWERED}"
else
    printf "\n"
fi
