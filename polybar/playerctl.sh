#!/bin/sh

if test "${1}" = "toggle"
then
    playerctl play-pause 2> /dev/null || true
    exit 0
elif test "${1}" = "notify"
then
    player_string=$(playerctl metadata --format "{{artist}} - {{title}}" 2> /dev/null || true)
    notify-send "${player_string}"
    exit 0
else
    player_status=$(playerctl status 2> /dev/null || true)
    case ${player_status} in
        Playing) printf "%s\n" "${PLAYING}";;
        Paused) printf "%s\n" "${PAUSED}";;
        *) printf "\n";;
    esac
    exit 0
fi
