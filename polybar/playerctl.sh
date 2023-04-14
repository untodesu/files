#!/bin/sh

if test "${1}" = "notify"
then
    player_string=$(playerctl metadata --format "{{artist}} - {{title}}" 2> /dev/null || true)
    notify-send "${player_string}"
else
    player_status=$(playerctl status 2> /dev/null || true)
    case ${player_status} in
        Playing) printf "%s\n" "${PLAYING}";;
        Paused) printf "%s\n" "${PAUSED}";;
        *) printf "\n";;
    esac
    exit 0
fi
