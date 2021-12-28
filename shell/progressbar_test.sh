#!/bin/sh
# run this as: sh progressbar_test.sh
# run this as: bash --posix progressbar_test.sh
source ./progressbar.sh
for i in 0 1 2 3 4 5 6 7 8 9 10; do
    progressbar "doing stuff..." $i 10
    if [ $((i)) -ne 10 ]; then sleep 1; fi
done
