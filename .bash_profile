#!/usr/bin/env bash

export POSIXLY_CORRECT=1

export PS1="\e[0m \e[1m\\w\e[0m \e[0m$\e[0m "
export PS2="\e[0m \e[2m\\w\e[0m \e[1m>\e[0m "
export PS4="\e[0m \e[2m\\w\e[0m \e[1m+\e[0m "

# Some systems define LANGUAGE, some
# define LANG and others use LC_ALL, so
# it would be a good idea to test all of them
case ${LANGUAGE:=${LANG:=${LC_ALL:=C}}} in
    en_US*);;
    ru_RU*);;
    *) export LANGUAGE=C LANG=C LC_ALL=C;;
esac

# UNDONE: how do we shut the shell up
# if a directory is present in PATH
# already and/or does not exist?
export PATH="${HOME}/.local/bin:${PATH}"
export PATH="${HOME}/.local/share/bin:${PATH}"
export PATH="${HOME}/bin:${PATH}"

alias la="ls -al"
alias ll="ls -l"
