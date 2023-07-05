#!/bin/sh

export ps1_char="%"
export ps1_hostname="\$(hostname -s)"
export ps1_username="\${USER:-\${USERNAME:-\${LOGNAME:-\$(whoami)}}}"
export PS1="\033[0m \${?} \033[1m${ps1_username}\033[0m@${ps1_hostname} \033[1m\${PWD/\${HOME}/\~}\033[0m ${ps1_char} "

# Yes, definitely
export POSIXLY_CORRECT=1

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

# What the fuck
#[ -z "${XDG_RUNTIME_DIR}" ] && export XDG_RUNTIME_DIR="/run/user/$(id -ru)"

# Funny aliases
alias la="ls -al"
alias ll="ls -l"
