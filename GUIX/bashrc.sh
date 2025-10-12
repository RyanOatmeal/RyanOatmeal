#!/bin/bash

# We want colorrrrrrr
export TERM=xterm-256color

# PS1 Colors
# https://en.wikipedia.org/wiki/ANSI_escape_code#Colors
# Consider the bright variants later.
RED="\[\e[1;31m"
GREEN="\[\e[1;32m"
YELLOW="\[\e[1;33m"
BLUE="\[\e[1;34m"
MAGENTA="\[\e[1;35m"
CYAN="\[\e[1;36m"
RESET="\[\e[0m"

# PS1 Text
USER="${GREEN}RyanOatmeal${RESET}"
DIRECTORY="${CYAN}\w${RESET}"
SYSTEM="${YELLOW}GUIX${RESET}"
SHELL="${BLUE}bash${RESET}"

export PS1="${USER}@${SYSTEM}:${DIRECTORY} [${SHELL}]$ "

# Colorize Commands 
alias ls="ls --color=auto"
alias grep="grep --color=auto"