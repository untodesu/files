#!/bin/sh
# Usage: progressbar <message> <progress> <max_progress>
# Example: progressbar "doing stuff" $i $MAX_I
progressbar() {
    _pb_message=$1
    _pb_current=$2
    _pb_maximum=$3
    _pb_cols=$(tput cols)
    _pb_grades=$((_pb_cols / 3))
    _pb_progress=""
    _pb_count=$((_pb_grades * _pb_current / _pb_maximum))
    _pb_spacecount=$((_pb_grades - _pb_count))
    _pb_progress="$_pb_progress$(printf "\x5B")"
    _pb_progress="$_pb_progress$(printf "%*s" $_pb_count | tr ' ' '#')"
    _pb_progress="$_pb_progress$(printf "%*s" $_pb_spacecount | tr ' ' '-')"
    _pb_progress="$_pb_progress$(printf "\x5D")"
    _pb_percent=$((100 * _pb_current / _pb_maximum))
    _pb_progress="$_pb_progress $(printf "%3d%%" $_pb_percent)"
    printf "\r %s%*s" "$_pb_message" $((_pb_cols - $(printf "%s" "$_pb_message" | wc -m) - 2)) "$_pb_progress"
    if [ $((_pb_current == _pb_maximum)) = "1" ]; then printf "\n"; fi
}
