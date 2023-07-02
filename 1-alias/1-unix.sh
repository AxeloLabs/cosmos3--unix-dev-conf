#!/bin/sh

# ----------------------------------------------------------
# fast move
# ----------------------------------------------------------

alias uis="cd /Users/0-minuit-ax/0-dev/1-genesis/axelo5/apps/z-story--uiblog"
alias ui="cd /Users/0-minuit-ax/0-dev/1-genesis/axelo5/packages/axelox-uiblog"
alias r="cd /Users/0-minuit-ax/0-dev/1-genesis/axelo5/"

# ----------------------------------------------------------

alias yt='youtube-dl'
# ----------------------------------------------------------
alias rc='code $COSMOS_RC'
# ----------------------------------------------------------
# Unix
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

# -0
# -0 Process
# -0
# ----------------------------------------------------------
alias killnode="sudo killall node"
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
