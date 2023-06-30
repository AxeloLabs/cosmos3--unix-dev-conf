#!/bin/sh

# -0
# -0 CONFIGURATION SETUP
# -0
# ----------------------------------------------------------
# ITERM config
# https://coderwall.com/p/ds2dha/word-line-deletion-and-navigation-shortcuts-in-iterm2
# ----------------------------------------------------------
# show all files (system, cached..)
defaults write com.apple.Finder AppleShowAllFiles YES
# refresh finder to activate effects
killall Finder
# ----------------------------------------------------------

# -0
# -0 GIT SETUP
# -0
# git config --global core.excludesfile ~/.gitignore_global
git config --global user.email "--@gmail.com"
git config --global user.name "--"
git config --global core.editor "code --wait"
git config --global merge.tool "vscode"
git config --global mergetool.vscode.cmd "code --wait $MERGED"
git config --global init.defaultBranch main

# ----------------------------------------------------------
# SYMLINK
# ----------------------------------------------------------
# zsh
ln -Ff "$COSMOS_RC/0-shell/.zshrc" ~/.zshrc
# ----------------------------------------------------------
# unix
ln -Ff "$COSMOS_RC/9-bk/B-conf/unix/.inputrc" ~/.inputrc
# ----------------------------------------------------------
# starship
ln -Ff "$COSMOS_RC/0-shell/starship.toml" ~/.config/starship.toml
# ----------------------------------------------------------
# vs-code
ln -Ff "$COSMOS_RC/9-bk/B-conf/vs/keybindings.json" ~/Library/Application\ Support/Code/User/keybindings.json
ln -Ff "$COSMOS_RC/9-bk/B-conf/vs/settings.json" ~/Library/Application\ Support/Code/User/settings.json
# ----------------------------------------------------------
# git
# ln -Ff "$COSMOS_RC/9-bk/B-conf/git/.gitignore_global" ~/.gitignore_global
ln -Ff "$COSMOS_RC/9-bk/B-conf/git/.gitconfig" ~/.gitconfig
ln -Ff "$COSMOS_RC/9-bk/B-conf/git/.gitmessage" ~/.gitmessage
# ----------------------------------------------------------
