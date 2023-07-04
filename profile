#!/bin/sh

export PS1="$ "

# Some systems define LANGUAGE, some
# define LANG and others use LC_ALL, so
# it would be a good idea to test all of them
case ${LANGUAGE:=${LANG:=${LC_ALL:=C}}} in
    en_US*);;
    ru_RU*);;
    *) export LANGUAGE=C LANG=C LC_ALL=C;;
esac

# Add to PATH what needs to be in PATH
path_prepend() { if test -d "${1}"; then export PATH="${1}:${PATH}"; fi }
path_prepend "${HOME}/.local/bin"
path_prepend "${HOME}/.local/share/bin"
path_prepend "${HOME}/bin"
