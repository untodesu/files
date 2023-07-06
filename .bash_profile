#!/usr/bin/env bash

export POSIXLY_CORRECT=1

export PS1="\e[0m \e[1m\\w\e[0m \e[0m$\e[0m "
export PS2="\e[0m \e[2m\\w\e[0m \e[1m>\e[0m "
export PS4="\e[0m \e[2m\\w\e[0m \e[1m+\e[0m "

case ${LANGUAGE:=${LANG:=${LC_ALL:=C}}} in
    en_US*);;
    ru_RU*);;
    *) export LANGUAGE=C LANG=C LC_ALL=C;;
esac

export PATH="${HOME}/.bin:${PATH}"
export PATH="${HOME}/.local/bin:${PATH}"
export PATH="${HOME}/.local/share/bin:${PATH}"

alias la="ls -al"
alias ll="ls -l"
