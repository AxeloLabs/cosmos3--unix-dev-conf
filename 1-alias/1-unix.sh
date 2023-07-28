#!/bin/sh

# ##########################################################
# Z
# ##########################################################
alias o='code package.json  '
# -----------------------------------------------------------
alias rc='code $COSMOS_RC'
# -----------------------------------------------------------

# ##########################################################
# FUN
# ##########################################################
alias yt='youtube-dl'

# ##########################################################
# Unix
# ##########################################################
alias sbb='. ~/.zshrc'
# path folders
alias PP='echo $PATH | tr ":" "\n" | sort -r --ignore-case  | fzf'
# ----------------------------------------------------------
# bat has colored syntax
alias cat='bat '
# Danger
alias rmf='rm -rf'
# Dir
alias cdcd='cd ..'
# ----------------------------------------------------------
# list
# https://github.com/ogham/exa -- modern ls
alias l='exa'
alias tl='exa -Flah --git --tree --level=1 --group-directories-first'
alias tll='exa -Flah --git --tree --level=2 --group-directories-first'
alias tlll='exa -Flah --git --tree --level=3 --group-directories-first'
alias ls='tl | h -n "src|public|package.json" "rollup.config.js|tailwind.config.js|tsconfig.json" "firebase.json|.firebaserc|firebase" ".gitignore|.git" | h "\.svelte" "\.ts" "\.js" "\.json" "\.sh"  "\.css" "\.html" "build"'
# alias ll='exa -Flah --git --tree --level=6 --group-directories-first'
alias ll='exa -Flah --git --tree --level=1 --group-directories-first'
# alias la='exa -Flh --git --tree --level=1 --group-directories-first'
# alias lla='exa -Flh --git --tree --level=6 --group-directories-first'
# ----------------------------------------------------------
# Debug
alias ECHO="echo '🪼 ........................................ 🪼' && echo && echo "
alias ECHOO="echo && echo && echo '🪸 ........................................ 🪸'"
# ----------------------------------------------------------

# ##########################################################
# Process
# ##########################################################
alias killnode="sudo killall node"
# ----------------------------------------------------------
# sudo lsof -i -P | grep LISTEN | grep :$PORT
# ----------------------------------------------------------
# $$$ node -p "console.log(process.env.PATH.split(':').join('\n'))"
# ----------------------------------------------------------
# sudo kill -9 <PID>
# ps -ef | grep chrome | grep -v grep | awk '{print $2}' | xargs kill -9
# ps -ef | grep 8080 | grep -v grep | awk '{print $2}' | xargs kill -9
# alias killl='kill-port --port 8000,9099,5001,8080,5033,9000,5000,8085,9199,4000,4400,4500'
# ----------------------------------------------------------
listening() {
  if [ $# -eq 0 ]; then
    sudo lsof -iTCP -sTCP:LISTEN -n -P
  elif [ $# -eq 1 ]; then
    sudo lsof -iTCP -sTCP:LISTEN -n -P | grep -i --color $1
  else
    echo "Usage: listening [pattern]"
  fi
}
# ----------------------------------------------------------
