
# https://www.swyx.io/new-mac-setup
# git config --global init.defaultBranch main
# git config --global user.name "swyxio"
# git config --global user.email shawnthe1@gmail.com
# > once you have installed diff-so-fancy
# set git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX" - makes for much nicer git diff
# > You can also diff with this bash function dif() { git diff --color --no-index "$1" "$2" | diff-so-fancy; } or with VSCode code --diff file1.js file2.js.
# > You can also try https://github.com/dandavison/delta
# --------------------------------
#  https://dandavison.github.io/delta/tips-and-tricks/using-delta-with-vscode.html

#  https://www.reddit.com/r/commandline/comments/x1pv3z/a_better_git_diff_with_delta/
#  git diff | delta => or put delta config and do not do it

# code --diff file1.js file2.js
# ----------------------------------------------------------
# All git commands that display diff output should now display
# syntax-highlighted output. For example:
# git diff
# git show
# git log -p
# git stash show -p
# git reflog -p
# git add -p
#Remove outdated versions from the cellar.
# -0
# -0 LN [bootstrap-script]
# -0
# -0 FIRST: the first file in cosmos MUST be created
# -0 SECOND: it will copy the first file to the second (so it does not copy the existing conf to yours : WARN !!!)
# -0
# -0 ln -s /path/to/target.js (true file) linked-target.js (sym)
# -0
# -0 pnpm list -g
# -0 npm list -g
# -0
# SHOW HIDCEN FILES: “Command” + “Shift” + “.”
# brew install --cask android-file-transfer
# brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package apparency quicklookase qlvideo
# brew list
# brew doctor
# brew info nvm             #avoir info install config PATH
# brew outdated
# brew update
# brew upgrade
# brew cleanup
# ----------------------------------------------------------
# secure zip
# zip -er FILENAME-DEST.zip FILENAME-SRC.zip
# ----------------------------------------------------------
# > reccursive search git repo
# find . -name .git -type d -prune
# fnm default 20.2.0
# ----------------------------------------------------------
# set default SHELL
# chsh -s "$(which zsh)"
# ----------------------------------------------------------
# VS CODE BK
# alias vscode--save-plugin="codi --list-extensions > extensions-cosmos3--4juin2023.list"
# alias vscode--load-plugin="cat extensions.list |% { codi --install-extension $\_}"

# VS-CODE extension
# Choose `Shell Command: Install ‘code’ command in PATH
# git config --global core.editor "code --wait"

alias vscode--save-plugin="code --list-extensions > extensions-VS-28nov2022.list"
alias vscode--load-plugin="cat extensions.list |% { code --install-extension $_}"


# ----------------------------------------------------------
# ls color - https://github.com/xPMo/zsh-ls-colors/
# ${prefix}::fmt [ -f $format | -F $format ] [ -o | -0 | -a | -A ] $context $files[@]
# load function as my-lscolors::fmt
# The remaining arguments to source determines which lib/ files you want to load.
# If no arguments are provided, then all lib/*.zsh are loaded.
# source ${0:h}/ls-colors/ls-colors.zsh my-lscolors fmt
# ----------------------------------------------------
# history > history.js
# GET USER'S ACCOUNT NAME: id -un
# ----------------------------------------------------
# ls -1 | wc -l
# $ which -a less
# ----------------------------------------------------
# MAC CMD
defaults write com.apple.finder AppleShowAllFiles -bool YES
chmod go-w /Users/x/2-mac/2-com/
brew cask list
brew list
brew install < list.txt
# ----------------------------------------------------------
# RESTORE
# RESTORE MAC=http://sourabhbajaj.com/mac-setup/iTerm/zsh.html
# ----------------------------------------------------------
# README
# https://github.com/robbyrussell/oh-my-zsh
# https://github.com/bhilburn/powerlevel9k
# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
# https://nerdfonts.com
# ----------------------------------------------------------
# STD-ALIAS
# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }
# ----------------------------------------------------------
# .ZSHRC (orig)
# If you come from bash you might have to change your $PATH.
export  PATH=$HOME/bin:/usr/local/bin:$PATH
PATH="/usr/local/bin:$PATH"
# ----------------------------------------------------------
# Add commonly used folders to $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
chsh -s $(which zsh)
chsh -s /usr/local/bin/zsh
# ----------------------------------------------------------
# VOICI le ZSH de hombrew in local
which zsh
# /usr/local/bin/zsh
# ----------------------------------------------------------
# -9
# -9
# -9
# -- ZSH-MAN zshoptions
# setopt autocd # don't not type CD to go inside
# setopt INC_APPEND_HISTORY
# setopt HIST_FIND_NO_DUPS
# setopt HIST_IGNORE_DUPS
# setopt INC_APPEND_HISTORY
# setopt EXTENDED_HISTORY
# setopt HIST_IGNORE_ALL_DUPS
# ----------------------------------------------------------
# -- ZSH-CORRECT-SPELL
# zstyle ':completion:*:git-checkout:*' sort false
# zstyle ':completion:*:descriptions' format '[%d]'
# zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# https://superuser.com/questions/1092033/how-can-i-make-zsh-tab-completion-fix-capitalization-errors-for-directories-and
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
# fpath=(/usr/local/share/zsh-completions $fpath)
# ----------------------------------------------------------
# export GAWK_BIN="/opt/homebrew/opt/gawk/libexec/gnubin"
# pathadd $GAWK_BIN
# ----------------------------------------------------------