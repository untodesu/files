#!/bin/sh
PORT=42069

# Clobber any other instance.
# We don't care if it fails here
/usr/bin/killall -KILL microsocks || true

# Start a new microsocks instance
nohup /home/und/microsocks/microsocks -p ${PORT} > /dev/null 2> /dev/null &
