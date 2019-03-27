#!/bin/bash
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$PATH:$HOME/.scripts"
export EDITOR="nvim"
export TERMINAL="konsole"
export BROWSER="firefox-developer-edition"

# Autostart i3 when logged in:
if [ $(tty) = "/dev/tty1" ]; then
     exec startx
fi
