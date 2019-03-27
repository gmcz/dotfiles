# Greg's bashrc
# Begun from the seeds of zsh's default config, sneagan, and lukesmith.xyz

# Gets vim-like editing on the bash input line
set -o vi
export PS1='[\u@\h] '

# Only load Liquid Prompt in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source /usr/bin/liquidprompt

stty -ixon
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.


# Generic shortcuts:
alias news="newsboat"
alias autokey="autokey-gtk -c"

# System Maintainence
alias progs="(pacman -Qet && pacman -Qm) | sort -u" # List programs I've installed
alias orphans="pacman -Qdt" # List orphan programs
alias sdn="sudo shutdown now"

# Some aliases
alias cat="bat"
alias p="sudo pacman"
alias SS="sudo systemctl"
alias v="nvim"
alias vim="nvim"
alias sv="sudo nvim"
alias r="ranger"
alias sr="sudo ranger"
alias ka="killall"
alias mkd="mkdir -pv"
alias rf="source ~/.bashrc"
alias ref="shortcuts.sh && source ~/.bashrc" # Refresh shortcuts manually and reload bashrc
weath() { curl wttr.in/$1 ;} # Check the weather (give city or leave blank).
alias untar="tar -zxvf"
alias ddd="bash ~/.screenlayout/default-dual.sh"

# Git shortcuts
alias gaa="git add -A"
alias ga="git add"
alias gc="git commit"
alias gps="git push"
alias gpl="git pull"

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias la='ls -AhN --color=auto --group-directories-first'
alias crep="grep --color=always" # Color grep - highlight desired sequence.
alias ccat="highlight --out-format=xterm256" #Color cat - print file with syntax highlighting.


# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="youtube-dl --add-metadata -xic" # Download only audio
alias YT="youtube-viewer"
alias ethspeed="speedometer -r enp0s25"
alias wifispeed="speedometer -r wlp3s0"

PATH="$HOME/.scripts:$PATH:$HOME/.config/composer/vendor/bin:$HOME/.gem/ruby/2.5.0/bin"
export PATH
export EDITOR="nvim"
export TERMINAL="konsole"
export BROWSER="firefox-developer-edition"

