#!/bin/sh
# -0
# -0 CONFIGURATION SETUP
# -0
# ITERM config
# https://coderwall.com/p/ds2dha/word-line-deletion-and-navigation-shortcuts-in-iterm2

# show all files (system, cached..)
defaults write com.apple.Finder AppleShowAllFiles YES

# refresh finder to activate effects
killall Finder
# -0
# -0 GIT SETUP
# -0
git config --global core.excludesfile ~/.gitignore_global
git config --global user.email "--@gmail.com"
git config --global user.name "--"
git config --global core.editor "code --wait"
git config --global merge.tool "vscode"
git config --global mergetool.vscode.cmd "code --wait $MERGED"
git config --global init.defaultBranch main

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

code --diff file1.js file2.js

#
All git commands that display diff output should now display
syntax-highlighted output. For example:
git diff
git show
git log -p
git stash show -p
git reflog -p
git add -p

# -0
# -0 LN [bootstrap-script]
# -0
# -0 FIRST: the first file in cosmos MUST be created
# -0 SECOND: it will copy the first file to the second (so it does not copy the existing conf to yours : WARN !!!)
# -0
# -0 ln -s /path/to/target.js (true file) linked-target.js (sym)
# -0
# zsh
ln -Ff "$COSMOS_RC/0-shell/.zshrc" ~/.zshrc
# starship
ln -Ff "$COSMOS_RC/0-shell/starship.toml" ~/.config/starship.toml
# vs-code
ln -Ff "$COSMOS_RC/9-bk/B-conf/vs/keybindings.json" ~/Library/Application\ Support/Code/User/keybindings.json
ln -Ff "$COSMOS_RC/9-bk/B-conf/vs/settings.json" ~/Library/Application\ Support/Code/User/settings.json
# git
ln -Ff "$COSMOS_RC/9-bk/B-conf/git/.gitignore_global" ~/.gitignore_global
ln -Ff "$COSMOS_RC/9-bk/B-conf/git/.gitconfig" ~/.gitconfig
ln -Ff "$COSMOS_RC/9-bk/B-conf/git/.gitmessage" ~/.gitmessage
# -9
# -9
# -9
