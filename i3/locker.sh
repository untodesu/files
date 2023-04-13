#!/bin/sh

unset locker_args
locker_args="${locker_args} --clock"
locker_args="${locker_args} --keylayout 0"
locker_args="${locker_args} --color=000000FF"
locker_args="${locker_args} --inside-color=000000FF"
locker_args="${locker_args} --ring-color=FF0084FF"
locker_args="${locker_args} --insidever-color=000000FF"
locker_args="${locker_args} --ringver-color=FF0084FF"
locker_args="${locker_args} --insidewrong-color=000000FF"
locker_args="${locker_args} --ringwrong-color=FF0000FF"
locker_args="${locker_args} --line-color=000000FF"
locker_args="${locker_args} --keyhl-color=FFFFFFFF"
locker_args="${locker_args} --bshl-color=CCCCCCFF"
locker_args="${locker_args} --verif-color=DDDDDDFF"
locker_args="${locker_args} --wrong-color=DDDDDDFF"
locker_args="${locker_args} --modif-color=DDDDDDFF"
locker_args="${locker_args} --time-color=FF0084FF"
locker_args="${locker_args} --date-color=FF0084FF"
locker_args="${locker_args} --layout-color=FF0084FF"
locker_args="${locker_args} --time-str=%H:%M"
locker_args="${locker_args} --date-str=%d/%m/%Y"
locker_args="${locker_args} --verif-text="
locker_args="${locker_args} --wrong-text="

i3lock ${locker_args}
