#!/bin/sh

# Since we have no DE spinning
# around which is responsible for
# setting up things like gnome-keyring,
# we have to run the command manually...
dbus-update-activation-environment --all
