#!/bin/sh

volume="${1}${2:-5}"
pactl set-sink-volume @DEFAULT_SINK@ ${volume}%

# UNDONE: is there a way to get the sink's volume
# using pactl that is not being THAT utterly cursed?
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -m1 -Eo '[0-9]?[0-9]?[0-9]%' | head -n1 | tr -d %)

if test ${volume} -ge 100
then
    # Clamp the volume at 100% for my ears sake
    pactl set-sink-volume @DEFAULT_SINK@ 100%
fi
